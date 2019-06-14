using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ArraysForms
{
    class UnsortedArrayClass
    {
        private int _top; 
        private readonly int Max; 

        private DataClass[] Array;

        public int Top
        {
            get
            {
                return (_top);
            }
        }

        public UnsortedArrayClass(int m) 
        {
            Max = m;
            _top = 0;
            Array = new DataClass[Max];  
        }

        public bool IsFull()  
        {
            if (_top == Max)
                return (true);
            else
                return (false);
        }

        public bool IsEmpty() 
        {
            if (_top == 0)
                return (true);
            else
                return (false);
        }

        public bool Insert(DataClass Data) 
        {
            if (!IsFull())  
            {
                for (int i = 0; i < _top; i++)
                {
                    if (Array[i].Uniform == Data.Uniform) 
                        return (false);  
                }
                Array[_top] = Data;  
                _top++;  
                return (true);  
            }
            else
                return (false); 
        }

        public bool Delete(UInt16 Uniform) 
        {
            int i = 0, x=0;

            if (!IsEmpty()) 
            {
                for (i = 0; i < _top; i++)
                {
                    if (Array[i].Uniform == Uniform)  
                    {
                        for (x = i; x < _top - 1; x++) 
                            Array[i] = Array[i + 1];
                        _top--; 
                        return (true);
                    }
                }
                return (false); 
            }
            else
                return (false);
        }

        public DataClass Get(int cell) 
        {
            if (cell >= 0 && cell < Top)
                return (Array[cell]); 
            else
                return (null);
        }

        public bool Sort() 
        {                     
            
            if (!IsEmpty())
            {
                int p = 0, x = 0;
                DataClass Temporal = new DataClass();

                for (p = 0; p < _top - 1; p++)
                    for (x = p + 1; x < _top; x++)
                        if (Array[x].Percentage < Array[p].Percentage)
                        {
                            Temporal = Array[p];
                            Array[p] = Array[x];
                            Array[x] = Temporal;
                        }
                return (true);
            }
            else
                return (false);
        }

        public DataClass Greater() 
        {                       
            DataClass Greater = Array[0];
            for (int i = 1; i < _top; i++)
                if (Array[i].Percentage > Greater.Percentage)
                    Greater = Array[i];
            return (Greater);
        }
    }
}
