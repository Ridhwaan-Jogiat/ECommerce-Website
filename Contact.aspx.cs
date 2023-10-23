using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // You can implement your own logic here to handle the submitted data, such as sending emails or storing in a database.
            // For this example, we'll display a confirmation message.

            lblMessage.Text = "Thank you for contacting us, " + name + "!";
            lblMessage.CssClass = "form-group success-message";
            lblMessage.Visible = true;

            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }
    }
}