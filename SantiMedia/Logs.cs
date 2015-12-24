using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace SantiMedia
{
    class FicheroMediaLogs
    {
        string nombreFichero;
        XmlDocument documento;
        XmlNode raiz;
        public FicheroMediaLogs(string rutaFichero)
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
        public void añadirEntrada(MediaLog log)
        {
            documento = new XmlDocument();
            if (!File.Exists(nombreFichero))
            {
                XmlDeclaration declaracion = documento.CreateXmlDeclaration("1.0", "ISO-8859-1", null);
                documento.AppendChild(declaracion);
                raiz = documento.CreateElement("Logs");
                documento.AppendChild(raiz);
            }
            else
            {
                documento.Load(nombreFichero);
                raiz = documento.DocumentElement;
            }

            raiz.AppendChild(crearNodo(log));

            documento.Save(nombreFichero);
        }
        public XmlNode crearNodo(MediaLog log)
        {
            XmlElement nodo = documento.CreateElement("Log");
            nodo.SetAttribute("fecha", log.fecha.ToString());
            nodo.SetAttribute("tipo", log.tipo);
            nodo.SetAttribute("mensaje", log.mensaje);
            return nodo;
        }
    }
    class MediaLog
    {
        public DateTime fecha { get; set; }
        public string tipo { get; set; }
        public string mensaje { get; set; }
    }

    class ErrorLog
    {
        public DateTime fecha { get; set; }
        public string tipo { get; set; }
        public string mensaje { get; set; }
    }
}
