<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="All_Invoices.aspx.cs" Inherits="ECommerce.All_Invoices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            margin: 20px;
        }
        h2 {
            font-size: 24px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 10px;
            font-size: 16px;
        }
        th, td {
            border: 1px solid #000;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Invoice List</h2>
        <table>
            <thead>
                <tr>
                    <th>Invoice Number</th>
                    <th>Invoice Date</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody id="Invoices" runat="server">
                <!-- Your data rows go here -->
            </tbody>
        </table>
    </div>
</asp:Content>

