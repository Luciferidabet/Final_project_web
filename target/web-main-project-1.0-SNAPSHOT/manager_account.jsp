
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
    <title>Magic Shop - Bakery | Reservation</title>
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
    <link rel="stylesheet" href="css/manager.css">

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
	
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="MainControl?action=home">Happy Shoes <span>Shop</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<c:if test="${sessionScope.acc.isAdmin != 1}">
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item "><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                <li class="nav-item active"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
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
                <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Blog</a></li>
                <li class="nav-item "><a href="MainControl?action=manager_product" class="nav-link">Manager Product</a></li>
                <li class="nav-item active"><a href="MainControl?action=manager_account" class="nav-link">Manager Account</a></li>
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
                                    <span class="cart-item-title">Cheese Roll</span>
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
                                    <span class="cart-item-title">Meat Pie (Pastel De Carne)</span>
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
                                    <h1 class="mb-2 bread">Manager Account</h1>
                                    <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>Manager Account<i class="fa fa-chevron-right"></i></span></p>
                            </div>
                    </div>
            </div>
    </section>
    
    <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach begin="1" end="5" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>1</td>
                                <td>Giày thể thao</td>
                                <td>
                                    <img src="data:image/jpeg;base64,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">
                                </td>
                                <td>100 $</td>
                                <td>
                                    <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <a href="#"><button type="button" class="btn btn-primary">Back to home</button>

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach begin="1" end="3" var="o">
                                        <option value="1">Giày Adidas</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" required>
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </a>
    <script src="js/manager.js" type="text/javascript"></script>

<script src="js/manager.js" type="text/javascript"></script>

<c:import url="/footer.jsp" />

