<%@ Page Language="C#" AutoEventWireup="true" CodeFile="issue.aspx.cs" Inherits="issue" %>
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
    <a class="navbar-brand" href="issue.aspx"><i class="fa fa-book" aria-hidden="true"></i> DIGITAL LIBRARY</a>          
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>           
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">          
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="bookdetails.aspx">Book details</a>
        </li>
               <li class="nav-item">
          <a class="nav-link" href="issue.aspx">Book Issue</a>
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
 <div class="container-fluid">
      <div class="row">
         <div class="col-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="80" src="imgs/open-book.png"  />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <br />
                           <h4>Book Issue</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>               
                    <div class="row">
                     <div class="col-md-10">
                        <label>Available Books</label><br/>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" >
                                <asp:ListItem Text="Select" Value="select"/>                                
                                 <asp:ListItem Text="Action" Value="Action" />
                              <asp:ListItem Text="Fantasy" Value="Fantasy" />
                              <asp:ListItem Text="Fiction" Value="Fiction" />
                                 <asp:ListItem Text="Horror" Value="Horror" />
                                <asp:ListItem Text="Mystery" Value="Mystery" />                              
                                 <asp:ListItem Text="Novel" Value="Novel" /> 
                                 <asp:ListItem Text="Romance" Value="Romance" />
                                 <asp:ListItem Text="Thriller" Value="Thriller" />                               
                            </asp:DropDownList> 
                          <br />
                        </div>                         
                     </div>
                        <div class="col-md-2">
                             <label>Search Category</label><br/>
                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Search" onclick="Button2_Click" />
                        </div><br/>          
                  </div>
                   <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                   <br />
     <div class="row"  >            
    <div class="col-md-10">
                        <label>Search Author Name</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" placeholder="Author Name" autocomplete="off"></asp:TextBox>
                            </div><br/>
                     </div>           
                     <div class="col-md-2">
                             <label>Search Author</label><br/>
                        <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />
                        </div><br/>          
                  </div>
                   <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>
                   <br />
                   <div class="row">
                     <div class="col-md-3">
                        <label>Member ID</label>                   
                     </div>
                       <div class="col-md-7">                          
                          <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" >                          
                            </asp:DropDownList>
                              </div>
                       <div class="col-md-2">                         
                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Load Members</asp:LinkButton>
                           </div>
                     </div>
                   <br />
                    <div class="row">
                     <div class="col-md-3">
                        <label>Book ID</label>  
                     </div>
                         <div class="col-md-7">                           
                          <asp:DropDownList class="form-control" ID="DropDownList3" runat="server" >                         
                            </asp:DropDownList>
                              </div>
                       <div class="col-md-2">                          
                       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Load Books</asp:LinkButton>
                           </div>
                     </div>
                   <br />
                 <div class="row">
                     <div class="col-md-3">
                        <label>Date of Issue</label>  
                     </div>
                         <div class="col-md-3">
                         <asp:TextBox class="form-control" ID="TextBox8" height="39" Enabled="False" runat="server" required="" ></asp:TextBox>
                              </div>    
                         <div class="col-md-3">
                        <label>Date of Return</label>  
                     </div>
                         <div class="col-md-3">
                         <asp:TextBox class="form-control" ID="TextBox1"  height="39" Enabled="False" runat="server" required="" ></asp:TextBox>
                              </div>
                     </div>             
                            <br />
              <center>    <asp:Button class="btn btn-success w-50" ID="Button1" runat="server" Text="Issue" onclick="Button1_Click"/>
                  </center>
                   </div>
            </div>           
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