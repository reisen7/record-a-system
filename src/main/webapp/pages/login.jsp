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
        body {
            background: #0f172a;
            color: #e2e8f0;
            font-family: 'Arial', sans-serif;
        }
        .fly-header {
            background-color: #1e293b;
        }
        .fly-logo img {
            height: 50px;
        }
        .layui-container {
            padding-top: 50px;
        }
        .login-panel {
            background: #1e293b;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 2rem;
            margin-top: 5rem;
            height: 500px;
        }
        .login-panel h2 {
            color: #6366f1;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        .layui-input-block input {
            background-color: #2d3748;
            border: none;
            border-radius: 0.5rem;
            color: #e2e8f0;
        }
        .layui-btn {
            background-color: #6366f1;
            border-radius: 2rem;
            transition: all 0.3s ease-in-out;
        }
        .layui-btn:hover {
            background-color: #4f46e5;
        }
        .fly-footer {
            background-color: #0f172a;
            color: #e2e8f0;
            text-align: center;
            padding: 1rem;
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
        <h2>欢迎回来</h2>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登录</li>
                <li><a href="showReg.action">注册</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <form class="layui-form" action="login.action" method="post">
                        <div class="layui-form-item">
                            <label for="L_email" class="layui-form-label">邮箱</label>
                            <div class="layui-input-block">
                                <input type="email" id="L_email" name="account" required lay-verify="email" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_pass" class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" id="L_pass" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="user-login">立即登录</button>
                            <span style="padding-left:20px;">
                <a href="forget.html">忘记密码？</a>
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