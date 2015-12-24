using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;

namespace SantiMedia
{
    public partial class SantiMedia : Form
    {
        string dirTorrent = @"A:\torrent\Completo";
        string dirIomega = @"A:\Iomega";

        List<FileInfo> listaFicherosTorrent = new List<FileInfo>();
        List<FileInfo> listaVideos = new List<FileInfo>();
        List<Serie> series = new List<Serie>();
        FicheroSeriesXML xmlSeries = new FicheroSeriesXML("Series.xml");
        FicheroPatronesXML xmlPatrones = new FicheroPatronesXML("Patrones.xml");
        FicheroMediaLogs logs = new FicheroMediaLogs("logs.xml");



        //Metodos privados
        private void listarFicheros(FileSystemInfo[] filesInfo)
        {
            if (filesInfo == null)
            {
                throw new ArgumentNullException("FSInfo");
            }


            foreach (FileSystemInfo item in filesInfo)
            {
                if (item is DirectoryInfo)
                {
                    DirectoryInfo dInfo = (DirectoryInfo)item;
                    listarFicheros(dInfo.GetFileSystemInfos());
                }
                else if (item is FileInfo)
                {
                    listaFicherosTorrent.Add((FileInfo)item);
                }

            }
        }
        private void borrarFichero(FileInfo fichero)
        {
            string nombreFichero = fichero.Name;
            try
            {
                fichero.Delete();
                logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Borrado", mensaje = "Fichero '" + nombreFichero + "' borrado correctamente" });
            }
            catch (Exception e)
            {
                logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Error", mensaje = "Error borrando '" + nombreFichero + "' \t" + e.ToString() });
            }
        }
        private void moverFichero(FileInfo fichero)
        {
            string nombreFichero = fichero.Name;
            string pathDestino = @"A:\Iomega\" + fichero.Name;
            fichero.MoveTo(pathDestino);
            logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Movido", mensaje = "Fichero '" + nombreFichero + "' movido a '" + fichero.FullName + "'" });

        }
        public FileInfo obtenerCoincidenciaBusqueda(string pat)
        {
            DirectoryInfo iomegaInfo = new DirectoryInfo(dirIomega);
            FileSystemInfo[] fsi;
            fsi = iomegaInfo.GetFileSystemInfos(pat);
            if (fsi.Length == 1 && fsi[0] is FileInfo)
            {
                return (FileInfo)fsi[0];
            }
            if (fsi.Length > 1)
            {
                throw new TooManySerieCoincidences();
            }
            return null;
        }
        public void mostrarSeries()
        {
            foreach (Serie item in series)
            {
                if (item.estado.Equals("A"))
                    listBoxSeleccionarSeriePatron.Items.Add(item.titulo);

            }
        }
        public void recopilarVideos()
        {
            int videosMovidos = 0;
            int ficherosBorrados = 0;

            //Sacar videos
            DirectoryInfo dir = new DirectoryInfo(dirTorrent);
            if (!dir.Exists)
            {
                throw new DirectoryNotFoundException("Directorio no encontrado");
            }
            FileSystemInfo[] filesInfo = dir.GetFileSystemInfos();

            listarFicheros(filesInfo);

            foreach (FileInfo item in listaFicherosTorrent)
            {
                switch (item.Extension)
                {
                    //borrar
                    case ".txt":
                        borrarFichero(item);
                        ficherosBorrados++;
                        break;
                    case ".!ut":
                        borrarFichero(item);
                        ficherosBorrados++;
                        break;
                    case ".url":
                        borrarFichero(item);
                        ficherosBorrados++;
                        break;
                    //mover
                    case ".avi":
                        moverFichero(item);
                        videosMovidos++;
                        break;
                    case ".mkv":
                        moverFichero(item);
                        videosMovidos++;
                        break;
                    case ".mp4":
                        moverFichero(item);
                        videosMovidos++;
                        break;
                    default:
                        break;
                }
            }
        }
        public void renombrarVideos()
        {
            //construllo sentencias
            foreach (Serie itSerie in series)
            {
                if (itSerie.estado.Equals("A"))
                {
                    //obtengo patrones de cada serie
                    itSerie.obtenerPatrones();
                    foreach (Patron itPatron in itSerie.patrones)
                    {
                        for (int temp = itSerie.temporadaActual; temp <= itSerie.numeroTemporadas; temp++)
                        {
                            for (int cap = 1; cap <= itSerie.capitulosPorTemporada; cap++)
                            {
                                FileInfo fi;
                                if (cap < 10)
                                {
                                    string pat1 = itPatron.textoPatron + "*" + temp.ToString() + "0" + cap.ToString() + "*" + itSerie.extension;
                                    string dirSerie = @"A:\SERIES\" + itSerie.titulo + @"\Temporada" + temp + @"\";
                                    Directory.CreateDirectory(dirSerie);
                                    fi = obtenerCoincidenciaBusqueda(pat1);
                                    if (fi != (null))
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirSerie + itSerie.titulo + " " + temp + "0" + cap + itSerie.extension);
                                        logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });
                                    }

                                    string pat2 = itPatron.textoPatron + "*" + temp.ToString() + "x0" + cap.ToString() + "*" + itSerie.extension;
                                    fi = obtenerCoincidenciaBusqueda(pat2);
                                    if (fi != null)
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirSerie + @"\" + itSerie.titulo + " " + temp + "0" + cap + itSerie.extension);
                                        logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });

                                    }
                                }
                                else
                                {
                                    string pat3 = itPatron.textoPatron + "*" + temp.ToString() + cap.ToString() + "*" + itSerie.extension;
                                    fi = obtenerCoincidenciaBusqueda(pat3);
                                    if (fi != (null))
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirIomega + @"\" + itSerie.titulo + " " + temp + cap + itSerie.extension);
                                        logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });
                                    }

                                    string pat4 = itPatron.textoPatron + "*" + temp.ToString() + "x" + cap.ToString() + "*" + itSerie.extension;
                                    fi = obtenerCoincidenciaBusqueda(pat4);
                                    if (fi != null)
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirIomega + @"\" + itSerie.titulo + " " + temp + cap + itSerie.extension);
                                        logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        public void mostrarPatrones()
        {
            string nombreSerie = listBoxSeleccionarSeriePatron.SelectedItem.ToString();
            List<string> strPatrones = new List<string>();
            foreach (Patron item in xmlPatrones.leerPatrones(nombreSerie))
            {
                strPatrones.Add(item.textoPatron);
            }
            listBoxPatrones.DataSource = strPatrones;
        }
        public int calcularPatrones()
        {
            int retorno = 0;
            foreach (Serie item in series.Where(i => i.estado.Equals("A")).ToList<Serie>())
            {
                item.obtenerPatrones();
                retorno += item.patrones.Count;
            }
            return retorno;
        }

        //EVENTOS
        public SantiMedia()
        {
            InitializeComponent();
            series = xmlSeries.leerSeries();
            series.Sort();
            labelNumPatrones.Text = calcularPatrones().ToString();




            /*
            foreach (Serie item in series)
                xmlSeries.añadirSerie(item);
            */



        }

        private void buttonOrdenaSeries_Click(object sender, EventArgs e)
        {
            recopilarVideos();
            renombrarVideos();
        }

        private void buttonRecopilarVideos_Click(object sender, EventArgs e)
        {
            recopilarVideos();
        }

        private void buttonRenombrar_Click(object sender, EventArgs e)
        {
            renombrarVideos();
        }

        private void buttonAñadirSerie_Click(object sender, EventArgs e)
        {
            string estado = "A", extension = ".mkv";
            int temporadaActual = 1, numeroTemporadas = 1, capitulosTemporada = 25;
            switch (comboBoxEstado.SelectedIndex)
            {
                case 0:
                    estado = "A";
                    break;
                case 1:
                    estado = "D";
                    break;
                case 2:
                    estado = "F";
                    break;
            }
            switch (comboBoxExtension.SelectedIndex)
            {
                case 0:
                    extension = ".mvk";
                    break;
                case 1:
                    extension = ".avi";
                    break;
                case 2:
                    extension = ".mp4";
                    break;
            }
            try
            {
                temporadaActual = Convert.ToInt32(textBoxTemporadaActual.Text);
                numeroTemporadas = Convert.ToInt32(textBoxNumeroTemporadas.Text);
                capitulosTemporada = Convert.ToInt32(textBoxCapitulosTemporada.Text);
            }
            catch (Exception)
            {
            }
            Serie tmpSerie = new Serie
            {
                titulo = textBoxTitulo.Text,
                temporadaActual = temporadaActual,
                numeroTemporadas = numeroTemporadas,
                capitulosPorTemporada = capitulosTemporada,
                estado = estado,
                extension = extension
            };

            xmlSeries.añadirSerie(tmpSerie);
            series.Add(tmpSerie);
            MessageBox.Show("Serie añadida con exito");
        }

        private void buttonAñadirPatron_Click(object sender, EventArgs e)
        {
            if (textBoxTextoPatron.Text != "" && listBoxSeleccionarSeriePatron.SelectedItem != null)
            {
                xmlPatrones.añadirPatron(new Patron
                {
                    textoPatron = textBoxTextoPatron.Text,
                    nombreSerie = listBoxSeleccionarSeriePatron.SelectedItem.ToString()
                });
                labelAñadirPatron.Visible = true;
                mostrarPatrones();
            }
        }

        private void listBoxSeleccionarSeriePatron_SelectedIndexChanged(object sender, EventArgs e)
        {
            mostrarPatrones();
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            mostrarSeries();
        }

        private void textBoxTextoPatron_TextChanged(object sender, EventArgs e)
        {
            labelAñadirPatron.Visible = false;
        }
    }
}
