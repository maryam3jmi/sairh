<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QrCode.aspx.cs" Inherits="AIE.QrCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server"></dx:ASPxBinaryImage>
             <dx:ASPxBinaryImage ID="BinaryImage" runat="server"  Height="150px" Width="150px"></dx:ASPxBinaryImage>
        </div>
    </form>
</body>
</html>
