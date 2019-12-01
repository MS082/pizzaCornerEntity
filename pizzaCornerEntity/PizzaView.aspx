<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PizzaView.aspx.cs" Inherits="pizzaCornerEntity.PizzaView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        table tr td {
            font-size:20px;
            text-align:center;
            border:1px solid blue;
            width:auto;
            padding:10px;
        }
    </style>	<!-- login -->
	<div class="login-contect py-5">
		<div class="container py-xl-12 py-3">
			<div class="login-body">
				<div class="login p-12 mx-auto">
					<h5 class="text-center mb-12">Details of Pizza </h5>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="IngLabel" runat="server" Text='<%# Eval("Ing") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="IngTextBox" runat="server" Text='<%# Bind("Ing") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="IngTextBox" runat="server" Text='<%# Bind("Ing") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="IngLabel" runat="server" Text='<%# Eval("Ing") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">id</th>
                                                <th runat="server">category</th>
                                                <th runat="server">Size</th>
                                                <th runat="server">Ing</th>
                                                <th runat="server">Price</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="IngLabel" runat="server" Text='<%# Eval("Ing") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
						
				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaCornerConnectionString %>" DeleteCommand="DELETE FROM [PizzaTable] WHERE [id] = @id" InsertCommand="INSERT INTO [PizzaTable] ([category], [Size], [Ing], [Price]) VALUES (@category, @Size, @Ing, @Price)" SelectCommand="SELECT [id], [category], [Size], [Ing], [Price] FROM [PizzaTable] ORDER BY [id] DESC" UpdateCommand="UPDATE [PizzaTable] SET [category] = @category, [Size] = @Size, [Ing] = @Ing, [Price] = @Price WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="Size" Type="String" />
                            <asp:Parameter Name="Ing" Type="String" />
                            <asp:Parameter Name="Price" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="Size" Type="String" />
                            <asp:Parameter Name="Ing" Type="String" />
                            <asp:Parameter Name="Price" Type="Int32" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
						
				</div>
			</div>
            <h1 class="text-center mb-4" id="result" runat="server"> </h1>
		</div>
	</div>
	<!-- //login -->

</asp:Content>
