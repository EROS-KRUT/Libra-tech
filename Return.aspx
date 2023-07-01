<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Return.aspx.cs" Inherits="Return" %>
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
    <a class="navbar-brand" href="Return.aspx"><i class="fa fa-book" aria-hidden="true"></i> DIGITAL LIBRARY</a>           
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>             
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">          
           <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="bookdetails.aspx">Book Details</a>
        </li>
               <li class="nav-item">
          <a class="nav-link" href="Return.aspx">Return Book</a>
        </li>
          </ul>
          <ul class="navbar-nav">
     <li class="nav-item">
          <a class="btn btn-danger mx-1" href="adminlogin.aspx"><i class="fa fa-sign-out" aria-hidden="true"></i> Log Out</a>
        </li>
          </ul>
    </div>
  </div>
</nav>
<br />
  <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>                     
                           <img width="85" src="imgs/return.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                          <br />
                           <h3>Books Return</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                   <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                   <br />
                   <div class="row">
                     <div class="col-md-3">
                        <label>Accept Book Return</label> 
                     </div>
                       <div class="col-md-7">                           
                          <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" >                         
                            </asp:DropDownList>
                              </div>
                       <div class="col-md-2">                          
                       <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Load Book ID</asp:LinkButton>
                           </div>
                     </div>
                   <br />
                <center> <asp:Button class="btn btn-success w-50" ID="Button1" runat="server" Text="Accept Return of Books" onclick="Button1_Click"/>
               </center>   <br /> <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Green"></asp:Label>
                   </div>
            </div>                 
         </div>
      </div>
   </div>
<br /><br /><br /><br /><br />
    <footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>