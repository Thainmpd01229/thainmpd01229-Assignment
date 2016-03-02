<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Makhachhang" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Makhachhang" HeaderText="Makhachhang" ReadOnly="True" SortExpression="Makhachhang" />
                <asp:BoundField DataField="Tenkhachhang" HeaderText="Tenkhachhang" SortExpression="Tenkhachhang" />
                <asp:BoundField DataField="Diachi" HeaderText="Diachi" SortExpression="Diachi" />
                <asp:BoundField DataField="Sodienthoai" HeaderText="Sodienthoai" SortExpression="Sodienthoai" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:thainmpd01229ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [Makhachhang] = @Makhachhang" InsertCommand="INSERT INTO [KhachHang] ([Makhachhang], [Tenkhachhang], [Diachi], [Sodienthoai]) VALUES (@Makhachhang, @Tenkhachhang, @Diachi, @Sodienthoai)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [Tenkhachhang] = @Tenkhachhang, [Diachi] = @Diachi, [Sodienthoai] = @Sodienthoai WHERE [Makhachhang] = @Makhachhang">
            <DeleteParameters>
                <asp:Parameter Name="Makhachhang" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Makhachhang" Type="String" />
                <asp:Parameter Name="Tenkhachhang" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Sodienthoai" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tenkhachhang" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Sodienthoai" Type="Int32" />
                <asp:Parameter Name="Makhachhang" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
