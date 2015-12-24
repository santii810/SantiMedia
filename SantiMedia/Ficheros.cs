using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace SantiMedia
{

    class FicheroSeriesXML
    {
        string nombreFichero;
        XmlDocument documento;
        XmlNode raiz;
        FicheroMediaLogs logs = new FicheroMediaLogs("Logs.xml");
        public FicheroSeriesXML(string rutaFichero)
        {
            this.nombreFichero = rutaFichero;
        }

        public bool cargarXML()
        {
            if (File.Exists(nombreFichero))
            {
                documento = new XmlDocument();
                documento.Load(nombreFichero);
                raiz = documento.DocumentElement;
                return true;
            }
            else return false;
        }

        public List<Serie> leerSeries()
        {
            List<Serie> series = new List<Serie>();
            if (cargarXML())
            {
                foreach (XmlNode item in documento.GetElementsByTagName("serie"))
                {
                    series.Add(new Serie
                    {
                        titulo = item["titulo"].InnerText.ToString(),
                        temporadaActual = Convert.ToInt32(item["temporadaActual"].InnerText.ToString()),
                        numeroTemporadas = Convert.ToInt32(item["numeroTemporadas"].InnerText.ToString()),
                        capitulosPorTemporada = Convert.ToInt32(item["capitulosPorTemporada"].InnerText.ToString()),
                        estado = item["estado"].InnerText,
                        extension = item["extension"].InnerText
                    });
                }
            }
            return series;
        }

        public void añadirSerie(Serie serie)
        {
            documento = new XmlDocument();


            if (!File.Exists(nombreFichero))
            {

                XmlDeclaration declaracion = documento.CreateXmlDeclaration("1.0", "ISO-8859-1", null);
                documento.AppendChild(declaracion);
                raiz = documento.CreateElement("Series");
                documento.AppendChild(raiz);
            }
            else
            {
                documento.Load(nombreFichero);
                raiz = documento.DocumentElement;
            }
            if (!existe(serie.titulo))
            {
                raiz.AppendChild(crearNodo(serie));
                documento.Save(nombreFichero);

                logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "AñadirSerie", mensaje = "Serie '" + serie.titulo + "' añadida correctamente" });
                FicheroPatronesXML xmlPatrones = new FicheroPatronesXML("Patrones.xml");
                xmlPatrones.añadirPatron(new Patron { nombreSerie = serie.titulo, textoPatron = serie.titulo });
                xmlPatrones.añadirPatron(new Patron { nombreSerie = serie.titulo, textoPatron = serie.titulo.Replace(' ', '.') });
            }
            else
            {
                logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Error", mensaje = "Serie '" + serie.titulo + "' ya existe" });

            }
        }

        public XmlNode crearNodo(Serie serie)
        {
            XmlElement nodoSerie = documento.CreateElement("serie");
            nodoSerie.SetAttribute("titulo", serie.titulo);

            XmlElement titulo = documento.CreateElement("titulo");
            titulo.InnerText = serie.titulo;
            nodoSerie.AppendChild(titulo);

            XmlElement temporadaActual = documento.CreateElement("temporadaActual");
            temporadaActual.InnerText = serie.temporadaActual.ToString();
            nodoSerie.AppendChild(temporadaActual);

            XmlElement numeroTemporadas = documento.CreateElement("numeroTemporadas");
            numeroTemporadas.InnerText = serie.numeroTemporadas.ToString();
            nodoSerie.AppendChild(numeroTemporadas);

            XmlElement capitulosPorTemporada = documento.CreateElement("capitulosPorTemporada");
            capitulosPorTemporada.InnerText = serie.capitulosPorTemporada.ToString();
            nodoSerie.AppendChild(capitulosPorTemporada);


            XmlElement estado = documento.CreateElement("estado");
            estado.InnerText = serie.estado;
            nodoSerie.AppendChild(estado);

            XmlElement extension = documento.CreateElement("extension");
            extension.InnerText = serie.extension;
            nodoSerie.AppendChild(extension);

            return nodoSerie;
        }

        public bool existe(string nombreSerie)
        {
            foreach (XmlNode item in documento.GetElementsByTagName("serie"))
                if (item.Attributes["titulo"].Value.Equals(nombreSerie))
                    return true;
            return false;
        }
    }
    class FicheroPatronesXML
    {
        string nombreFichero;
        XmlDocument documento;
        XmlNode raiz;
        FicheroMediaLogs logs = new FicheroMediaLogs("Logs.xml");
        public FicheroPatronesXML(string rutaFichero)
        {
            this.nombreFichero = rutaFichero;
        }
        public bool cargarXML()
        {
            if (File.Exists(nombreFichero))
            {
                documento = new XmlDocument();
                documento.Load(nombreFichero);
                raiz = documento.DocumentElement;
                return true;
            }
            else return false;
        }
        public void añadirPatron(Patron patron)
        {
            documento = new XmlDocument();
            if (!File.Exists(this.nombreFichero))
            {
                XmlDeclaration declaracion = documento.CreateXmlDeclaration("1.0", "ISO-8859-1", null);
                documento.AppendChild(declaracion);
                raiz = documento.CreateElement("raiz");
                documento.AppendChild(raiz);
            }
            else
            {
                documento.Load(this.nombreFichero);
                raiz = documento.DocumentElement;
            }
            if (!existe(patron.textoPatron))
            {
                raiz.AppendChild(crearNodo(patron));
                documento.Save(this.nombreFichero);
                logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "AñadirPatron", mensaje = "patron '" + patron.nombreSerie + "-" + patron.textoPatron + "' añadido correctamente a serie " });
            }
            else
            {
                logs.añadirEntrada(new MediaLog { fecha = DateTime.Now, tipo = "Error", mensaje = "patron '" + patron.nombreSerie + "-" + patron.textoPatron + "' Ya existe " });
            }
        }
        public XmlNode crearNodo(Patron patron)
        {
            XmlElement serie = documento.CreateElement("serie");
            serie.SetAttribute("titulo", patron.nombreSerie);
            serie.InnerText = patron.textoPatron;

            return serie;
        }
        public List<Patron> leerPatrones(string serie)
        {
            List<Patron> patrones = new List<Patron>();
            if (cargarXML())
            {
                foreach (XmlNode item in documento.GetElementsByTagName("serie"))
                {
                    if (item.Attributes["titulo"].Value.Equals(serie))
                    {
                        patrones.Add(new Patron
                        {
                            nombreSerie = serie,
                            textoPatron = item.InnerText.ToString()
                        });
                    }
                }
            }
            return patrones;
        }
        public bool existe(string textoPatron)
        {
            foreach (XmlNode item in documento.GetElementsByTagName("serie"))
            {
                if (item.InnerText.Equals(textoPatron))
                {
                    return true;
                }
            }
            return false;
        }
    }
}
