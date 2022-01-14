<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
 protected void Send_Click(object sender, EventArgs e)
 {
 Server.Transfer("Login.aspx"); 
 }
</script>

<html>
<head>
 <title>Using the transfer method</title>
    <style>
        fieldset{
    width:500px;
    color:black;
        }
    </style>
</head>

<body>
 <form runat="server">
     <fieldset>
         <legend>Login</legend>
         <Table>
<tr> <td> UserName :</td><td> 
    <asp:TextBox ID="userName" runat="server" /> <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
   runat="server" ControlToValidate ="userName"
   ErrorMessage="Please choose user Name"> 
   
    </asp:RequiredFieldValidator>
    <br />
         <asp:regularexpressionvalidator display="Dynamic" id="RegularExpressionValidator2" 
             errormessage="userName must be 8-20 characters long</br> with at least one numeric character." 
             validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$" 
         controltovalidate="userName" runat="server">
         </asp:regularexpressionvalidator>
                     </td></tr>
 <tr><td> Password :</td>
     <td> 
         <asp:TextBox ID="password" runat="server" /> <br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
               runat="server" ControlToValidate ="password"
               ErrorMessage="Please choose password" 
               /><br />
         <asp:regularexpressionvalidator display="Dynamic" id="RegularExpressionValidator1" 
             errormessage="Password must be 8-10 characters long</br> with at least one numeric character." 
             validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" 
         controltovalidate="password" runat="server">
         </asp:regularexpressionvalidator>
     </td></tr>
 <tr><td><asp:Button ID="Send" runat="server" Text="Send" OnClick="Send_Click" /></td>
 <td><input type='button' id='resetButton' value='Reset' onclick='theForm.reset();return false;'/> </td></tr>

    </Table>

     </fieldset>
 </form>
</body>
</html>