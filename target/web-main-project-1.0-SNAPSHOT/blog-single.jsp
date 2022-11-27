 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
    <title>Magic Shop - Bakery | Blog</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/reponsive.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
    <script src="/js/data.js"></script>
    <script src ="js/main.js"></script>

</head>
<body>

	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-12 col-md d-flex align-items-center">
					<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409</a> or <span class="mailus">email us:</span> <a href="#">nguyenminhnhut435@gmail.com</a></p>
				</div>
				<div class="col-12 col-md d-flex justify-content-md-end">
					<p class="mb-0">Mở cửa từ thứ Hai đến Chủ Nhật</p>
					<div class="social-media">
						<p class="mb-0 d-flex">
							<a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
							<a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
							<a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
							
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class=" right-content mg-left">
                    <c:if test="${sessionScope.acc == null}">
                        <a href="./signIn-signUp.jsp" class="avatar">
                            <img src="images/test-image.jpg" alt="" class="avatar-img">
                        </a>
                    </c:if>

                    <c:if test="${sessionScope.acc != null}">
                        <a href="./user-profile.jsp" class="avatar">
                            <img src="images/test-image.jpg" alt="" class="avatar-img">
                        </a>
                    </c:if>
                </div>
	</div>
	</div>
	
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="MainControl?action=home">Happy Shoes <span>Shop</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<c:if test="${sessionScope.acc.isAdmin != 1}">
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item "><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                <li class="nav-item active"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
            </ul>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.isAdmin == 1}">
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item active"><a href="MainControl?action=reservation" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="ManagerProductControl?action=manager_product" class="nav-link">Manager Product</a></li>
                <li class="nav-item"><a href="MainControl?action=manager_account" class="nav-link">Manager Account</a></li>
            </ul>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.isAdmin == 1}">
        <div id="manage">
            <div class="right-content">
                <a href="#"><i style="color:#fff; width: 36px;" class="fa-solid fa-gear"></i></a>
            </div>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.isAdmin != 1}">
        <div id="cart">
            <div class="right-content">
              <div class="dot-inf"></div>
              <i class="fas fa-shopping-cart"></i>
            </div>
        </div>
    </c:if>
				
			  
				<div id="myModal" class="modal">
				<div class="modal-content">
				  <div class="modal-header">
					<h5 class="modal-title">Cart</h5>
					<span class="close">&times;</span>
				  </div>
				  
				  <div class="modal-body">
					<div class="cart-row">
					  <span class="cart-item cart-header cart-column">Product</span>
					  <span class="cart-price cart-header cart-column">Price</span>
					  <span class="cart-quantity cart-header cart-column">Quantity</span>
					</div>
					<div class="cart-items">
					  <div class="cart-row">
					  <div class="cart-item cart-column">
						<img class="cart-item-image" src="images/test-image.jpg" width="100" height="100">
						<span class="cart-item-title">cart-item-</span>
					  </div>
					  
					  <span class="cart-price cart-column">29$</span>
					  <div class="cart-quantity cart-column">
						<input class="cart-quantity-input" type="number" value="1">
						<button class="modal-btn btn-danger" type="button">Delete</button>
					  </div>
					</div>
					<div class="cart-row">
					  <div class="cart-item cart-column">
						<img class="cart-item-image" src="images/test-image.jpg" width="100" height="100">
						<span class="cart-item-title">cart-item</span>
					  </div>
					  <span class="cart-price cart-column">29$</span>
					  <div class="cart-quantity cart-column">
						<input class="cart-quantity-input" type="number" value="2">
						<button class="modal-btn btn-danger" type="button">Delete</button>
					  </div>
					</div>
					
				  </div>
	
				  <div class="cart-total">
					<strong class="cart-total-title">Total:</strong>
					<span class="cart-total-price">87$</span>
				  </div>
			  
			  
				  <div class="modal-footer">
                                    <button type="button" class="modal-btn btn-secondary close-footer">Close</button>
                                    <c:if test="${sessionScope.acc == null}">
                                        <a href="./signIn-signUp.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                                    </c:if>

                                    <c:if test="${sessionScope.acc != null}">
                                        <a href="./checkout.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                                    </c:if>
                              </div>
				</div>
				</div>
		</div>
	</nav>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-5">
            <h1 class="mb-2 bread">Blog Single</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="blog.jsp">Blog <i class="fa fa-chevron-right"></i></a></span> <span>Blog Single <i class="fa fa-chevron-right"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
     <div class="container">
      <div class="row">
        <div class="col-lg-8 ftco-animate">
          <p>
            <img src="images/test-image.jpg" alt="" class="img-fluid">
          </p>
          <h2 class="mb-3" style="font-size: 1.5 rem; font-weight:bold; line-height:1.2;">h2-content</h2>
        <p class="time-color" style="margin-top: -15px; font-size:13px;">October 3, 2022</p>
        <p>p-content</p>
        <h6 class="time-color" style="font-weight: bold;">h6-content</h6>
        <p>p-content</p>

        <p>p-content</p>
        <p>p-content</p>
        <p>p-content</p>
        <p>
          <img src="images/test-image.jpg" alt="" class="img-fluid">
        </p>
        <p>p-content</p>
        <h6 class="time-color" style="font-weight: bold;">h6-content</h6>
        <p>p-content</p>
        <p>p-content</p>
        <p>p-content</p>
          <img src="images/test-image.jpg" alt="" class="img-fluid">
        </p>
        <p>p-content</p>
        <p>p-content</p>
          <div class="tag-widget post-tag-container mb-5 mt-5">
            <div class="tagcloud">
              <a href="menu.jsp" class="tag-cloud-link">Nike</a>
              <a href="menu.jsp" class="tag-cloud-link">Adidas</a>
              <a href="menu.jsp" class="tag-cloud-link">Converse</a>

            </div>
          </div>


          <div class="pt-5 mt-5">
            <h3 class="mb-5 h4 font-weight-bold p-4 bg-light">h3-content</h3>
            <ul class="comment-list">
              <li class="comment">
                <div class="vcard bio">
                  <img src="images/customer_1.jpg" alt="Image placeholder">
                </div>
                <div class="comment-body">
                  <h3>Minh Nhut</h3>
                  <div class="meta mb-2">October 3, 2022</div>
                  <p>Great.</p>
                  <p><a href="#" class="reply">Reply</a></p>
                </div>
              </li>

              <li class="comment">
                <div class="vcard bio">
                  <img src="images/test-image.jpg" alt="Image placeholder">
                </div>
                <div class="comment-body">
                  <h3>Minh Nhut</h3>
                  <div class="meta mb-2">October 15, 2022</div>
                  <p>It's so delicious.</p>
                  <p><a href="#" class="reply">Reply</a></p>
                </div>

                <ul class="children">
                  <li class="comment">
                    <div class="vcard bio">
                      <img src="images//test-image.jpg" alt="Image placeholder">
                    </div>
                    <div class="comment-body">
                      <h3>Minh Nhut</h3>
                      <div class="meta mb-2">October 17, 2022</div>
                      <p>Good job!</p>
                      <p><a href="#" class="reply">Reply</a></p>
                    </div>


                    <ul class="children">
                      <li class="comment">
                        <div class="vcard bio">
                          <img src="images/test-image.jpg" alt="Image placeholder">
                        </div>
                        <div class="comment-body">
                          <h3>Minh Nhut</h3>
                          <div class="meta mb-2">October 7, 2022</div>
                          <p>Love u</p>
                          <p><a href="#" class="reply">Reply</a></p>
                        </div>

                        <ul class="children">
                          <li class="comment">
                            <div class="vcard bio">
                              <img src="images/test-image.jpg" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                              <h3>Minh Nhut</h3>
                              <div class="meta mb-2">October 1, 2022</div>
                              <p>Love u too</p>
                              <p><a href="#" class="reply">Reply</a></p>
                            </div>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
            <!-- END comment-list -->

            <div class="comment-form-wrap pt-5">
              <h3 class="mb-5 h4 font-weight-bold p-4 bg-light">Leave a comment</h3>
              <form action="#" class="p-4 p-md-5 bg-light">
                <div class="form-group">
                  <label for="name">Name *</label>
                  <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group">
                  <label for="email">Email *</label>
                  <input type="email" class="form-control" id="email">
                </div>
                <div class="form-group">
                  <label for="website">Website</label>
                  <input type="url" class="form-control" id="website">
                </div>

                <div class="form-group">
                  <label for="message">Message</label>
                  <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                </div>

              </form>
            </div>
          </div>
        </div> <!-- .col-md-8 -->

        <div class="col-lg-4 sidebar ftco-animate">
          <!-- <div class="sidebar-box">
            <form action="#" class="search-form">
              <div class="form-group">
                <span class="icon icon-search"></span>
                <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
              </div>
            </form>
          </div> -->
          <div class="sidebar-box ftco-animate">
           <h3>Category</h3>
           <ul class="categories">
            <li><a href="blog.jsp">Nike <span>(3)</span></a></li>
            <li><a href="blog.jsp">Adidas <span>(3)</span></a></li>
            <li><a href="blog.jsp">Converse <span>(3)</span></a></li>
            <!-- <li><a href="#">Desserts <span>(2)</span></a></li>
            <li><a href="#">Drinks <span>(2)</span></a></li>
            <li><a href="#">Wine <span>(2)</span></a></li> -->
          </ul>
        </div>

        <div class="sidebar-box ftco-animate">
          <h3>Popular Articles</h3>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/test-image.jpg);"></a>
            <div class="text">
              <h3 class="heading" style="font-size:17px;"><a href="blog-single.jsp">h3-content</a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> Oct 3, 2022</div>
                <div><span class="icon-person"></span>Minh Nhut</div>
                <!-- <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
              </div>
            </div>
          </div>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/test-image.jpg);"></a>
            <div class="text">
              <h3 class="heading"><a href="blog-single.jsp">h3-content</a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> Oct 2, 2022</div>
                <div><span class="icon-person"></span> Nhut</div>
                <!-- <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
              </div>
            </div>
          </div>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/test-image.jpg);"></a>
            <div class="text">
              <h3 class="heading"><a href="blog-single.jsp">h3-content</a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> Oct 3, 202</div>
                <div><span class="icon-person"></span> Minh Nhut</div>
                <!-- <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
              </div>
            </div>
          </div>
        </div>

        <div class="sidebar-box ftco-animate">
          <h3>Tag Cloud</h3>
          <ul class="tagcloud m-0 p-0">
            <!-- <a href="#" class="tag-cloud-link">Dish</a>
            <a href="#" class="tag-cloud-link">Food</a>
            <a href="#" class="tag-cloud-link">Lunch</a> -->
            <a href="menu.jsp" class="tag-cloud-link">Menu</a>
            <a href="menu.jsp" class="tag-cloud-link">Nike</a>
            <a href="menu.jsp" class="tag-cloud-link">Adidas</a>
            <a href="menu.jsp" class="tag-cloud-link">Converse</a>
          </ul>
        </div>

        <!-- <div class="sidebar-box ftco-animate">
         <h3>Archives</h3>
         <ul class="categories">
           <li><a href="#">January 2020 <span>(20)</span></a></li>
           <li><a href="#">February 2020 <span>(30)</span></a></li>
           <li><a href="#">March 2020 <span>(20)</span></a></li>
           <li><a href="#">April 2020 <span>(6)</span></a></li>
           <li><a href="#">May 2020 <span>(8)</span></a></li>
         </ul>
       </div> -->


       <div class="sidebar-box ftco-animate">
        <h3>Paragraph</h3>
        <p>p-content</p>
      </div>
    </div><!-- END COL -->
    </div>
    </div>
    </section>

    <c:import url="/footer.jsp" />