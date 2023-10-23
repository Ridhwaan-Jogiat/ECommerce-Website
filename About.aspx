<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ECommerce.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<title>About me Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  .jumbotron {
    background-color: #808080;
    color: #fff;
    padding: 100px 25px;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  @media screen and (max-width: 768px) 
  {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

       

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />


 


<!-- Container (About Section) -->
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About Us </h2>    
      <p> Welcome to Ichiraku Clothing, your ultimate destination for anime-inspired fashion that not only reflects your passion for anime but also supports a greener world.
          At Ichiraku Clothing, we believe that fashion can be a powerful way to express your individuality while also making a positive impact on the environment. 
          Our commitment to eco-friendly practices sets us apart in the world of anime clothing,
          and we're excited to introduce you to a whole new way of showcasing your love for anime.
      </p>
      <%--<button  id="btn11" runat="server" onclick="btn11_onclick()">Get in Touch</button>--%>
        <asp:Button  class="btn btn-default btn-lg" ID="Button1" runat="server" 
            Text="Get in Touch" onclick="Button1_Click"   />

    </div>
    <div class="col-sm-4">
      <span style="display: block; width: 300px; height: 300px; margin: 0 auto;">
        <img src="Images/AboutUs_Symbols/Untitled design (3).png" alt="Otaku Threads" style="width: 300px; height: 300px;" />
      </span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span style="display: block; width: 600px; height: 600px; margin: 0 auto;">
        <img src="Images/AboutUs_Symbols/Eco.jpg" alt="Otaku Threads" style="width: 350px; height: 350px;" />
      </span>
    </div>
    <div class="col-sm-8">
      <h2>Our Vision</h2>
      <p> Our vision at Ichiraku Clothing is to become the leading online anime clothing store, not just in South Africa but across the globe.
        We're more than just a store; we're a community of anime enthusiasts who understand the importance of combining our love for anime with a responsible approach towards the environment.
        We're dedicated to offering a wide range of stylish and unique anime-themed clothing items that capture the essence of your favorite series and characters, all while being mindful of our planet.
      </p>
    </div>
  </div>
</div>

      

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
 
</footer>

</asp:Content>
