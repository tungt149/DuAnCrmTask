<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="DuAnCRM_TASK.UrlUtil.UrlUtil"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Task Update</title>

<link rel="shortcut icon"
	href="/<c:url value="/assets/images/favicon.ico" />" />

<!-- Perfect Scrollbar -->
<link type="text/css"
	href="<c:url value="/assets/vendor/perfect-scrollbar.css" />"
	rel="stylesheet" />

<!-- App CSS -->
<link type="text/css" href="<c:url value="/assets/css/app.css" />"
	rel="stylesheet" />
<link type="text/css" href="<c:url value="/assets/css/app.rtl.css" />"
	rel="stylesheet" />

<!-- Material Design Icons -->
<link type="text/css"
	href="<c:url value="/assets/css/vendor-material-icons.css" />"
	rel="stylesheet" />
<link type="text/css"
	href="<c:url value="/assets/css/vendor-material-icons.rtl.css" />"
	rel="stylesheet" />

<!-- Font Awesome FREE Icons -->
<link type="text/css"
	href="<c:url value="/assets/css/vendor-fontawesome-free.css" />"
	rel="stylesheet" />
<link type="text/css"
	href="<c:url value="/assets/css/vendor-fontawesome-free.rtl.css"/>"
	rel="stylesheet" />

<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr.css" />"
	rel="stylesheet" />
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr.rtl.css" />"
	rel="stylesheet" />
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr-airbnb.css" />"
	rel="stylesheet" />
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr-airbnb.rtl.css" />"
	rel="stylesheet" />

<!-- Flatpickr -->
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr.css" />"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr.rtl.css" />"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr-airbnb.css"/>"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/css/vendor-flatpickr-airbnb.rtl.css"/>"
	rel="stylesheet">

<!-- Quill Theme -->
<link type="text/css"
	href="<c:url value="/assets/css/vendor-quill.css" />" rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/css/vendor-quill.rtl.css" />"
	rel="stylesheet">

<!-- Dropzone -->
<link type="text/css"
	href="<c:url value="/assets/css/vendor-dropzone.css" />"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/css/vendor-dropzone.rtl.css" />"
	rel="stylesheet">

<!-- Select2 -->
<link type="text/css"
	href="<c:url value="/assets/css/vendor-select2.css"/>" rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/css/vendor-select2.rtl.css" />"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="/assets/vendor/select2/select2.min.css"/>"
	rel="stylesheet">

</head>

