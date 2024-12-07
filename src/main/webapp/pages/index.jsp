<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>快速记 记下明白生活</title>

<link rel="stylesheet" href="../res/layui/css/layui.css">
<link rel="stylesheet" href="../res/css/global.css">
<link rel="stylesheet" href="../res/css/cntl.css">
    <style>
        /* 通用样式 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* 头部样式 */
        .header {
            background-color: #000;
            color: #fff;
            padding: 20px 0;
        }

        .logo {
            display: inline-block;
            vertical-align: middle;
        }

        .nav {
            float: right;
        }

        .nav ul {
            list-style: none;
        }

        .nav ul li {
            display: inline-block;
            margin-left: 20px;
        }

        .nav ul li a {
            color: #fff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .nav ul li a:hover {
            color: #ccc;
        }

        .social-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: #333;
            color: #fff;
            margin-left: 5px;
        }

        /* 主体内容区域样式 */
        .main-content {
            padding: 80px 0;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }

        .feature-item {
            text-align: center;
        }

        .feature-image {
            width: 100px;
            height: 100px;
            margin-bottom: 20px;
        }

        .feature-text h2 {
            color: #5F90D0;
            margin-bottom: 10px;
        }

        .feature-text p {
            color: #949494;
        }

        /* 页脚样式 */
        .footer {
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px 0;
        }

    </style>
</head>
<body>

<!-- 头部导航栏 -->
<header class="header">
    <div class="container">
        <a href="showIndex.action" class="logo">
            <img src="../res/images/logo.png" alt="layui">
        </a>
        <nav class="nav">
            <ul>
                <li><a href="login.html">登入</a></li>
                <li><a href="showReg.action">注册</a></li>
                <li><a href="#" class="social-icon" onclick="showLoginMsg('QQ')"><i class="fab fa-qq"></i> QQ登入</a></li>
                <li><a href="#" class="social-icon" onclick="showLoginMsg('微博')"><i class="fab fa-weibo"></i> 微博登入</a></li>
            </ul>
        </nav>
    </div>
</header>

<!-- 主体内容区域 -->
<main class="main-content">
    <div class="container">
        <section class="features">
            <div class="feature-item">
                <img src="../res/images/a4.png" alt="书本" class="feature-image">
                <div class="feature-text">
                    <h2>告别账本烦恼</h2>
                    <p>联网即可随时随地通过浏览器免费记账，轻松又便捷。</p>
                </div>
            </div>
            <div class="feature-item">
                <img src="../res/images/a1.png" alt="相关图标" class="feature-image">
                <div class="feature-text">
                    <h2>大账目轻松应对</h2>
                    <p>减轻计算压力，让记账过程更加从容不迫。</p>
                </div>
            </div>
            <div class="feature-item">
                <img src="../res/images/a2.png" alt="相关图标" class="feature-image">
                <div class="feature-text">
                    <h2>便捷查看账目</h2>
                    <p>支持Excel导出，方便你随时查看和管理账目信息。</p>
                </div>
            </div>
            <div class="feature-item">
                <img src="../res/images/a3.png" alt="相关图标" class="feature-image">
                <div class="feature-text">
                    <h2>数据安全保障</h2>
                    <p>采用特殊加密算法进行数据传输，为你的数据安全保驾护航，值得信赖。</p>
                </div>
            </div>
        </section>
    </div>
</main>

<!-- 页脚（可根据需要添加） -->
<footer class="footer">
    <div class="container">
        <p>&copy; 2024 Your Company Name. All rights reserved.</p>
    </div>
</footer>


