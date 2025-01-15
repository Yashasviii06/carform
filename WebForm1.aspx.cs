using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("data source=LAPTOP-3T7PAKLT\\YASHI;initial catalog=cars;integrated security=true");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into cars(model,serialnum,color,dom)values('"+TextBox1.Text+ "','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')", conn);
            cmd.ExecuteNonQuery();

            conn.Close();
            Display();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }
        public void Display()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from cars",conn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            
            conn.Close();
            gview.DataSource = dt;
            gview.DataBind();   


        }
    }
}