<body class="layout-fixed">
	<div class="preloader"></div>

	<!-- Header Layout -->
	<div class="mdk-header-layout js-mdk-header-layout">
		<!-- Header -->

		<div id="header" class="mdk-header bg-dark js-mdk-header m-0"
			data-fixed data-effects="waterfall">
			<div class="mdk-header__content">
				<div
					class="navbar navbar-expand-sm navbar-main navbar-dark bg-dark pr-0"
					id="navbar" data-primary>
					<div class="container">
						<!-- Navbar toggler -->

						<button
							class="navbar-toggler navbar-toggler-right d-block d-md-none"
							type="button" data-toggle="sidebar">
							<span class="navbar-toggler-icon"></span>
						</button>

						<!-- Navbar Brand -->
						<a href="dashboard.html" class="navbar-brand"> <img
							class="navbar-brand-icon"
							src="<c:url value="/assets/images/logo.png" />" height="50"
							alt="Cybersoft" />
						</a> <span class="mr-3"></span>

						<form class="search-form d-none d-xl-flex flex mr-3"
							action="fixed-index.html">
							<button class="btn" type="submit">
								<i class="material-icons">search</i>
							</button>
							<input type="text" class="form-control" placeholder="Search" />
						</form>

						<ul class="nav navbar-nav ml-auto d-none d-md-flex border-left">
							<li class="nav-item dropdown"><a href="#notifications_menu"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								data-caret="false"> <i
									class="material-icons nav-icon navbar-notifications-indicator">
										notifications_none </i>
							</a>
								<div id="notifications_menu"
									class="dropdown-menu dropdown-menu-right navbar-notifications-menu">
									<div class="dropdown-item d-flex align-items-center py-2">
										<span class="flex navbar-notifications-menu__title m-0">
											Notifications </span> <a href="javascript:void(0)"
											class="text-muted"> <small>Clear all</small>
										</a>
									</div>
									<div class="navbar-notifications-menu__content"
										data-perfect-scrollbar>
										<div class="py-2">
											<div class="dropdown-item d-flex">
												<div class="mr-3">
													<div class="avatar avatar-sm"
														style="width: 32px; height: 32px">
														<img
															src="<c:url value="/assets/images/256_daniel-gaffey-1060698-unsplash.jpg" />"
															alt="Avatar" class="avatar-img rounded-circle" />
													</div>
												</div>
												<div class="flex">
													<a href="">Ti???n Ho??ng</a> ???? b??nh lu???n trong <a href="">Stack</a><br />
													<small class="text-muted">1 ph??t tr?????c</small>
												</div>
											</div>
											<div class="dropdown-item d-flex">
												<div class="mr-3">
													<a href="#">
														<div class="avatar avatar-xs"
															style="width: 32px; height: 32px">
															<span class="avatar-title bg-purple rounded-circle">
																<i class="material-icons icon-16pt"> person_add </i>
															</span>
														</div>
													</a>
												</div>
												<div class="flex">
													Ng?????i d??ng m???i <a href="#">Tr???n Minh</a> ???? ????ng k?? t??i
													kho???n<br /> <small class="text-muted">1 gi??? tr?????c.</small>
												</div>
											</div>
											<div class="dropdown-item d-flex">
												<div class="mr-3">
													<a href="#">
														<div class="avatar avatar-xs"
															style="width: 32px; height: 32px">
															<span class="avatar-title rounded-circle">JD</span>
														</div>
													</a>
												</div>
												<div class="flex">
													<a href="#">M???n Nhi</a> <small class="text-muted">nh???n
														b???n:</small><br />
													<div>Ch??o m???i ng?????i, vui l??ng l??u ?? cu???c h???n l??c 3
														gi??? chi???u</div>
													<small class="text-muted">2 ph??t tr?????c ????y</small>
												</div>
											</div>

											<div class="dropdown-item d-flex">
												<div class="mr-3">
													<div class="avatar avatar-sm"
														style="width: 32px; height: 32px">
														<img
															src="<c:url value="/assets/images/256_daniel-gaffey-1060698-unsplash.jpg"/>"
															alt="Avatar" class="avatar-img rounded-circle" />
													</div>
												</div>
												<div class="flex">
													<a href="">Tu???n</a> ???? b??nh lu???n trong <a href="">Stack</a><br />
													<small class="text-muted">1 ph??t tr?????c</small>
												</div>
											</div>
										</div>
									</div>
									<a href="javascript:void(0);"
										class="dropdown-item text-center navbar-notifications-menu__footer">
										View All </a>
								</div></li>
						</ul>

						<ul
							class="nav navbar-nav d-none d-sm-flex border-left navbar-border navbar-height align-items-center">
							<li class="nav-item dropdown"><a href="#account_menu"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								data-caret="false"> <span class="avatar avatar-sm"> <span
										class="avatar-title rounded-circle bg-warning"> Tu???n </span>
								</span>
							</a>
								<div id="account_menu" class="dropdown-menu dropdown-menu-right">
									<div class="dropdown-item-text dropdown-item-text--lh">
										<div>
											<strong>Thanh Tu???n</strong>
										</div>
										<div>@tuanphan</div>
									</div>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item active" href="dashboard.html">
										Dashboard </a> <a class="dropdown-item" href="profile.html">
										My profile </a> <a class="dropdown-item" href="account-edit.html">
										Edit account </a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="login.html">Logout</a>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- // END Header -->

		<!-- Header Layout Content -->
		<div class="mdk-header-layout__content page">
			<div class="page__header mb-0">
				<div class="container page__container">

					<!-- Default Navigation Bar -->
					<div
						class="navbar navbar-secondary navbar-light navbar-expand-sm p-0">
						<button class="navbar-toggler navbar-toggler-right"
							data-toggle="collapse" data-target="#navbarsExample03"
							type="button">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="navbar-collapse collapse" id="navbarsExample03">
							<ul class="nav navbar-nav flex">
								<li class="nav-item"><a class="nav-link active"
									href="dashboard.html"> Home</a></li>
								<li class="nav-item dropdown"><a href="#"
									class="nav-link dropdown-toggle" data-toggle="dropdown">
										Project </a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#"> Manage Project </a> <a
											class="dropdown-item" href="#"> Project Create Project </a>
									</div></li>
								<li class="nav-item dropdown"><a href="#"
									class="nav-link dropdown-toggle" data-toggle="dropdown">
										User </a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#"> User List </a> <a
											class="dropdown-item" href="#"> Create User </a>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="#">Task</a>
								</li>

							</ul>
						</div>
						<!-- // END Default Navigation Bar -->
					</div>
				</div>
			</div>

			<!-- Breadcrumb -->
			<div class="container page__heading-container">
				<div class="page__heading">
					<div class="d-flex align-items-center">
						<div>
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb mb-0">
									<li class="breadcrumb-item"><a
										href="<c:url value="<%=UrlUtil.URL_STACK_DASHBOARD%>"/>">DashBoard</a></li>
									<li class="breadcrumb-item"><a
										href="<c:url value="<%=UrlUtil.URL_STACK_DASHBOARD%>"/>">Task
											DashBoard</a></li>
								</ol>
							</nav>
							<h1 class="m-0">Add New Task</h1>
						</div>
						<div class="ml-auto">
							<a href="" class="btn btn-light"><i
								class="material-icons icon-16pt text-muted mr-1">settings</i>
								Settings </a>
						</div>
					</div>
				</div>
			</div>
			<!-- End Breadcrumb -->

			<div class="container page__container">
				<!-- Page Content -->
				<div class="card card-form">
					<div class="row no-gutters">

						<div class="col-lg-8 card-form__body card-body"
							style="margin-left: 150px">

							<form action="<c:url value ="<%=UrlUtil.URL_STACK_UPDATE%>" />"
								method="post">
								<div class="form-group">
								<label for="id">Id:</label> <input readonly value="${task.id}"
										type="text" class="form-control" name="id" id="id">
										 <label for="exampleInputEmail1">Your name:</label> <input
										type="text" class="form-control" name="name" id="name"
										value="${task.name}" placeholder="Enter your name">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Your Description:</label> <input
										type="text" class="form-control" id="description"
										name="description" value="${task.description}"
										>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Start_date:</label> <input
										type="date" min="1990-01-01" max="2050-12-31"
										class="form-control" id="start_date" name="start_date"
										value="${task.start_date}" placeholder="Enter start_date">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">End_date:</label> <input
										type="date" min="1990-01-01" max="2050-12-31"
										class="form-control" id="end_date" name="end_date"
										value="${task.end_date}" placeholder="Enter end_date">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Project Id:</label> <input
										type="text" class="form-control" id="project" name="project"
										readonly value="${task.projectId}">

								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Status Id:</label> <input
										class="form-control" id="status" name="status"
										readonly value="${task.statusId}">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">User Id:</label> <input
										class="form-control" id="user" name="user"
										readonly value="${task.userId}">
								</div>

								<button style="margin-left: 250px" type="submit"
									class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
				</div>
				<!-- // START SIDE DRAWER -->
				<div class="mdk-drawer js-mdk-drawer" id="default-drawer"
					data-align="start">
					<div class="mdk-drawer__content">
						<div class="sidebar sidebar-light sidebar-left"
							data-perfect-scrollbar>
							<div class="sidebar-heading sidebar-m-t">Menu</div>
							<ul class="sidebar-menu">
								<li class="sidebar-menu-item active"><a
									class="sidebar-menu-button" href="#"> <i
										class="sidebar-menu-icon sidebar-menu-icon--left material-icons">view_compact</i>
										<span class="sidebar-menu-text">Dashboard</span>
								</a></li>

								<li class="sidebar-menu-item"><a
									class="sidebar-menu-button" href="#"> <i
										class="sidebar-menu-icon sidebar-menu-icon--left material-icons">business_center</i>
										<span class="sidebar-menu-text">Project</span>
								</a></li>

								<li class="sidebar-menu-item"><a
									class="sidebar-menu-button" href="#"> <i
										class="sidebar-menu-icon sidebar-menu-icon--left material-icons">people</i>
										<span class="sidebar-menu-text">User</span>
								</a></li>
								<li class="sidebar-menu-item"><a
									class="sidebar-menu-button" href="#"> <i
										class="sidebar-menu-icon sidebar-menu-icon--left material-icons">report</i>
										<span class="sidebar-menu-text">Task</span>
								</a></li>
							</ul>

							<div class="sidebar-p-a sidebar-b-y">
								<div class="d-flex align-items-top mb-2">
									<div
										class="sidebar-heading m-0 p-0 flex text-body js-text-body">
										Progress</div>
									<div class="font-weight-bold text-success">60%</div>
								</div>
								<div class="progress">
									<div class="progress-bar bg-success" role="progressbar"
										style="width: 60%" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // END SIDE DRAWER -->

			</div>
			<!-- App Settings FAB -->
			<div id="app-settings" hidden>
				<app-settings layout-active="fixed"
					:layout-location="{
      'default': 'index.html',
      'fixed': 'dashboard.html',
      'fluid': 'fluid-dashboard.html',
      'mini': 'mini-dashboard.html'}">
				</app-settings>
			</div>
			<!-- jQuery -->
			<script src="<c:url value="/assets/vendor/jquery.min.js"/>"></script>

			<!-- Bootstrap -->
			<script src="<c:url value="/assets/vendor/popper.min.js"/>"></script>
			<script src="<c:url value="/assets/vendor/bootstrap.min.js"/>"></script>

			<!-- Perfect Scrollbar -->
			<script
				src="<c:url value="/assets/vendor/perfect-scrollbar.min.js"/>"></script>

			<!-- DOM Factory -->
			<script src="<c:url value="/assets/vendor/dom-factory.js"/>"></script>

			<!-- MDK -->
			<script src="<c:url value="/assets/vendor/material-design-kit.js"/>"></script>

			<!-- App -->
			<script src="<c:url value="/assets/js/toggle-check-all.js"/>"></script>
			<script src="<c:url value="/assets/js/check-selected-row.js"/>"></script>
			<script src="<c:url value="/assets/js/dropdown.js"/>"></script>
			<script src="<c:url value="/assets/js/sidebar-mini.js"/>"></script>
			<script src="<c:url value="/assets/js/app.js"/>"></script>

			<!-- App Settings (safe to remove) -->
			<script src="<c:url value="/assets/js/app-settings.js"/>"></script>

			<!-- Global Settings -->
			<script src="<c:url value="/assets/js/settings.js"/>"></script>

			<!-- Flatpickr -->
			<script
				src="<c:url value="/assets/vendor/flatpickr/flatpickr.min.js"/>"></script>
			<script src="<c:url value="/assets/js/flatpickr.js"/>"></script>

			<!-- jQuery Mask Plugin -->
			<script src="<c:url value="/assets/vendor/jquery.mask.min.js"/>"></script>

			<!-- Quill -->
			<script src="<c:url value="/assets/vendor/quill.min.js"/>"></script>
			<script src="<c:url value="/assets/js/quill.js"/>"></script>

			<!-- Dropzone -->
			<script src="<c:url value="/assets/vendor/dropzone.min.js"/>"></script>
			<script src="<c:url value="/assets/js/dropzone.js"/>"></script>

			<!-- Select2 -->
			<script src="<c:url value="/assets/vendor/select2/select2.min.js"/>"></script>
			<script src="<c:url value="/assets/js/select2.js"/>"></script>
</body>

</html>