<%--<div class="fly-header layui-bg-black">--%>
<%--  <div class="layui-container">--%>
<%--    <a class="fly-logo" href="showIndex.action">--%>
<%--      <img src="../res/images/logo.png" alt="layui">--%>
<%--    </a>--%>
<%--    --%>
<%--    <ul class="layui-nav fly-nav-user">--%>
<%--      --%>
<%--      	--%>
<%--      	  <!-- 未登入的状态 -->--%>
<%--	      <li class="layui-nav-item">--%>
<%--	        <a class="iconfont icon-touxiang layui-hide-xs" href="login.html"></a>--%>
<%--	      </li>--%>
<%--	      <li class="layui-nav-item">--%>
<%--	        <a href="showUserLogin.action">登入</a>--%>
<%--	      </li>--%>
<%--	      <li class="layui-nav-item">--%>
<%--	        <a href="showReg.action">注册</a>--%>
<%--	      </li>--%>
<%--	      <li class="layui-nav-item layui-hide-xs">--%>
<%--	        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>--%>
<%--	      </li>--%>
<%--	      <li class="layui-nav-item layui-hide-xs">--%>
<%--	        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>--%>
<%--	      </li>--%>
<%--      	--%>
<%--      	--%>
<%--      --%>
<%--      --%>
<%--    </ul>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<div class="layui-container">--%>
<%--<div class="layui-row">--%>


<%--    <div class="cntl">--%>
<%--			<span class="cntl-bar cntl-center">--%>
<%--				<span class="cntl-bar-fill"></span>--%>
<%--			</span>--%>

<%--        <div class="cntl-states">--%>

<%--            <div class="cntl-state">--%>
<%--                <div class="cntl-content">--%>
<%--                    <h2 style="color: #5F90D0;">还在为携带账本烦恼？</h2>--%>
<%--                    <h3 style="color: #949494;">现在只需要连接网络，打开浏览器，便可以随时随地进行记账</h3>--%>
<%--                    <h4 style="color: #949494;">当然，我们是<span style="font-size: 1.2em;color: #67b168;">免费</span>的</h4>--%>
<%--                </div>--%>

<%--                <div class="cntl-image"><img src="../res/images/a4.png" alt="书本" class="img-responsive"--%>
<%--                                             draggable="false"></div>--%>
<%--                <div class="cntl-icon cntl-center">欢</div>--%>
<%--            </div>--%>

<%--            <div class="cntl-state">--%>
<%--                <div class="cntl-content">--%>
<%--                    <h2 style="color: #5F90D0;">大账目轻松计算！</h2>--%>
<%--                    <h3 style="color: #949494;">减轻你的计算压力。</h3>--%>
<%--                    <h4 style="color: #949494;">让记账更从容。</h4>--%>
<%--                </div>--%>

<%--                <div class="cntl-image"><img src="../res/images/a1.png" class="img-responsive"--%>
<%--                                             draggable="false"></div>--%>
<%--                <div class="cntl-icon cntl-center">迎</div>--%>
<%--            </div>--%>

<%--            <div class="cntl-state">--%>
<%--                <div class="cntl-content">--%>
<%--                    <h2 style="color: #5F90D0;">担心查看？</h2>--%>
<%--                    <h3 style="color: #949494;">没问题，我们帮你准备了Excel导出。</h3>--%>
<%--                </div>--%>

<%--                <div class="cntl-image"><img src="../res/images/a2.png" class="img-responsive"--%>
<%--                                             draggable="false"></div>--%>
<%--                <div class="cntl-icon cntl-center">您</div>--%>
<%--            </div>--%>

<%--            <div class="cntl-state">--%>
<%--                <div class="cntl-content">--%>
<%--                    <h2 style="color: #5f90d0;">还在担心安全？</h2>--%>
<%--                    <h3 style="color: #949494;">我们使用了特殊加密算法，进行数据传输</h3>--%>
<%--                    <h4 style="color: #949494;">我们，值得信赖！</h4>--%>
<%--                </div>--%>

<%--                <div class="cntl-image"><img src="../res/images/a3.png" class="img-responsive"--%>
<%--                                             draggable="false"></div>--%>
<%--                <div class="cntl-icon cntl-center">·</div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</div>--%>



<script src="../res/layui/layui.js"></script>
<script>
layui.config({
	  version: "3.0.0"
	  ,base: '../res/mods/'
	}).extend({
	  fly: 'index'
	}).use('fly');
</script>

<script type="text/javascript">
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: '../res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>
</body>
</html>