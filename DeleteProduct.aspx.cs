using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace ECommerce
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEComDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT PID, PName FROM tblProducts WHERE IsDeleted = 0", con);
                SqlDataReader reader = cmd.ExecuteReader();
                ddlProducts.DataSource = reader;
                ddlProducts.DataTextField = "PName";
                ddlProducts.DataValueField = "PID";
                ddlProducts.DataBind();

                // Add the default ListItem AFTER databinding
                ddlProducts.Items.Insert(0, new ListItem("- Select Product -", "0"));
            }
        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnDelete.Enabled = (ddlProducts.SelectedIndex > 0);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(ddlProducts.SelectedValue);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEComDB"].ConnectionString))
            {
                con.Open();

                // Soft delete the product in tblProducts by updating IsDeleted column
                SqlCommand cmdSoftDelete = new SqlCommand("UPDATE tblProducts SET IsDeleted = 1 WHERE PID = @PID", con);
                cmdSoftDelete.Parameters.AddWithValue("@PID", productId);
                int rowsAffected = cmdSoftDelete.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Delete related records from tblProductImages
                    SqlCommand cmdDeleteProductImages = new SqlCommand("DELETE FROM tblProductImages WHERE PID = @PID", con);
                    cmdDeleteProductImages.Parameters.AddWithValue("@PID", productId);
                    cmdDeleteProductImages.ExecuteNonQuery();

                    // Delete related records from tblProductSizeQuantity
                    SqlCommand cmdDeleteProductSizeQuantity = new SqlCommand("DELETE FROM tblProductSizeQuantity WHERE PID = @PID", con);
                    cmdDeleteProductSizeQuantity.Parameters.AddWithValue("@PID", productId);
                    cmdDeleteProductSizeQuantity.ExecuteNonQuery();

                    lblMessage.Text = "Product deleted successfully.";
                    BindProducts();
                    ddlProducts.SelectedIndex = 0;
                    btnDelete.Enabled = false;
                }
                else
                {
                    lblMessage.Text = "Failed to delete product.";
                }
            }
        }

    }
}
