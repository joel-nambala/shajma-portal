using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shajma
{
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand command;
        SqlConnection connection;
        string str = ConfigurationManager.ConnectionStrings["shajma"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                connection = new SqlConnection(str);
                string query = @"";
                command = new SqlCommand(query, connection);
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                lblMessage.Text = msg;
                lblMessage.Visible = true;
                lblMessage.CssClass = "error";
            }
            //finally
            //{
            //    connection.Close();
            //}
        }
    }
}