<%@ Page Language="C#" AutoEventWireup="true" CodeFile="membersignup.aspx.cs" Inherits="membersignup" %>
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
    <a class="navbar-brand" href="membersignup.aspx"><i class="fa fa-book" aria-hidden="true"></i> Digital Library</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">           
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.aspx">Home</a>
        </li>
             <li class="nav-item">                 
          <a class="nav-link" href="membersignup.aspx">Member SignUp</a>              
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
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="85" src="imgs/add-user.png"  />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <br />
                           <h4>Member Sign Up</h4>
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
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" height="39" ID="TextBox8" runat="server" Enabled="false" placeholder="Member ID" required="" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged" ></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
                        </div>
                     </div>                                       
                     <div class="col-md-4">
                        <label>Full Name</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" pattern="[a-zA-Z]+" title=" (Enter alphabets only) "  style="text-transform: uppercase;" ID="TextBox1" runat="server" placeholder="Full Name" autocomplete="off" required=""></asp:TextBox>
                            </div><br/>
                     </div>
                        <div class="col-md-4">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  TextMode="Date" required="" min="1921-01-01" max="2021-09-31" ></asp:TextBox>
                        </div><br/>
                     </div>
                  </div>
                   <br />
                    <div class="row">
                     <div class="col-md-6">
                        <label>Contact Number</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" required="" MaxLength="10" autocomplete="off" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="TextBox3" ErrorMessage="Mobile number should be 10 digits" 
                  ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            </div><br/>
                     </div>
                        <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" style="text-transform: lowercase;" runat="server" placeholder="Email ID" TextMode="Email" required="" autocomplete="off" ></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                  ControlToValidate="TextBox4"  ErrorMessage="Not a valid e-mail id" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                          
                            </div><br/>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-6">
                        <label>State</label><br/>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" >
                                <asp:ListItem Text="Select" Value="select"/>
 <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="DropDownList1" InitialValue="select" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>     
                        </div>
                     </div>
                        <div class="col-md-6">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>
                     </div>
                  </div>
                   <br />
                   <div class="row">
                     <div class="col">
                        <label>Full Address</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                         <center>
                         <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                           </center>
          <br />
                        </div>                       
                     </div>
                   <div class="row">
                        <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" required="" maxlength="30" autocomplete="off"></asp:TextBox>
                        </div><br/>
                     </div>
                          <div class="col-md-6">
                        <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Confirm Password" TextMode="Password" required="" maxlength="30"></asp:TextBox>
                        </div><br/>
                     </div>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                  ControlToCompare="TextBox9" ControlToValidate="TextBox7" 
                  ErrorMessage="Passwords do not match"></asp:CompareValidator>
                  </div>
                  <div class="row">
                     <div class="col">      
                        <div class="form-group">
                           <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        </div><br/>
                       Already has an account?
                         <div class="form-group">
                           <a href="memberlogin.aspx"><input class="btn btn-info w-100 btn-lg" id="Button2" type="button" value="Login" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         <br />   <a href="home.aspx"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> Back to Home</a><br/><br/>
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