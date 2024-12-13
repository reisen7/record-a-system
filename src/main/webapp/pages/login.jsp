<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>请登录 - 快速记</title>
    <link rel="stylesheet" href="../res/layui/css/layui.css">
    <link rel="stylesheet" href="../res/css/global.css">
    <link rel="stylesheet" href="../res/css/cntl.css">
    <style>
        /* 整体页面背景设置为一个淡淡的动漫风颜色，比如淡蓝色 */
        body {
            background-color: #e6f7ff;
            font-family: Arial, sans-serif;
        }

        /* 登录面板样式，添加一些圆角、阴影，使其看起来更像动漫里的卡片 */
        .login-panel {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        /* 标题文字的动漫风格调整，比如改变字体颜色、添加一些动画效果（这里只是简单示例，hover时变色） */
        h2 {
            color: #009688;
            text-align: center;
            transition: color 0.3s ease;
        }

        h2:hover {
            color: #00b894;
        }

        /* 选项卡标题样式，动漫风格的颜色和鼠标悬停效果 */
        .layui-tab-title li {
            color: #333;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .layui-tab-title li:hover {
            color: #009688;
        }

        .layui-tab-title.layui-this {
            color: #009688;
            font-weight: bold;
        }

        /* 表单输入框的动漫风格，比如改变边框颜色、添加圆角等 */
        .layui-input {
            border-color: #009688;
            border-radius: 8px;
        }

        /* 按钮的动漫风格，改变颜色、添加圆角、悬停效果等 */
        .layui-btn {
            background-color: #009688;
            color: white;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .layui-btn:hover {
            background-color: #00b894;
        }

        /* 忘记密码链接的样式，改变颜色、添加下划线悬停效果等 */
        a {
            color: #009688;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #00b894;
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="fly-header">
    <div class="layui-container">
        <a class="fly-logo" href="showIndex.action">
            <img src="../res/images/logo.png" alt="快速记">
        </a>
        <ul class="layui-nav fly-nav-user">
            <li class="layui-nav-item">
                <a href="showUserLogin.action">登录</a>
            </li>
            <li class="layui-nav-item">
                <a href="showReg.action">注册</a>
            </li>
        </ul>
    </div>
</div>

<div class="layui-container">
    <div class="login-panel">
        <h2>嘿，伙伴！欢迎回来呀~</h2>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登录啦</li>
                <li><a href="showReg.action">注册哟</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <form class="layui-form" action="login.action" method="post">
                        <div class="layui-form-item">
                            <label for="L_email" class="layui-form-label">电子邮箱</label>
                            <div class="layui-input-block">
                                <input type="email" id="L_email" name="account" required lay-verify="email"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_pass" class="layui-form-label">秘密口令</label>
                            <div class="layui-input-block">
                                <input type="password" id="L_pass" name="password" required lay-verify="required"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="user-login">点此登录</button>
                            <span style="padding-left: 20px;">
                                    <a href="forget.html">忘了口令？</a>
                                </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">

</div>

<script src="../res/layui/layui.js"></script>
<script>
    layui.config({
        version: "3.0.0",
        base: '../res/mods/'
    }).extend({
        fly: 'index'
    }).use(['form', 'jquery'], function () {
        let form = layui.form;
        let $ = layui.jquery;

        form.on('submit(user-login)', function (data) {
            let loader = layer.load();
            $.ajax({
                url: 'login.action',
                data: data.field,
                dataType: 'json',
                contentType: 'application/x-www-form-urlencoded',
                type: 'post',
                success: function (result) {
                    if (result.code == 200) {
                        layer.msg(result.info, {icon: 1, time: 1000}, function () {
                            layer.close(loader);
                            window.location.href = "main.action";
                        });
                    } else {
                        layer.msg(result.info, {icon: 2, time: 1000});
                        layer.close(loader);
                    }
                }
            })
            return false;
        });
    });
</script>
</body>
</html>