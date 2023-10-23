using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ECommerce
{
    public partial class All_Invoices : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyEComDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateInvoices();
            }
        }

        private void PopulateInvoices()
        {
            // Define  database connection string
            string connectionString =CS;

            // SQL query to retrieve invoices
            string query = "SELECT InvoiceNumber,InvoiceDate, TotalAmount FROM Invoices WHERE Uid = @UserId";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    
                    int userId = Convert.ToInt32(Session["USERID"].ToString());

                    cmd.Parameters.AddWithValue("@UserId", userId);

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Create a new HTML table row and cells using HtmlGenericControl
                            var row = new HtmlGenericControl("tr");
                            var invoiceNumberCell = new HtmlGenericControl("td");
                            var invoiceDateCell = new HtmlGenericControl("td");
                            var totalAmountCell = new HtmlGenericControl("td");

                            invoiceNumberCell.InnerText = reader["InvoiceNumber"].ToString();
                            invoiceDateCell.InnerText = ((DateTime)reader["InvoiceDate"]).ToString("yyyy-MM-dd"); 
                            totalAmountCell.InnerText = reader["TotalAmount"].ToString();

                            row.Controls.Add(invoiceNumberCell);
                            row.Controls.Add(invoiceDateCell);
                            row.Controls.Add(totalAmountCell);

                            Invoices.Controls.Add(row); 
                        }
                    }
                }
            }
        }

          
    }
}