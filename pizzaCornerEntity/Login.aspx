<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pizzaCornerEntity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    	<!-- login -->
	<div class="login-contect py-5">
		<div class="container py-xl-5 py-3">
			<div class="login-body">
				<div class="login p-4 mx-auto">
					<h5 class="text-center mb-4">Login Now</h5>
					
						<div class="form-group">
							<label>Your Name</label>
                            <asp:TextBox ID="txtName" class="form-control" runat="server" required=""></asp:TextBox>
							
						</div>
						<div class="form-group">
							<label class="mb-2">Password</label>
                            <asp:TextBox ID="txtPassword" Class="form-control"  TextMode="Password"  runat="server"></asp:TextBox>
                            
						</div>

                    <asp:Button ID="Button1"  class="btn submit mb-4" runat="server" Text="Login" OnClick="Button1_Click" />
                        
				</div>
			</div>
            <h1 class="text-center mb-4" id="result" runat="server"> </h1>
		</div>
	</div>
	<!-- //login -->


</asp:Content>
