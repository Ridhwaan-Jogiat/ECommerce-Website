using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve query parameters from the URL
                string invoiceNumber = Request.QueryString["invoiceNumber"];
                string invoiceDate = Request.QueryString["date"];
                string totalAmount = Request.QueryString["totalAmount"];

                // Populate the invoice details on the page
                lblInvoiceNumber.Text = "Invoice Number: " + invoiceNumber;
                lblInvoiceDate.Text = "Invoice Date: " + invoiceDate;
                lblTotalAmount.Text = "Total Amount: R. " + totalAmount;
            }
        }
    }
}