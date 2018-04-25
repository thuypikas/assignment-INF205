<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="OderDetail.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            OrderId:
            <asp:TextBox ID="OrderIdTextBox" runat="server" Text='<%# Bind("OrderId") %>' />
            <br />
            ProductId:
            <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
            <br />
            UnitPrice:
            <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            OrderId:
            <asp:TextBox ID="OrderIdTextBox" runat="server" Text='<%# Bind("OrderId") %>' />
            <br />
            ProductId:
            <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
            <br />
            UnitPrice:
            <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            OrderId:
            <asp:Label ID="OrderIdLabel" runat="server" Text='<%# Bind("OrderId") %>' />
            <br />
            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Bind("ProductId") %>' />
            <br />
            UnitPrice:
            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Nhom1.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [OrderDetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [OrderDetails] ([OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (@OrderId, @ProductId, @UnitPrice, @Quantity)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [OrderId], [ProductId], [UnitPrice], [Quantity] FROM [OrderDetails]" UpdateCommand="UPDATE [OrderDetails] SET [OrderId] = @OrderId, [ProductId] = @ProductId, [UnitPrice] = @UnitPrice, [Quantity] = @Quantity WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderId" Type="Int32" />
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderId" Type="Int32" />
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\INF205.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [OrderDetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [OrderDetails] ([OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (@OrderId, @ProductId, @UnitPrice, @Quantity)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [OrderId], [ProductId], [UnitPrice], [Quantity] FROM [OrderDetails]" UpdateCommand="UPDATE [OrderDetails] SET [OrderId] = @OrderId, [ProductId] = @ProductId, [UnitPrice] = @UnitPrice, [Quantity] = @Quantity WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderId" Type="Int32" />
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderId" Type="Int32" />
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>