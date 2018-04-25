<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Oder.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            CustomerId:
            <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' />
            <br />
            OrderDate:
            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            RequireDate:
            <asp:TextBox ID="RequireDateTextBox" runat="server" Text='<%# Bind("RequireDate") %>' />
            <br />
            Receiver:
            <asp:TextBox ID="ReceiverTextBox" runat="server" Text='<%# Bind("Receiver") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Amount:
            <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerId:
            <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' />
            <br />
            OrderDate:
            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            RequireDate:
            <asp:TextBox ID="RequireDateTextBox" runat="server" Text='<%# Bind("RequireDate") %>' />
            <br />
            Receiver:
            <asp:TextBox ID="ReceiverTextBox" runat="server" Text='<%# Bind("Receiver") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Amount:
            <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Bind("CustomerId") %>' />
            <br />
            OrderDate:
            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            RequireDate:
            <asp:Label ID="RequireDateLabel" runat="server" Text='<%# Bind("RequireDate") %>' />
            <br />
            Receiver:
            <asp:Label ID="ReceiverLabel" runat="server" Text='<%# Bind("Receiver") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Amount:
            <asp:Label ID="AmountLabel" runat="server" Text='<%# Bind("Amount") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Nhom1.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Orders] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Orders] ([CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount]) VALUES (@CustomerId, @OrderDate, @RequireDate, @Receiver, @Address, @Description, @Amount)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [CustomerId] = @CustomerId, [OrderDate] = @OrderDate, [RequireDate] = @RequireDate, [Receiver] = @Receiver, [Address] = @Address, [Description] = @Description, [Amount] = @Amount WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="RequireDate" Type="DateTime" />
            <asp:Parameter Name="Receiver" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="RequireDate" Type="DateTime" />
            <asp:Parameter Name="Receiver" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\INF205.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Orders] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Orders] ([CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount]) VALUES (@CustomerId, @OrderDate, @RequireDate, @Receiver, @Address, @Description, @Amount)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [CustomerId] = @CustomerId, [OrderDate] = @OrderDate, [RequireDate] = @RequireDate, [Receiver] = @Receiver, [Address] = @Address, [Description] = @Description, [Amount] = @Amount WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="RequireDate" Type="DateTime" />
            <asp:Parameter Name="Receiver" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="RequireDate" Type="DateTime" />
            <asp:Parameter Name="Receiver" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>