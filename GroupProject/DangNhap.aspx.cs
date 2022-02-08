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
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_matkhau.Attributes["type"] = "password";
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            string sql = "SELECT * FROM Customers WHERE CustomerID='{0}' AND Pword='{1}'";
            sql = string.Format(sql, txt_taikhoan.Text, txt_matkhau.Text);
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
            DataTable table = new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count == 0)
            {
                Label4.Text = "invalid login information";
            }
            else
            {
                Label4.Text = "Login success" + table.Rows[0]["Fname"] + table.Rows[0]["Lname"];
                
                Response.Redirect("TrangChu.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangKi.aspx");
        }
    }
}