<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testeConfirp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Cadastro</title>

</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">
                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Nome Completo:</span>
                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">

            </div>
        </div>

        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">
                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Data Nasc:</span>
                    <asp:TextBox ID="txtDtNas" runat="server" CssClass="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">

            </div>
        </div>

        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">
                <div class="input-group mb-3">
                    <label class="input-group-text" for="DropDownList1">Sexo:</label>
                    <asp:DropDownList ID="dpListSexo" runat="server" CssClass="form-select">
                        <asp:ListItem Value="1">Masculino</asp:ListItem>
                        <asp:ListItem Value="2">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">

            </div>
        </div>

        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4" style="text-align:center;">
                <asp:Button ID="Button1" runat="server" Text="Inserir" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
            </div>
            <div class="col-md-4">

            </div>
        </div>

        <br />
        <br />

        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <asp:GridView ID="GvPessoas" runat="server" align="center" AutoGenerateColumns="False" CssClass="table table-dark table-striped">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="DataNascimento" HeaderText="Data de Nasc." />
                        <asp:BoundField DataField="Descricao" HeaderText="Sexo" />
                        <asp:TemplateField HeaderText="Ação">
                            <ItemTemplate>
                                <asp:Button ID="BtnAlterarDados" runat="server" Text="Alterar" CssClass="btn btn-primary" OnCommand="BtnAlterarDados_Command" CommandArgument='<%#Eval("Id")%>' />
                                <asp:Button ID="BtnExcluir" runat="server" Text="Deletar" CssClass="btn btn-primary" OnCommand="BtnExcluir_Command" CommandArgument='<%#Eval("Id")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>
            <div class="col-md-3">
            </div>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    </form>
</body>
</html>
