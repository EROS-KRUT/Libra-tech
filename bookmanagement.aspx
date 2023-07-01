<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookmanagement.aspx.cs" Inherits="bookmanagement" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
      <link href="css/custom.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>      
     <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="bookmanagement.aspx"><i class="fa fa-book" aria-hidden="true"></i> Digital Library</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">    
             <li class="nav-item">
  <a class="nav-link active" aria-current="page" href="bookdetails.aspx">Book Details</a>
        </li>
             <li class="nav-item">
          <a class="nav-link" href="bookmanagement.aspx">Book Management</a>
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
 <div class="container">
      <div class="row">
         <div class="col">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="80" src="imgs/book.png"  />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <br />
                           <h4>BOOK MANAGEMENT</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-4">
                        <label>Book ID</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" Enabled="false" runat="server" autocomplete="off" required=""></asp:TextBox>                          
                        </div><br/>
                     </div>
                         <div class="col-md-4">
                        <label>Book Name</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name" autocomplete="off" required=""></asp:TextBox>                          
                        </div><br/>
                     </div>
                       <div class="col-md-4">
                        <label>Publisher</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Publisher" autocomplete="off" required=""></asp:TextBox>                          
                        </div><br/>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-4">
                        <label>Year of Publish</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Year" TextMode="Number" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>
                     </div>
                        <div class="col-md-4">
                        <label>Author</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Author" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>
                     </div>
                         <div class="col-md-4">
                        <label>Category</label><br/>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" autocomplete="off" required="">
                                <asp:ListItem Text="Select" Value="select" />
                                 <asp:ListItem Text="Action" Value="Action" />
                              <asp:ListItem Text="Fantasy" Value="Fantasy" />
                              <asp:ListItem Text="Fiction" Value="Fiction" />
                                 <asp:ListItem Text="Horror" Value="Horror" />
                                <asp:ListItem Text="Mystery" Value="Mystery" />                              
                                 <asp:ListItem Text="Novel" Value="Novel" /> 
                                 <asp:ListItem Text="Romance" Value="Romance" />
                                 <asp:ListItem Text="Thriller" Value="Thriller" /> 
                                 </asp:DropDownList> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" InitialValue="select" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </div>
                             </div>
                  </div>
                    <div class="row">
                     <div class="col-md-4">
                        <label>Number of copies</label><br/>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" autocomplete="off" required="">
                                <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="1" Value="1" />
                              <asp:ListItem Text="2" Value="2" />
                              <asp:ListItem Text="3" Value="3" />
                              <asp:ListItem Text="4" Value="4" />
                              <asp:ListItem Text="5" Value="5" />
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" InitialValue="select" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                        <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Language" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>
                     </div>
                         <div class="col-md-4">
                        <label>Date of Purchase</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" TextMode="Date" required="" min="1921-01-01" max="2021-09-31" autocomplete="off" ></asp:TextBox>
                        </div><br/>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-4">
                        <label>Book Type</label><br/>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList3" runat="server" autocomplete="off" required="">
                                <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="E-Book" Value="E-Book" />
                              <asp:ListItem Text="Non E-Book" Value="Non E-Book" />
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="DropDownList3" InitialValue="select" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>    
                        </div>
                     </div>                    
                         <div class="col-md-4">
                            <label>Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Price" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>                             
                            </div> 
                         <div class="col-md-4">
                            <label>Upload PDF file name</label>
                                <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" accept=".pdf" autocomplete="off" required="" />                               
                            </div>  
                        </div>
                             <div class="wrapper">                               
                                <asp:Button ID="Button1" class="btn btn w-25 btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
               </div>
            </div>
           <br />
         </div>
            </div>
   </div>    
  <footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
</body>
</html>