<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPizza.aspx.cs" Inherits="pizzaCornerEntity.AddPizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    	<!-- Add Pizza -->
	<div class="login-contect py-5">
		<div class="container py-xl-5 py-3">
			<div class="login-body">
				<div class="login p-4 mx-auto">
					<h5 class="text-center mb-4">Pizza Details</h5>
					
						<div class="form-group">
							<label>Category</label>
                            <asp:TextBox ID="txtCategory" class="form-control" runat="server" required=""></asp:TextBox>
							
						</div>
						<div class="form-group">
							<label class="mb-2"> Size </label>
                            <asp:TextBox ID="txtSize" Class="form-control"  runat="server"></asp:TextBox>
                            
						</div>
                    	<div class="form-group">
							<label class="mb-2">Ingredients </label>
                            <asp:TextBox ID="txtIngrident" Class="form-control"  runat="server"></asp:TextBox>
                            
						</div>

                    	<div class="form-group">
							<label class="mb-2">Price</label>
                            <asp:TextBox ID="TxtPrice" Class="form-control"  runat="server"></asp:TextBox>
                            
						</div>
                    	<div class="form-group">
							<label class="mb-2"> Photo </label>
                            <asp:FileUpload ID="photo" runat="server" />
                            
						</div>






                    <asp:Button ID="BtnPizza"  class="btn submit mb-4" runat="server" Text="Add Pizza " OnClick="BtnPizza_Click"  />
                        
				</div>
			</div>
            <h1 class="text-center mb-4" id="result" runat="server"> </h1>
		</div>
	</div>
	<!-- //login -->

</asp:Content>
