using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class ChiTietDatHang : System.Web.UI.Page
    {
        Connect cnn = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;
            String query;
            if (Context.Items["food"] == null)
                query = "select * from Food";
            else
            {
                string foodID = Context.Items["food"].ToString();
                query = "select * from Food where FoodID = '" + foodID + "'";
            }
            this.DataList1.DataSource = cnn.getData(query);
            this.DataList1.DataBind();
        }

        protected void btnMua_Click(object sender, EventArgs e)
        {
            String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True";
            Button mua = (Button)sender;
            string foodID = mua.CommandArgument.ToString();
            //Get unitPrice 
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand getUnitPriceByFoodID = new SqlCommand("select UnitPrice from Food where FoodID = '" + foodID + "'", connection);
            SqlDataReader dataReader1 = getUnitPriceByFoodID.ExecuteReader();
            float unitPrice = 0;
            while (dataReader1.Read())
                unitPrice = float.Parse(Convert.ToString(dataReader1["UnitPrice"]));
            connection.Close();

            //Get Quantity
            DataListItem item = (DataListItem)mua.Parent.Parent;
            int soLuong = int.Parse(((TextBox)item.FindControl("txtSoLuong")).Text);

            //Check if a customer is login or not
            
            string customerID = "nhan";

            connection.Open();
            string query = "select * from Orders where CustomerID = '" + customerID + "' and FoodID = '" + foodID + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.Read())
            {
                dataReader.Close();
                command = new SqlCommand("update Orders set Quantity = " + soLuong + " where CustomerID = '" + customerID + "' and FoodID = '" + foodID + "'", connection);
            }
            else
            {
                dataReader.Close();
                command = new SqlCommand("insert into Orders values ('" + customerID + "', '" + foodID + "', " + soLuong + ", " + unitPrice + ")", connection);
            }
            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void btnGioHang_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/GioHang.aspx");
        }
    }
}