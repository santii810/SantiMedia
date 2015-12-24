using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SantiMedia
{
    class TooManySerieCoincidences : Exception
    {
        public TooManySerieCoincidences()
        {
        }

        public TooManySerieCoincidences(string message) : base(message)
        {
        }
        public TooManySerieCoincidences(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected TooManySerieCoincidences(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }


    class UnauthorizedAccessException : Exception
    {
        public UnauthorizedAccessException()
        {
            MessageBox.Show("Permisos insuficientes");

        }

        public UnauthorizedAccessException(string message) : base(message)
        {
        }

        public UnauthorizedAccessException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected UnauthorizedAccessException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}
