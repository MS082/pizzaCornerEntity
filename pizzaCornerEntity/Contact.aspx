﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pizzaCornerEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
	<!-- contact -->
	<section class="ab-info-main py-5" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section text-center mb-md-5 mb-4">
				<h3 class="w3ls-title mb-3">Contact <span>Us</span></h3>
				
			</div>
			<div class="row contact-agileinfo pt-lg-4">
				<!-- contact address -->
				<div class="col-md-5 address">
					<h3 class="footer-title mb-4 pb-lg-2">Our Address</h3>
					<div class="row address-info-w3ls">
						<div class="col-3 address-left">
							<img src="images/c1.png" alt="" class="img-fluid">
						</div>
						<div class="col-9 address-right mt-2">
							<h5 class="address mb-2">Address</h5>
							<p> California, USA</p>
						</div>
					</div>
					<div class="row address-info-w3ls my-2">
						<div class="col-3 address-left">
							<img src="images/c2.png" alt="" class="img-fluid">
						</div>
						<div class="col-9 address-right mt-2">
							<h5 class="address mb-2">Email</h5>
							<p>
								<a href="mailto:example@email.com"> mail@example.com</a>
							</p>
						</div>
					</div>
					<div class="row address-info-w3ls">
						<div class="col-3 address-left">
							<img src="images/c3.png" alt="" class="img-fluid">
						</div>
						<div class="col-9 address-right mt-2">
							<h5 class="address mb-2">Phone</h5>
							<p>+1 234 567 8901</p>
						</div>
					</div>
				</div>
				<!-- //contact address -->
				<!-- contact form -->
				<div class="col-lg-7 contact-right mt-lg-0 mt-5">
					
						<div class="row">
							<div class="col-lg-6 form-group pr-lg-2">
                                <asp:TextBox ID="TxtName" CssClass="form-control" runat="server" placeholder="Name" required=""></asp:TextBox>
                               
							</div>
							<div class="col-lg-6 form-group pl-lg-2">
								<asp:TextBox ID="TxtEmail" CssClass="form-control" placeholder="Email" runat="server" textMode="Email" required=""></asp:TextBox>

                                
							</div>
						</div>
						<div class="form-group">
                            	<asp:TextBox ID="TxtNumber" placeholder="Number" CssClass="form-control" runat="server" textMode="Number" required=""></asp:TextBox>

							
						</div>
						<div class="form-group">
                            	<asp:TextBox ID="TxtMsg" placeholder="Message" CssClass="form-control" runat="server" textMode="Multiline" required=""></asp:TextBox>

							
						</div>

                    <asp:Button ID="btnSubmit" runat="server" Text="send Message"  class="btn submit-contact-main ml-auto" OnClick="btnSubmit_Click"/>

						
					
				</div>
				<!-- contact form -->
                <h1 class="text-center mb-4" id="result" runat="server"> </h1>
			</div>
		</div>
	</section>
	<!-- contact -->



</asp:Content>
