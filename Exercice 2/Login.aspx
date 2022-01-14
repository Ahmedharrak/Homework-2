<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
 protected void Page_Load(object sender, EventArgs e)
 {
 userName.Text = "Welcome Sir: " + Request["userName"];

 }
</script>
<html>
<head>
</head>
<body>
 <form runat="server">
 <h3> <asp:Label ID="userName" runat="server" /> </h3>
 <h3> <asp:Label ID="password" runat="server" /> </h3>
 </form>
</body>
</html>