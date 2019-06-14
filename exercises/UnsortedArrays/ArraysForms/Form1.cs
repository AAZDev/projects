using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ArraysForms
{
    public partial class Form1 : Form
    {
        static UnsortedArrayClass BaseballTeam = new UnsortedArrayClass(9);  

        private void CreateDataGrid()
        {
            dataGridView1.Columns.Add("Uniform", "Uniform");
            dataGridView1.Columns.Add("Name", "Name");
            dataGridView1.Columns.Add("% Hits", "% Hits");
        }

        private void ShowDataGridView()
        {
            DataClass Player;  
            
            dataGridView1.Rows.Clear();  
            dataGridView1.Columns.Clear();  
            
            CreateDataGrid();  

            for (int cell = 0; cell <= BaseballTeam.Top-1; cell++)
            {
                Player = BaseballTeam.Get(cell);
                dataGridView1.Rows.Add(Player.Uniform, Player.Name, Player.Percentage);
               
            }
        }
        
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ShowDataGridView();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataClass Player = new DataClass();

           

            if (!IsNumeric(textBox1.Text)|| !IsNumeric(textBox3.Text))
            {
                MessageBox.Show("Must type a number", "E R R O R", MessageBoxButtons.OK);
                return;
            }

            if (textBox2.Text.Length<3) 
            {
                MessageBox.Show("Must type a name", "E R R O R", MessageBoxButtons.OK);
                return;
            }


            Player.Uniform = UInt16.Parse(textBox1.Text); 
            Player.Name = textBox2.Text;
            Player.Percentage = double.Parse(textBox3.Text);

            if (BaseballTeam.Insert(Player))
                MessageBox.Show("Player inserted on array:\n\nNum. Uniform: " + Player.Uniform.ToString() + "\nName: " + Player.Name + "\n% Hit: " + Player.Percentage.ToString(),"INSERT OK",MessageBoxButtons.OK,MessageBoxIcon.Information);
            else
                MessageBox.Show("Can't insert player","E R R O R",MessageBoxButtons.OK);

            ShowDataGridView();  

            textBox1.Clear();  
            textBox2.Clear();
            textBox3.Clear();
            textBox1.Focus();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Application.Exit();  
        }

        private bool IsNumeric(string text)
        {
            int n;
            return int.TryParse(text, out n);
        }


        private void button3_Click(object sender, EventArgs e)
        {
            if (BaseballTeam.Sort())  
            {
                ShowDataGridView();
                MessageBox.Show("Array sorted by hit percentage");
            }
            else
                MessageBox.Show("Array is empty");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (!BaseballTeam.IsEmpty()) 
            {
                string NumUniform = textBox1.Text;

                if (NumUniform == "")
                {
                    DataGridViewRow RowSelected = dataGridView1.CurrentRow;
                    if (RowSelected == null) 
                        MessageBox.Show("Capture uniform number or select it from dataGridView", "E R R O R", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else
                        NumUniform = RowSelected.Cells[0].Value.ToString();
                   
                }

              
                if (MessageBox.Show("¿ Confirm delete uniform no. " + NumUniform + " ? ", "CONFIRM OPERATION", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    if (BaseballTeam.Delete(UInt16.Parse(NumUniform))) 
                        MessageBox.Show("Player deleted");
                    else
                        MessageBox.Show("Couldn't delete player " + NumUniform,"E R R O R",MessageBoxButtons.OK,MessageBoxIcon.Error);
                }
                else
                    MessageBox.Show("Operation cancelled", "E R R O R", MessageBoxButtons.OK, MessageBoxIcon.Error);

                ShowDataGridView();
            }
            else
                MessageBox.Show("Array empty");
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (!BaseballTeam.IsEmpty())
            {
                DataClass BestHitter = BaseballTeam.Greater();
                MessageBox.Show("Num. Uniform: " + BestHitter.Uniform + "\nName: " + BestHitter.Name + "\n% Hits: " + BestHitter.Percentage, "Best hitter", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Array empty");
        }

    }
}
