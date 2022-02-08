using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class BookTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random r = new Random();
            Session["Captcha"] = lblMaBM.Text = r.Next(10000, 99999).ToString();
        }

        protected void btnDatBan_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            string querry = "insert into Book(CustomerID,FName,LName,PhoneNumber,BookDate,Quantily,Note) VALUES(@MA,@FN,@LN,@PN,@BD,@Q,@N)";
            SqlCommand command = new SqlCommand(querry, connection);
            SqlCommand command1 = new SqlCommand("select * from  Book", connection);
            SqlDataReader reader = command1.ExecuteReader();
            this.GridView2.DataSource = reader;
            this.GridView2.DataBind();
            reader.Close();
            command.Parameters.AddWithValue("@MA", txttk_db.Text);
            command.Parameters.AddWithValue("@FN", txtfn_db.Text);
            command.Parameters.AddWithValue("@LN", txtln_db.Text);
            command.Parameters.AddWithValue("@PN", txtpn_db.Text);
            command.Parameters.AddWithValue("@BD", txtbd_db.Text);
            command.Parameters.AddWithValue("@Q", txtq_db.Text);
            command.Parameters.AddWithValue("@N", txtn_db.Text);
            int i = (int)command.ExecuteNonQuery();
            if (i == 0) Label_er.Text = "Book Fail";
            else if (i == 1)      Label_er.Text = "Book Success";
            else Label_er.Text = "Book Success";
            connection.Close();


            

        }

        protected void valCaptcha_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value == Session["Captcha"].ToString());
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            txttk_db.Text = "";
            txtfn_db.Text = "";
            txtln_db.Text = "";
            txtpn_db.Text = "";
            txtbd_db.Text = "";
            txtq_db.Text = "";
            txtn_db.Text = "";

        }
    }
}