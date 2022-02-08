using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Connect
    {
        SqlConnection connection;

        private void openConnection()
        {
            connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\web_application\GroupProject-main\GroupProject\App_Data\Database1.mdf;Integrated Security=True");
            connection.Open();
        }

        private void closeConnection()
        {
            if (connection.State == ConnectionState.Open)
                connection.Close();
        }

        public DataTable getData(string query)
        {
            DataTable table = new DataTable();
            try
            {
                openConnection();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connection);
                dataAdapter.Fill(table);
            }
            catch
            {
                table = null;
            }
            finally
            {
                closeConnection();
            }
            return table;
        }
    }
}