<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wallet.aspx.cs" Inherits="wallet" %>
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
    <a class="navbar-brand" href="wallet.aspx"><i class="fa fa-book" aria-hidden="true"></i> DIGITAL LIBRARY</a>          
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>            
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">          
               <li class="nav-item">
          <a class="nav-link active" href="viewbooks.aspx">View Books</a>
        </li>
            <li class="nav-item">
          <a class="nav-link" href="wallet.aspx">Wallet</a>
        </li>
          </ul>
          <ul class="navbar-nav">
       <li class="nav-item">
          <a class="btn btn-danger mx-1" href="memberlogin.aspx"><i class="fa fa-sign-out" aria-hidden="true"></i> Log Out</a>
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
                           <img width="60" src="imgs/wallet.png"  />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <br />
                           <h4>Wallet</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                    Current Wallet Balance:&nbsp;
              <asp:Label ID="Label2" runat="server"></asp:Label>
                   <br /><br />
                    <div class="row">
                     <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" style="text-transform: lowercase;" runat="server" Enabled="False" TextMode="Email" required="" autocomplete="off" ></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                  ControlToValidate="TextBox1"  ErrorMessage="Not a valid e-mail id" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                          
                            </div><br/>
                  </div>
                    <div class="row">
                     <div class="col-md-6">
                        <label>Card Number</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Card Number" required="" MaxLength="16" autocomplete="off" ></asp:TextBox>                       
                            </div><br/>
                     </div>
                        <div class="col-md-6">
                        <label>CVV Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="CVV Number" required="" MaxLength="3" autocomplete="off" ></asp:TextBox>                       
                            </div>
                     </div>
                  </div>
                   <h6><center><u>Expiry Date</u></center></h6>
                    <div class="row">
                     <div class="col-md-6">
                        <label>Month</label><br/>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" >
                                <asp:ListItem Text="Select" Value="select"/>
                                <asp:ListItem Text="01" Value="01" />
                                <asp:ListItem Text="02" Value="02" />
                                <asp:ListItem Text="03" Value="03" />
                                <asp:ListItem Text="04" Value="04" />
                                <asp:ListItem Text="05" Value="05" />
                                <asp:ListItem Text="06" Value="06" />
                                <asp:ListItem Text="07" Value="07" />
                                <asp:ListItem Text="08" Value="08" />
                                <asp:ListItem Text="09" Value="09" />
                                <asp:ListItem Text="10" Value="10" />
                                <asp:ListItem Text="11" Value="11" />
                                <asp:ListItem Text="12" Value="12" />
                            </asp:DropDownList> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="DropDownList1" InitialValue="select" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>     
                        </div>
                     </div>
               <div class="col-md-6">
                        <label>Year</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Year" autocomplete="off" required=""></asp:TextBox>
                        </div><br/>
                     </div>
                  </div>
                   <br />
                   <div class="row">
                     <div class="col">
                        <label>Amount</label><br/>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Amount" TextMode="SingleLine" autocomplete="off" required=""></asp:TextBox>
                       <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Rs.100</asp:LinkButton>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Rs.200</asp:LinkButton> 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Rs.500</asp:LinkButton>
                            </div><br/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                          <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Load Amount" onclick="Button1_Click"/>
                            </div><br/>
                     </div>
                  </div>                   
               </div>
            </div>
           
         </div>
      </div>
   </div> <br /><br />    
                  <footer>
<p class="p-3 bg-dark text-white text-center">&copy Digital Library</p>
</footer>
    </form>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>