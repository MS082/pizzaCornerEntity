<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedBackDetails.aspx.cs" Inherits="pizzaCornerEntity.FeedBackDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    	<!-- login -->
	<div class="login-contect py-12">
		<div class="container py-xl-12 py-12">
			<div class="login-body">
				<div class="login p-12 mx-auto">
					<h5 class="text-center mb-12">Feed Back Details </h5>
					
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
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
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
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
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
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
                                                <th runat="server">Name</th>
                                                <th runat="server">Email</th>
                                                <th runat="server">Phone</th>
                                                <th runat="server">Message</th>
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
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaCornerConnectionString2 %>" DeleteCommand="DELETE FROM [FeedBackTable] WHERE [id] = @id" InsertCommand="INSERT INTO [FeedBackTable] ([Name], [Email], [Phone], [Message]) VALUES (@Name, @Email, @Phone, @Message)" SelectCommand="SELECT * FROM [FeedBackTable] ORDER BY [id] DESC" UpdateCommand="UPDATE [FeedBackTable] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [Message] = @Message WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                            <asp:Parameter Name="Message" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                            <asp:Parameter Name="Message" Type="String" />
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
