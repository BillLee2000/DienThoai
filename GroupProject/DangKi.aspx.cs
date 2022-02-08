using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            txtmk.Attributes["type"] = "Pword";
            txtXacNhanEmail.Attributes["type"] = "Pword";
            Random r = new Random();
            Session["Captcha"] = lblMaBM.Text = r.Next(10000, 99999).ToString();
        }

        protected void btnKiemLoi_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            string querry = "insert into Customers(CustomerID,Email,PhoneNumber,Fname,Lname,Pword) VALUES(@MA,@EM,@PA,@FN,@LN,@MK)";
            SqlCommand command = new SqlCommand(querry, connection);
            SqlCommand command1 = new SqlCommand("select * from  Customers", connection);
            SqlDataReader reader = command1.ExecuteReader();
            this.GridView1.DataSource = reader;
            this.GridView1.DataBind();
            reader.Close();
            command.Parameters.AddWithValue("@MA", txttk.Text);
            command.Parameters.AddWithValue("@EM", txtEmail.Text);
            command.Parameters.AddWithValue("@PA", txtsdt.Text);
            command.Parameters.AddWithValue("@FN", txtho.Text);
            command.Parameters.AddWithValue("@LN", txtten.Text);
            command.Parameters.AddWithValue("@mk", txtmk.Text);
            int i = (int)command.ExecuteNonQuery();
            if (i == 0) Label2.Text = "Thêm thất bại";
            else if (i == 1) Server.Transfer("DangNhap.aspx");
            else Label2.Text = "Thêm thành công";
            connection.Close();
        }

        protected void valCaptcha_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value == Session["Captcha"].ToString());
        }
    }
}