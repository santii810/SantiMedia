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
    public partial class Form1 : Form
    {
        string dirTorrent = @"A:\torrent\Completo";
        string dirIomega = @"A:\Iomega";

        List<FileInfo> listaFicherosTorrent = new List<FileInfo>();
        List<FileInfo> listaVideos = new List<FileInfo>();
        List<Serie> series = new List<Serie>();
        FicheroSeriesXML xmlSeries = new FicheroSeriesXML("Series.xml");
        FicheroPatronesXML xmlPatrones = new FicheroPatronesXML("Patrones.xml");
        FicheroLogs logs = new FicheroLogs("logs.xml");

        

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
                logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Borrado", mensaje = "Fichero '" + nombreFichero + "' borrado correctamente" });
            }
            catch (Exception e)
            {
                logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Error", mensaje = "Error borrando '" + nombreFichero + "' \t" + e.ToString() });
            }
        }
        private void moverFichero(FileInfo fichero)
        { 

            string nombreFichero = fichero.Name;
            string pathDestino = @"A:\Iomega\" + fichero.Name;
            fichero.MoveTo(pathDestino); 
            logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Movido", mensaje = "Fichero '" + nombreFichero + "' movido a '" + fichero.FullName + "'" });

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
                        for (int i = itSerie.temporadaActual; i <= itSerie.numeroTemporadas; i++)
                        {
                            for (int j = 1; j <= itSerie.capitulosPorTemporada; j++)
                            {
                                FileInfo fi;
                                if (j < 10)
                                {
                                    string pat1 = itPatron.textoPatron + "*" + i.ToString() + "0" + j.ToString() + "*" + itSerie.extension;
                                    string dirSerie = @"A:\SERIES\" + itSerie.titulo + @"\Temporada" + i + @"\";
                                    Directory.CreateDirectory(dirSerie);
                                    fi = obtenerCoincidenciaBusqueda(pat1);
                                    if (fi != (null))
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirSerie + itSerie.titulo + " " + i + "0" + j + itSerie.extension);
                                        logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });
                                    }

                                    string pat2 = itPatron.textoPatron + "*" + i.ToString() + "x0" + j.ToString() + "*" + itSerie.extension;
                                    fi = obtenerCoincidenciaBusqueda(pat2);
                                    if (fi != null)
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirSerie + @"\" + itSerie.titulo + " " + i + "0" + j + itSerie.extension);
                                        logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });

                                    }
                                }
                                else
                                {
                                    string pat3 = itPatron.textoPatron + "*" + i.ToString() + j.ToString() + "*" + itSerie.extension;
                                    fi = obtenerCoincidenciaBusqueda(pat3);
                                    if (fi != (null))
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirIomega + @"\" + itSerie.titulo + " " + i + j + itSerie.extension);
                                        logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });
                                    }

                                    string pat4 = itPatron.textoPatron + "*" + i.ToString() + "x" + j.ToString() + "*" + itSerie.extension;
                                    fi = obtenerCoincidenciaBusqueda(pat4);
                                    if (fi != null)
                                    {
                                        string nombreOriginal = fi.Name;
                                        fi.MoveTo(dirIomega + @"\" + itSerie.titulo + " " + i + j + itSerie.extension);
                                        logs.añadirEntrada(new Log { fecha = DateTime.Now, tipo = "Renombrado", mensaje = "Fichero '" + nombreOriginal + "' renombrado a '" + fi.FullName + "'" });
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


        //EVENTOS
        public Form1()
        {
            InitializeComponent();
            series = xmlSeries.leerSeries();
            series.Sort();


            /*
            foreach (Serie item in series)
            {
                xmlSeries.añadirSerie(item);
            }
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
            xmlPatrones.añadirPatron(new Patron
            {
                textoPatron = textBoxTextoPatron.Text,
                nombreSerie = listBoxSeleccionarSeriePatron.SelectedItem.ToString()
            });
            labelAñadirPatron.Visible = true;
            mostrarPatrones();
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
