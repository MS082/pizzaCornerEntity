<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="pizzaCornerEntity.adminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    	<!-- Add Pizza -->
	<div class="login-contect py-5">
		<div class="container py-xl-5 py-3">
			<div class="login-body">
				<div class="login p-4 mx-auto">
					<h5 class="text-center mb-4">Admin Paneel </h5>
					
					

                    <a href="AddPizza.aspx" class="btn btn-primary mb-12">Add Pizza </a><br /><br />
                    <a href="PizzaView.aspx" class="btn btn-primary  mb-12">View Product Details </a><br /><br />
                    <a href="FeedBackDetails.aspx" class="btn btn-primary mb-12">View Feed Back  </a><br /><br />

                    

                        
				</div>
			</div>
            <h1 class="text-center mb-4" id="result" runat="server"> </h1>
		</div>
	</div>
	<!-- //login -->


</asp:Content>
