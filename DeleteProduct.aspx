<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="ECommerce.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Delete Product</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="lblSelectProduct" runat="server" CssClass="col-md-2 control-label" Text="Select Product"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlProducts" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" Text="Delete Product" OnClick="btnDelete_Click" Enabled="false" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
