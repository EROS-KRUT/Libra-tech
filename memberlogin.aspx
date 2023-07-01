<%@ Page Language="C#" AutoEventWireup="true" CodeFile="memberlogin.aspx.cs" Inherits="memberlogin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
     <link href="css/custom.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="memberlogin.aspx"><i class="fa fa-book" aria-hidden="true"></i> Digital Library</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">          
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.aspx">Home</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="memberlogin.aspx">Member Login</a>
        </li>       
          </ul>
         <ul class="navbar-nav"> 
           <li class="nav-item">
          <a class="btn btn-success mx-1" href="membersignup.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> SignUp</a>
        </li>
          </ul>         
    </div>
  </div>
</nav>
        <br />
     <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="85" src="imgs/login.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <br />
                           <h3>Member Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label><i class="fa fa-envelope" aria-hidden="true"></i> E-mail ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="E-mail ID" autocomplete="off" required="" style="text-transform: lowercase;" TextMode="Email"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                  ControlToValidate="TextBox1"  ErrorMessage="Not a valid e-mail id" ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </div>
                        <label><i class="fa fa-key" aria-hidden="true"></i> Password</label>                         
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"  autocomplete="off" required="" maxlength="30"></asp:TextBox>
                        </div><br />
                        <div class="form-group">
                           <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                        </div>                       
                     </div>
                  </div>
               </div>
            </div><br />
  <a href="forgotpassword.aspx">Forgot Password? <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
<br /><br />
         </div>
      </div>
   </div>        
<footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>