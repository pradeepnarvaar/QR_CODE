<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script src="http://code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>

<script type="text/javascript">
    

    function download() {
        alert("hi");
        var content = document.getElementById('content')
        console.log(content);
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
    <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClick="btnGenerate_Click" />
    <hr />
        <div id="content">
            <asp:PlaceHolder ID="plBarCode" runat="server" />
        </div>
    <asp:Button ID="btn_download" runat="server" Text="save" OnClientClick ="return download()" />
    </form>
</body>
</html>
