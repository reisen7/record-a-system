<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>快速记 - 科技生活，清晰账本</title>
    <!-- 引入Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.3.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="../res/css/global.css">
    <link rel="stylesheet" href="../res/css/cntl.css">
    <style>
        body {
            background: #7591d3;
            color: #e2e8f0;
        }
        .navbar {
            background-color: #b3c4e0;
        }
        .feature-card {
            background: #1e293b;
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 0 0 20px rgba(0, 0,0, 0.2);
            transition: transform 0.3s ease-in-out;
        }
        .feature-card:hover {
            transform: translateY(-10px);
        }
        .feature-image img {
            width: 100%;
            height: auto;
            border-radius: 1rem;
            transition: all 0.3s ease;
        }
        .feature-image img:hover {
            opacity: 0.8;
        }
        .footer {
            color: #e2e8f0;
        }
        .btn-custom {
            background-color: #6366f1;
            color: white;
            border-radius: 2rem;
        }
        .btn-custom:hover {
            background-color: #4f46e5;
        }
    </style>
</head>

<body>
<!-- 导航栏部分 -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="showIndex.action">
            <img src="../res/images/logo.png" alt="Logo" height="30">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login.html"><i class="fas fa-user-circle"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="showUserLogin.action">登录</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="showReg.action">注册</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 主体内容部分 -->
<div class="container mt-5 pt-5">
    <div class="row text-center">
        <div class="col-lg-12 mb-4">
            <h1 class="display-4 fw-bold">快速记 - 让您的生活更简单</h1>
            <p class="lead">免费在线账本服务，安全可靠，随时访问。</p>
        </div>
    </div>
    <div class="row g-4">
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a4.png" alt="书本" class="img-fluid rounded">
                </div>
                <h3>随时随地记账</h3>
                <p>只需网络连接和浏览器，轻松管理个人财务。</p>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a1.png" alt="计算" class="img-fluid rounded">
                </div>
                <h3>智能计算</h3>
                <p>简化复杂计算，让财务管理变得轻松。</p>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a2.png" alt="导出" class="img-fluid rounded">
                </div>
                <h3>Excel导出</h3>
                <p>方便查看历史记录，支持导出到Excel。</p>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a3.png" alt="安全" class="img-fluid rounded">
                </div>
                <h3>数据安全</h3>
                <p>采用高级加密技术，确保您的信息安全。</p>
            </div>
        </div>
    </div>
</div>

<!-- 页脚部分 -->
<footer class="footer py-4">
    <div class="container text-center">
        <p>&copy; 2024 Your Company Name. All rights reserved.</p>
    </div>
</footer>

<!-- 引入相关的JavaScript文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../res/layui/layui.js"></script>
<script>
    layui.config({
        version: "3.0.0",
        base: '../res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>
</body>

</html>