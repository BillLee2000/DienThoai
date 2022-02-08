using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class DatHang : System.Web.UI.Page
    {
        Connect cnn = new Connect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.DropDownListCategories.DataSource = cnn.getData("select * from Categories");
                this.DropDownListCategories.DataTextField = "CategoryName";
                this.DropDownListCategories.DataValueField = "CategoryID";
                this.DropDownListCategories.DataBind();
                this.DataList1.DataSource = cnn.getData("select * from Food");
                this.DataList1.DataBind();
            }
        }

        protected void DropDownListCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            String query;
            query = "select * from Food where CategoryID = '{0}'";
            query = String.Format(query, this.DropDownListCategories.SelectedItem.Value);
            this.DataList1.DataSource = cnn.getData(query);
            this.DataList1.DataBind();
        }

        protected void btnChonMua_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food"] = foodID;

            Server.Transfer("~/ChiTietDatHang.aspx");
        }
    }
}