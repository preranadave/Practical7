<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtName" runat="server" ToolTip="Enter Name Compulsory"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Must Enter Name" ControlToValidate="TxtName" 
            Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
    
        <br />
        Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            Display="Dynamic" ErrorMessage="Must Enter Number 10 digits Long" ForeColor="Red" 
            ToolTip="Please Enter Only Number Of !0 Digits" 
            ValidationExpression="[0-9]{10}" ControlToValidate="TxtMobile">*</asp:RegularExpressionValidator>
        <br />
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
        <br />
      Confirm Password&nbsp;&nbsp;
        <asp:TextBox ID="TxtConfirm" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TxtPass" ControlToValidate="TxtConfirm" 
            ErrorMessage="Must Match With Password" ForeColor="Red" 
            ToolTip="Enter Same Password">*</asp:CompareValidator>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Semester"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtSem" runat="server" OnTextChanged="TxtSem_TextChanged"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="TxtSem" ErrorMessage="Must Be Within 8 " ForeColor="Red" 
            onservervalidate="CustomValidator1_ServerValidate" ToolTip="Enter Within 8">*</asp:CustomValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtSem" ErrorMessage="RangeValidator" MaximumValue="8" MinimumValue="5"></asp:RangeValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    
    </div>
    <p>
        <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
    </p>
    </form>
</body>
</html>
