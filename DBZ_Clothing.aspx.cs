using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

namespace ECommerce
{
    public partial class DBZ_Clothing : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyEComDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["BuyNow"] == "YES")
                    {

                    }*/
            BindProductRepeater();
            BindCartNumber();

            /*}
        }*/

        }


        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindDBZClothing", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                        if (dt.Rows.Count <= 0)
                        {
                            // Label1.Text = "Sorry! Currently no products in this category.";
                        }
                        else
                        {
                            //Label1.Text = "Showing All Products";
                        }
                    }
                }
            }
        }

        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-ZA");
            ci.NumberFormat.CurrencySymbol = "R";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }
        public void BindCartNumber()
        {
            if (Session["USERID"] != null)
            {
                string UserIDD = Session["USERID"].ToString();
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserIDD);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                            //CartBadge.InnerText = CartQuantity;
                        }
                        else
                        {
                            // _ = CartBadge.InnerText == 0.ToString();
                            //CartBadge.InnerText = "0";
                        }
                    }
                }
            }
        }


        protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFilterGrid1Record.Text))
            {

                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    string qr = "EXEC [dbo].[procBindDBZClothing]";
                    SqlDataAdapter da = new SqlDataAdapter(qr, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DataTable filteredTable = ds.Tables[0].Clone(); // Create a clone of the structure
                        string searchText = txtFilterGrid1Record.Text.ToLower();

                        foreach (DataRow row in ds.Tables[0].Rows)
                        {
                            // Apply your filter logic here, e.g., filtering based on product name
                            if (row["PName"].ToString().ToLower().StartsWith(searchText))
                            {
                                filteredTable.ImportRow(row); // Add matching rows to the filtered table
                            }
                        }

                        if (filteredTable.Rows.Count > 0)
                        {
                            rptrProducts.DataSource = filteredTable;
                            rptrProducts.DataBind();
                        }
                        else
                        {
                            // Handle the case when no products match the search criteria
                        }
                    }
                    else
                    {
                        // Handle the case when no products are found at all
                    }
                }
            }
        }
    }
}