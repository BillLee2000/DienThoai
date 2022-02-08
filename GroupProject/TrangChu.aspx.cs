using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class TrangChu : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btn_gui_Click(object sender, EventArgs e)
        {
            String con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            string querry = "insert into Contacts(FullName,Email,Title,content) VALUES(@MA,@EM,@PA,@FN)";
            SqlCommand command = new SqlCommand(querry, connection);
            SqlCommand command1 = new SqlCommand("select * from Contacts", connection);
            SqlDataReader reader = command1.ExecuteReader();
       
            this.GridView1.DataSource = reader;
            this.GridView1.DataBind();
            reader.Close();
            command.Parameters.AddWithValue("@MA", txt_hoten.Text);
            command.Parameters.AddWithValue("@EM", txt_email.Text);
            command.Parameters.AddWithValue("@PA", txt_title.Text);
            command.Parameters.AddWithValue("@FN", txt_nd.Text);

            int i = (int)command.ExecuteNonQuery();
            if (i == 0) Response.Write("them that bai");
            else if (i == 1) Server.Transfer("Trangchu.aspx");
            else Response.Write("them thanh cong");
            connection.Close();

        }
    }
}