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
    public partial class GioHang : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string query = "select Orders.FoodID, FoodName, Orders.UnitPrice, Orders.Quantity, Orders.Quantity * Orders.UnitPrice as Amount from Food, Orders " +
                                "where Food.FoodID = Orders.FoodID";
                SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connectionString);
                DataTable table = new DataTable();
                dataAdapter.Fill(table);
                this.GridView1.DataSource = table;
                this.GridView1.DataBind();
                double tong = 0;
                foreach (DataRow row in table.Rows)
                {
                    double thanhTien = Convert.ToDouble(row["Amount"]);
                    tong += thanhTien;
                }
                this.lblTongTien.Text = "Tổng thành tiền: " + tong + " đồng";
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}