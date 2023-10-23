<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="ECommerce.Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <title>Invoice</title>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


    <body>
        <form id="form1">
            <div>
                <h1>Invoice Details</h1>
                <div>
                    <asp:Label ID="lblInvoiceNumber" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblInvoiceDate" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </form>
    </body>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
