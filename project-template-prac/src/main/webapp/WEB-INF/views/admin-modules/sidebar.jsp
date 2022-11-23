<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Sidebar.html -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-category">Main</li>
		<li class="nav-item">
			<a class="nav-link" href="admin1">
				<span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
				<span class="menu-title">Dashboard</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="fixedSpend">
				<span class="icon-bg"><i class="mdi mdi-cash-multiple menu-icon"></i></span>
				<span class="menu-title">고정 지출</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="workerInfo">
				<span class="icon-bg"><i class="mdi mdi-contacts menu-icon"></i></span>
				<span class="menu-title">직원</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#raw-order" aria-expanded="false" aria-controls="raw-order">
				<span class="icon-bg"><i class="mdi mdi-cart menu-icon"></i></span>
				<span class="menu-title">주문 관리</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="raw-order">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="raw-order">주문입력</a></li>
					<li class="nav-item"><a class="nav-link" href="rawOrdered">주문내역 조회</a></li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="admincheckorder">
				<span class="icon-bg"><i class="mdi mdi-chart-bar menu-icon"></i></span>
				<span class="menu-title">주문 내역 확인</span>
			</a>
		</li>		
		<li class="nav-item">
			<a class="nav-link" href="accountControl">
				<span class="icon-bg"><i class="mdi mdi-table-large menu-icon"></i></span>
				<span class="menu-title">유저 계정 관리</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="kioskMain">
				<span class="icon-bg"><i class="mdi mdi-table-large menu-icon"></i></span>
				<span class="menu-title">KIOSK</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="home">
				<span class="icon-bg"><i class="mdi mdi-lock menu-icon"></i></span>
				<span class="menu-title">User Pages</span>
			</a>
		</li>
		<br><br>
		<li class="nav-item sidebar-user-actions">
			<div class="sidebar-user-menu">
				<a href="logout" class="nav-link">
					<i class="mdi mdi-logout menu-icon"></i>
					<span class="menu-title">Log Out</span>
				</a>
			</div>
		</li>
	</ul>
</nav>
<!-- ./Sidebar -->
