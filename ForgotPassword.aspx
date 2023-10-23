﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ECommerce.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />
    

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div>

            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" >
                <div class="container ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="WebForm1.aspx"><span >
                        <img src="icons/logo.png" alt="Otaku Threads" height="30" /></span >Otaku Threads 
                        </a>

                        </div>
                        <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                        <li ><a href="WebForm1.aspx">Home</a> </li>

                        <li><a href="About.aspx">About</a> </li>
                        <li><a href="#">Contact US</a> </li>
                        

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products
                            <b class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li><a href="Products.aspx">All Products</a></li>
                                <li role="separator" class="divider "></li>

                                <li class="dropdown-header ">Hoodies</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="#">Zip-up hoodies</a></li>
                                <li><a href="#">Pullover hoodies</a></li>
                                <li role="separator" class="divider "></li>

                                <li class="dropdown-header ">T-Shirts</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="#">Long sleeve</a></li>
                                <li><a href="#">Short sleeve</a></li>
                                <li role="separator" class="divider "></li>


                                <li class="dropdown-header ">Headwear</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="#">Caps</a></li>
                                <li><a href="#">Beanies</a></li>
                              
                            </ul>
                        </li>
                            
                            <li class="active"><a href="SignInPage.aspx">Sign In</a> </li>
                        
                    </ul>



                 </div>
             </div>
         </div>
           </div>

         <div class="container">
            <div class ="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h3>Please Enter Your Email Address, we will send you the recovery link for your password!</h3>

                <div class ="form-group">
                    <asp:Label ID="lblEmail" CssClass ="col-md-2 control-label" runat="server" Text="your Email Address"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtEmailID" CssClass =" form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                </div>

                <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                   <asp:Label ID="lblResetPassMsg" CssClass ="text-success " runat="server" ></asp:Label>
                         </div>
                </div>

            </div>
        </div>

    </form>
     <!---Footer content starts here --->
         <footer>
             <div class="container">

                <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><a href="AdminHome.aspx"> Admin Login  </a></p>  
                <p>&copy;2023 CoderBusters &middot; <a href ="WebForm1.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>

             </div>

         </footer>
         <!---Footer content ends here --->
</body>
</html>
