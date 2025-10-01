<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AbHindelinetoo.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>Lisa uus töötaja</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1_lisa" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                <asp:BoundField DataField="ametikoht" HeaderText="ametikoht" SortExpression="ametikoht" />
                <asp:BoundField DataField="palk" HeaderText="palk" SortExpression="palk" />
                <asp:TemplateField HeaderText="arvuti_id" SortExpression="arvuti_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("arvuti_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_tootaja" DataTextField="mudel" DataValueField="id" SelectedValue='<%# Bind("arvuti_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_tootaja" runat="server" ConnectionString="<%$ ConnectionStrings:ArvutiPoodLukkConnectionString_arvuti %>" DeleteCommand="DELETE FROM [Arvuti] WHERE [id] = @id" InsertCommand="INSERT INTO [Arvuti] ([mudel]) VALUES (@mudel)" SelectCommand="SELECT [id], [mudel] FROM [Arvuti]" UpdateCommand="UPDATE [Arvuti] SET [mudel] = @mudel WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="mudel" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="mudel" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("arvuti_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField DeleteText="Loobu" InsertText="Salvesta" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1_lisa" runat="server" ConnectionString="<%$ ConnectionStrings:ArvutiPoodLukkConnectionString_arvuti %>" DeleteCommand="DELETE FROM [Tootaja] WHERE [id] = @id" InsertCommand="INSERT INTO [Tootaja] ([eesnimi], [perenimi], [ametikoht], [palk], [arvuti_id]) VALUES (@eesnimi, @perenimi, @ametikoht, @palk, @arvuti_id)" SelectCommand="SELECT * FROM [Tootaja]" UpdateCommand="UPDATE [Tootaja] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [ametikoht] = @ametikoht, [palk] = @palk, [arvuti_id] = @arvuti_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter Name="ametikoht" Type="String" />
                <asp:Parameter Name="palk" Type="Decimal" />
                <asp:Parameter Name="arvuti_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter Name="ametikoht" Type="String" />
                <asp:Parameter Name="palk" Type="Decimal" />
                <asp:Parameter Name="arvuti_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>
