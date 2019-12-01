<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pizzaCornerEntity._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- about -->
	<div class="about-bottom">
		<div class="row no-gutters">
			<div class="col-lg-5 col-md-6 about">

			</div>
			<div class="col-lg-7 col-md-6 about-right-w3 text-right py-md-5">
				<div class="right-space py-xl-5 py-lg-3">
					<div class="title-section mb-4">
						<p class="w3ls-title-sub">About Us</p>
						<h3 class="w3ls-title">Welcome to <span>Tasty Burger</span></h3>
					</div>
					<p class="about-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
						doloremque
						laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
						architecto
						beatae vitae dicta
						sunt explicabo.Nemo enim ipsam voluptatem quia voluptas sit.</p>
					<a href="about.html" class="button-w3ls mt-5">Read More
						<span class="fa fa-caret-right ml-1" aria-hidden="true"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
    
    <!-- specials -->
	<section class="blog_w3ls py-5">
		<div class="container pb-xl-5 pb-lg-3">
			<div class="title-section text-center mb-md-5 mb-4">
				<p class="w3ls-title-sub">Tasty</p>
				<h3 class="w3ls-title">Our <span>Special</span></h3>
			</div>
			<div class="row">
				<!-- blog grid -->
				<div class="col-lg-4 col-md-6">
					<div class="card border-0 med-blog">
						<div class="card-header p-0">
							<a href="menu.html">
								<img class="card-img-bottom" src="images/blog1.jpg" alt="Card image cap">
							</a>
						</div>
						<div class="card-body border border-top-0">
							<h5 class="blog-title card-title m-0"><a href="menu.html">French Burger</a></h5>
							<p class="mt-3">Cras ultricies ligula sed magna dictum porta auris blandita.</p>
							<a href="menu.html" class="btn button-w3ls mt-4 mb-3">View More
								<span class="fa fa-caret-right ml-1" aria-hidden="true"></span>
							</a>
						</div>
					</div>
				</div>
				<!-- //blog grid -->
				<!-- blog grid -->
				<div class="col-lg-4 col-md-6 mt-md-0 mt-5">
					<div class="card border-0 med-blog">
						<div class="card-header p-0">
							<a href="menu.html">
								<img class="card-img-bottom" src="images/blog2.jpg" alt="Card image cap">
							</a>
						</div>
						<div class="card-body border border-top-0">
							<h5 class="blog-title card-title m-0"><a href="menu.html">Veg Muffin</a></h5>
							<p class="mt-3">Cras ultricies ligula sed magna dictum porta auris blandita.</p>
							<a href="menu.html" class="button-w3ls active mt-4 mb-3">View More
								<span class="fa fa-caret-right ml-1" aria-hidden="true"></span>
							</a>
						</div>
					</div>
				</div>
				<!-- //blog grid -->
				<!-- blog grid -->
				<div class="col-lg-4 col-md-6 mt-lg-0 mt-5">
					<div class="card border-0 med-blog">
						<div class="card-header p-0">
							<a href="menu.html">
								<img class="card-img-bottom" src="images/blog3.jpg" alt="Card image cap">
							</a>
						</div>
						<div class="card-body border border-top-0">
							<h5 class="blog-title card-title m-0"><a href="menu.html">Hashbrown Brioche</a></h5>
							<p class="mt-3">Cras ultricies ligula sed magna dictum porta auris blandita.</p>
							<a href="menu.html" class="button-w3ls mt-4 mb-3">View More
								<span class="fa fa-caret-right ml-1" aria-hidden="true"></span>
							</a>
						</div>
					</div>
				</div>
				<!-- //blog grid -->
			</div>
		</div>
	</section>
	<!-- //specials -->





</asp:Content>
