<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="IletisimFormu.Iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            font-size: 18px;
            margin-left:30px;
            color:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="jumbotron">
                <h2 style="text-align:center">İletişim Sayfası</h2>

            </div>

            <div class="form-group">
                <label>Adı ve SoyAdi:</label>
                <asp:TextBox ID="txtAdiSoyadi" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Yaş:</label>
                <asp:TextBox ID="txtYas" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Meslek</label>

                <asp:DropDownList ID="ddlMeslek" runat="server" CssClass="form-control" AppendDataBoundItems="true" DataSourceID="SqlDataSource2" DataTextField="Meslek" DataValueField="ID">
                
                <asp:ListItem Value="-1">Meslek Seçiniz</asp:ListItem>

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IletisimConnectionString %>" SelectCommand="SELECT * FROM [Meslek]"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>Telefon No:</label>
                <asp:TextBox ID="txtTelefonNo" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Konu:</label>
                <asp:TextBox ID="txtKonu" TextMode="Multiline" Rows="5" CssClass="form-control" runat="server"></asp:TextBox>
            </div>


            <div class="form-group">
                <label>Mesaj:</label>
                <asp:TextBox ID="txtMesaj" TextMode="Multiline" Rows="5" CssClass="form-control" runat="server"></asp:TextBox>
            </div>


            <asp:Button ID="btnKaydet" CssClass="form-control btn btn-success" runat="server" Text="Kaydet" OnClick="btnKaydet_Click" />
            <br />
            <strong><em>
                <asp:Label ID="lblMesaj" runat="server" Text=""  CssClass="auto-style1"></asp:Label>
            </em></strong> <br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IletisimConnectionString %>" SelectCommand="SELECT * FROM [Iletisim]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
