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
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../res/css/global.css">
    <link rel="stylesheet" href="../res/css/cntl.css">
    <style>
        /* 整体页面背景设置为淡粉色，营造温馨的动漫氛围 */
        body {
            background-color: #ffe4e1;
            font-family: Arial, sans-serif;
        }

        /* 导航栏动漫风格调整 */
        nav.navbar {
            background-color: #ff69b4;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand img {
            border-radius: 50%;
            transition: transform 0.3s ease;
        }

        .navbar-brand img:hover {
            transform: rotate(360deg);
        }

        .navbar-toggler {
            border-color: white;
        }

        .navbar-nav.nav-link {
            color: white;
            transition: color 0.3s ease;
        }

        .navbar-nav.nav-link:hover {
            color: #ffb6c1;
        }

        /* 主体内容部分的标题样式 */
        h1.display-4 {
            color: #8b008b;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        /* 主体内容的段落文字样式 */
        p.lead {
            color: #696969;
        }

        /* 功能卡片的整体样式，类似动漫里的卡片效果 */
        .feature-card {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
        }

        .feature-image img {
            border-radius: 10px;
        }

        .feature-card h3 {
            color: #8b008b;
            margin-top: 10px;
        }

        .feature-card p {
            color: #696969;
        }

        /* 页脚部分样式 */
        footer.footer {
            background-color: #ff69b4;
            color: white;
        }

        footer.footer p {
            margin-bottom: 0;
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
                    <a class="nav-link" href="showUserLogin.action">登录一下啦</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="showReg.action">快来注册呀</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 主体内容部分 -->
<div class="container mt-5 pt-5">
    <div class="row text-center">
        <div class="col-lg-12 mb-4">
            <h1 class="display-4 fw-bold">快速记 - 开启超便利生活咯</h1>
            <p class="lead">超棒的免费在线账本服务呀，超安全可靠哒，随时都能访问哦。</p>
        </div>
    </div>
    <div class="row g-4">
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a4.png" alt="书本" class="img-fluid rounded">
                </div>
                <h3>随时随地快乐记账</h3>
                <p>只要有网络连接和浏览器，就能轻松管理个人财务啦。</p>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a1.png" alt="计算" class="img-fluid rounded">
                </div>
                <h3>超智能计算哟</h3>
                <p>把复杂计算变得超简单，财务管理轻松又愉快呢。</p>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a2.png" alt="导出" class="img-fluid rounded">
                </div>
                <h3>便捷Excel导出呀</h3>
                <p>方便查看历史记录哦，还能导出到Excel呢。</p>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="feature-card">
                <div class="feature-image mb-3">
                    <img src="../res/images/a3.png" alt="安全" class="img-fluid rounded">
                </div>
                <h3>超强数据安全保障</h3>
                <p>用高级加密技术，守护您的信息安全哒。</p>
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