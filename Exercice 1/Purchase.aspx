<%@ Page Language="VB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
“http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs)
If Page.IsValid Then
lblResult.Text = "<br />The price excluding tax is: " & (txtNumber.Text * txtProductPrice.Text )  
lblResult.Text &= "<br />The price all tax included is: " &(txtNumber.Text * txtProductPrice.Text  * ((txtVAT.Text / 100) + 1)) 
End If
End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>Computing the price excluding tax and all tax included</title>
    <style>
        
fieldset{
    width:300px;
    border:solid;
    color:black;
    background-color:Beige;
}
 h1 {
 padding: 10px;
 }
 </style>
</head>
<body>

    <h1>Calculation of the purchase price excluding tax and all tax included</h1>
    <p>Enter the price, the number of products and the VAT and click on the Total price button to calculate the price excluding tax and all tax 
        included of the product ordered.
    </p>
<form id="form1" runat="server">
<div>
<fieldset>


<asp:Label
id="lblProductPrice"
Text="Product Price:"
AssociatedControlID="txtProductPrice"
Runat="server" />
<br />
<asp:TextBox
id="txtProductPrice"
Runat="server" />
<br />
<asp:RequiredFieldValidator
id="reqProductPrice"
ControlToValidate="txtProductPrice"
Text="Please, Enter the product price!"
Display="Dynamic"
Runat="server" />
<br />
<asp:CompareValidator
id="cmpProductPrice"
ControlToValidate="txtProductPrice"
Text="The Price is not Number"
Operator="GreaterThan"
Type="Integer"
ValueToCompare="0"
Runat="server" />
<br /><br />

<asp:Label
id="lblNumber"
Text="number of product ordered:"
AssociatedControlID="txtNumber"
Runat="server" />
<br />
<asp:TextBox
id="txtNumber"
Runat="server" />
<br />
<asp:RequiredFieldValidator
id="reqNumber"
ControlToValidate="txtNumber"
Text="Please, Enter the Number of product ordered!"
Runat="server" />
<br />
<asp:CompareValidator
id="CompareValidator1"
ControlToValidate="txtNumber"
Text="The number of product oredered must be positive or null!"
Operator="GreaterThan"
Type="Integer"
ValueToCompare="0"
Runat="server" />
<br />
<asp:RegularExpressionValidator 
   id="RegularExpressionValidator" 
   runat="server" 
   ErrorMessage="The value entred is not an integer number!"
   ValidationExpression="^\d+$"
   ControlToValidate="txtNumber">
   
</asp:RegularExpressionValidator>    
<br /><br />



<asp:Label
id="lblVAT"
Text="VAT (%):"
AssociatedControlID="txtVAT"
Runat="server" />
<br />
<asp:TextBox
id="txtVAT"
Runat="server" />
<br />
<asp:RequiredFieldValidator
id="reqVAT"
ControlToValidate="txtVAT"
Text="Please, Enter the VAT!"
Display="Dynamic"
Runat="server" />
<br />
<asp:RangeValidator
   id="rangeValidator1" 
   runat="server" 
   ControlToValidate="txtVAT" 
   ErrorMessage="The VAT rate must be between 1 and 100" 
   MaximumValue="100" 
   MinimumValue="1"
    type="Integer"
   >
   
</asp:RangeValidator>
<br /><br />
<asp:Button
id="btnSubmit"
Text="Total Price"
OnClick="btnSubmit_Click"
Runat="server" />
</fieldset>
<asp:Label
id="lblResult"
Runat="server" />
</div>
</form>
</body>
</html>