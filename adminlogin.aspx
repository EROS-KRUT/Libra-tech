<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>
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
    <a class="navbar-brand" href="adminlogin.aspx"><i class="fa fa-book" aria-hidden="true"></i> DIGITAL LIBRARY</a>           
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>            
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.aspx">Home</a>
        </li>
               <li class="nav-item">
          <a class="nav-link" href="adminlogin.aspx">Admin Login</a>
        </li>
          </ul>
          <ul class="navbar-nav">    
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
                           <img width="90" src="imgs/admin.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                          <br />
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>           
                  <div class="row">
                     <div class="col">
                        <label><i class="fa fa-user" aria-hidden="true"></i> Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username" autocomplete="off" required=""></asp:TextBox>                  
                            </div><br />
                        <label><i class="fa fa-key" aria-hidden="true"></i> Password</label><br />
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" autocomplete="off" required="" maxlength="30"></asp:TextBox>               
                            </div><br />
                        <div class="form-group">                          
                           <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Login" onclick="Button1_Click"/>                      
                            </div>                        
                     </div>                       
                  </div> 
               </div>
            </div> 
                 <br /><a href="home.aspx"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> Back To Home</a>
        <br /><br /> </div>
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