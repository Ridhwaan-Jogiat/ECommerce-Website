<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ECommerce.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <br />
     <br />
     <br />
     <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="contact-form" style="max-width: 400px; margin: 0 auto; padding: 20px; background-color: #f8f8f8; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
                    <h2>Contact Us</h2>
                    <p>If you have any questions or inquiries, please fill out the form below:</p>
                    
                    <asp:Label ID="lblMessage" runat="server" Visible="false" CssClass="form-group"></asp:Label>
                    
                    <div class="form-group">
                        <label for="txtName">Your Name</label>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Your Name" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Your Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtMessage">Your Message</label>
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" placeholder="Your Message" CssClass="form-control"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <br />
                <br />
                <div class="contact-details" style="padding: 20px;">
                    <p><i class="glyphicon glyphicon-earphone"></i> Phone: 011 837 5505</p>
                    <p><i class="glyphicon glyphicon-envelope"></i> Email: codebuster61@gmail.com</p>
                    <p><i class="glyphicon glyphicon-map-marker"></i> Address: 64 Jamestown Avenue Crobny Johannesburg 2092</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
