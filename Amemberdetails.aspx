<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Amemberdetails.aspx.cs" Inherits="Amemberdetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
      <link href="css/custom.css" rel="stylesheet" />
     <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet"/> 
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="datatables/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>  
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {   
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();        
      });
</script>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="Amemberdetails.aspx"><i class="fa fa-book" aria-hidden="true"></i> Digital Library</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          
             <li class="nav-item">
  <a class="nav-link active" aria-current="page" href="bookdetails.aspx">Book Details</a>
        </li>
             <li class="nav-item">
          <a class="nav-link" href="Amemberdetails.aspx">Member Details</a>
        </li>          
          </ul>
          <ul class="navbar-nav"> 
                 <li class="nav-item">
  <a class="nav-link active" aria-current="page" href="issue.aspx">Book Issue</a>
        </li>
                    <li class="nav-item">
  <a class="nav-link active" aria-current="page" href="Return.aspx">Book Return</a>
        </li>      
               <li class="nav-item">
          <a class="btn btn-danger mx-1" href="adminlogin.aspx"><i class="fa fa-sign-out" aria-hidden="true"></i> Log Out</a>
        </li>
          </ul>
    </div>
  </div>
</nav> 


                     <br />
        <div class="container-fluid">           
        <div class="col-12">
              <div class="card">
               <div class="card-body">            
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Details</h4>                         
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
                         <div style="padding:10px;">                            
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server">           
                             </asp:GridView>                                
                    </div>
                             </div>
                  </div>
               </div>
            </div>
              </div>
         </div> 
        <br /> <br /> <br /> <br />


          <footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
</body>
</html>
