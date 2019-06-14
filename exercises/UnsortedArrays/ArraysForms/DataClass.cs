using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ArraysForms
{
    class DataClass
    {
        private UInt16 _uniform;
        private string _name;
        private double _percentage;

        public UInt16 Uniform
        {
            get
            {
                return (_uniform);
            }
            set
            {
                _uniform = value;
            }
        }

        public string Name
        {
            get
            {
                return (_name);
            }
            set
            {
                _name = value;
            }
        }

        public double Percentage
        {
            get
            {
                return (_percentage);
            }
            set
            {
                _percentage = value;
            }
        }
    }
}
