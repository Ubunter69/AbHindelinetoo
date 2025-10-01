<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AbHindelinetoo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Töötaja</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1_idk" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                        <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                        <asp:BoundField DataField="ametikoht" HeaderText="ametikoht" SortExpression="ametikoht" />
                        <asp:BoundField DataField="palk" HeaderText="palk" SortExpression="palk" />
                        <asp:BoundField DataField="ArvutiMudel" HeaderText="ArvutiMudel" SortExpression="ArvutiMudel" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1_idk" runat="server" ConnectionString="<%$ ConnectionStrings:ArvutiPoodLukkConnectionString_arvuti %>" SelectCommand="SELECT T.id, T.eesnimi, T.perenimi, T.ametikoht, T.palk, A.mudel AS ArvutiMudel
FROM Tootaja T
INNER JOIN Arvuti A ON T.arvuti_id = A.id
"></asp:SqlDataSource>
            </p>
        </section>
    </main>

</asp:Content>
