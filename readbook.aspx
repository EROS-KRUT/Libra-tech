<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readbook.aspx.cs" Inherits="readbook" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
      <link href="css/custom.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet"/>
     <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="datatables/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>   
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="readbook.aspx"><i class="fa fa-book" aria-hidden="true"></i> Digital Library</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">          
             <li class="nav-item">
          <a class="nav-link active" href="viewbooks.aspx">View Books</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="readbook.aspx">Read Book</a>
        </li>          
          </ul>
          <ul class="navbar-nav"> 
                 <li class="nav-item">
          <a class="nav-link active" href="wallet.aspx">Wallet</a>
        </li>
               <li class="nav-item">
          <a class="btn btn-danger mx-1" href="memberlogin.aspx"><i class="fa fa-sign-out" aria-hidden="true"></i> Log Out</a>
        </li>
          </ul>
    </div>
  </div>
</nav>
 <div class="container">
        <br /><br /><br /> <br /><br />  
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">              
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="80" src="imgs/publisher.png"/>
                        </center>
                         <br />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>                         
                           <h3>View Books</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                     Your Wallet Balance is:&nbsp;
              <asp:Label ID="Label1" runat="server"></asp:Label>
                   <br /><br />
                    <div class="form-group">
                           <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Enabled="False"  Text="Search Book" onclick="Button1_Click"/>
                        </div>  
                   </div>
                </div>
             <br />
             </div>
          </div>
     </div>
    <br /><br />  
  <footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
</body>
</html>