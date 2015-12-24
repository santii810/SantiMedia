using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SantiMedia
{
    class Serie : IComparable
    {
        public string titulo { get; set; }
        public int temporadaActual { get; set; }
        public int numeroTemporadas { get; set; }
        public int capitulosPorTemporada { get; set; }
        public string estado { get; set; }
        public List<Patron> patrones { get; set; }
        public string extension { get; set; }

        public void addPatron(Patron pat)
        {
            this.patrones.Add(pat);
        }
        public void obtenerPatrones()
        {
            FicheroPatronesXML xmlPat = new FicheroPatronesXML("Patrones.xml");
            patrones = xmlPat.leerPatrones(titulo);

        }
        public void limpiarPatrones()
        {
            patrones.Clear();
        }
        public int CompareTo(Serie obj)
        {
            return String.Compare(this.titulo, obj.titulo);
        }
        public int CompareTo(object obj)
        {
            Serie tmp = (Serie)obj;
            return String.Compare(this.titulo, tmp.titulo);
        }
    }

    class Patron
    {
        public string nombreSerie { get; set; }
        public string textoPatron { get; set; }
    }
}
