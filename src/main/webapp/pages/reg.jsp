<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>请注册 - 快速记</title>

  <link rel="stylesheet" href="../res/layui/css/layui.css">
  <link rel="stylesheet" href="../res/css/global.css">
  <link rel="stylesheet" href="../res/css/cntl.css">
  <style>
    /* 整体页面背景设置为淡蓝色，营造清新的动漫氛围 */
    body {
      background-color: #e6f7ff;
      font-family: Arial, sans-serif;
    }

    /* 头部样式调整，让其更具动漫风格 */
    .fly-header.layui-bg-black {
      background-color: #1e90ff!important;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .fly-logo img {
      border-radius: 50%;
      transition: transform 0.3s ease;
    }

    .fly-logo img:hover {
      transform: rotate(360deg);
    }

    .layui-nav.fly-nav-user li.layui-nav-item a {
      color: white;
      transition: color 0.3s ease;
    }

    .layui-nav.fly-nav-user li.layui-nav-item a:hover {
      color: #add8e6;
    }

    /* 注册面板样式，添加圆角、阴影等使其像动漫里的卡片 */
    .register-panel {
      background-color: white;
      border-radius: 15px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
      padding: 20px;
      margin-top: 20px;
    }

    h2 {
      color: #009688;
      text-align: center;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
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

    /* 社交账号登录图标样式 */
    .iconfont {
      margin-left: 10px;
      font-size: 24px;
      color: #333;
      transition: color 0.3s ease;
    }

    .iconfont:hover {
      color: #009688;
    }

    .layui-form-mid {
      color: #696969;
    }
  </style>
</head>
<body>

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="showIndex.action">
      <img src="../res/images/logo.png" alt="快速记">
    </a>
    <ul class="layui-nav fly-nav-user">
      <li class="layui-nav-item">
        <a href="showUserLogin.action">登录一下啦</a>
      </li>
      <li class="layui-nav-item">
        <a href="showReg.action">快来注册呀</a>
      </li>
    </ul>
  </div>
</div>

<div class="layui-container">
  <div class="register-panel">
    <h2>开启奇妙之旅，创建新账户哟~</h2>
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title">
        <li><a href="showUserLogin.action">登录那边哦</a></li>
        <li class="layui-this">注册这里呀</li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <form class="layui-form" action="register.action" method="post">
            <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">电子邮箱</label>
              <div class="layui-input-inline">
                <input type="email" id="L_email" name="email" required lay-verify="required|email"
                       autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid">它会成为您超重要的登录名哦~</div>
            </div>
            <div class="layui-form-item">
              <label for="L_username" class="layui-form-label">可爱昵称</label>
              <div class="layui-input-inline">
                <input type="text" id="L_username" name="userName" required lay-verify="required"
                       autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-form-item">
              <label for="L_pass" class="layui-form-label">秘密口令</label>
              <div class="layui-input-inline">
                <input type="password" id="L_pass" name="password" required lay-verify="required"
                       autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid">6到16个字符就好啦~</div>
            </div>
            <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">再确认下口令</label>
              <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" required lay-verify="required"
                       autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-form-item">
              <button class="layui-btn" lay-filter="user-reg" lay-submit="">点此注册啦</button>
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

    // Register submit event
    form.on('submit(user-reg)', function (data) {
      let loader = layer.load();
      $.ajax({
        url: 'register.action',
        data: data.field,
        dataType: 'json',
        contentType: 'application/x-www-form-urlencoded',
        type: 'post',
        success: function (result) {
          if (result.code == 200) {
            layer.msg(result.info, {icon: 1, time: 1000}, function () {
              layer.close(loader);
              window.location.href = "main.action"; // Redirect after successful registration
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