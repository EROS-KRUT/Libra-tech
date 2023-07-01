<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
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
    <a class="navbar-brand" href="home.aspx"><i class="fa fa-book" aria-hidden="true"></i> DIGITAL LIBRARY</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.aspx"><i class="fa fa-home" aria-hidden="true"></i> HOME</a>             
        </li>
           <li class="scroll-to-section"><a  class="nav-link" aria-current="page" href="#about">About Us</a></li>
          </ul>
          <ul class="navbar-nav">
           <li class="nav-item">
          <a class="btn btn-danger mx-1" href="adminlogin.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> Admin Login</a>
        </li>
          </ul>
    </div>
  </div>
</nav>   
         <div class="card text-center bg-dark text-white" >
  <img src="imgs/libdig (1).jpg" class="card-img" height="700" alt="image"/>
  <div class="card-img-overlay">
    <br /><br /><br /><br />
    <h1 class="card-title">WELCOME TO WORLD DIGITAL LIBRARY</h1>
     <br /><br />
    <h4 class="card-text">"A Library is the delivery room for the birth of IDEAS, a place where history come to LIFE!"</h4> 
 
      <br /><br /><br />    
       <a class="btn btn-primary mx-1" href="membersignup.aspx"><i class="fa fa-user-circle" aria-hidden="true"></i> Member SignUp</a>
          <a class="btn btn-success mx-1" href="memberlogin.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> Member Login</a>
  </div>
</div>
              <section class="section" id="about">
  <div class="container">
      <div class="row">
         <div class="col-12">           
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="300" src="imgs/library logo.jpg"  />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h1>ABOUT US</h1>
                            </center>
                             <div class="alert alert-primary" role="alert">
  <h2 class="text-center"/>DIGITAL LIBRARY<hr/><h2/>
  <p>This portal is an initiative to facilitate/empowers people to learn, grow, and contribute to a diverse and better-functioning society by maximizing access to our shared history and knowledge. Available to the learners community learning resources through a single-window.
</p>
</div>                     
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                   </div>
                </div>            
          </div>
      </div>
</section>
        <footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>