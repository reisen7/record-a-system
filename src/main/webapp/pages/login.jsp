<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>请登入</title>

<link rel="stylesheet" href="../res/layui/css/layui.css">
<link rel="stylesheet" href="../res/css/global.css">
<link rel="stylesheet" href="../res/css/cntl.css">
</head>
<body>


<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="showIndex.action">
      <img src="../res/images/logo.png" alt="layui">
    </a>
    
    <ul class="layui-nav fly-nav-user">
      
      	
      	  <!-- 未登入的状态 -->
	      <li class="layui-nav-item">
	        <a class="iconfont icon-touxiang layui-hide-xs" href="login.jsp"></a>
	      </li>
        <li class="layui-nav-item">
            <a href="showUserLogin.action">登入</a>
        </li>
        <li class="layui-nav-item">
            <a href="showReg.action">注册</a>
        </li>
<%--	      <li class="layui-nav-item layui-hide-xs">--%>
<%--	        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>--%>
<%--	      </li>--%>
<%--	      <li class="layui-nav-item layui-hide-xs">--%>
<%--	        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>--%>
<%--	      </li>--%>
      	
      	
      
      
    </ul>
  </div>
</div>
<div class="layui-container fly-marginTop">
  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title">
        <li class="layui-this">登入</li>
        <li><a href="showReg.action">注册</a></li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form class="layui-form">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_email" name="account" required lay-verify="email" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_pass" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
             
              <div class="layui-form-item">
                <button class="layui-btn" lay-submit="" lay-filter="user-login">立即登录</button>
                <span style="padding-left:20px;">
                  <a href="forget.html">忘记密码？</a>
                </span>
              </div>
              <div class="layui-form-item fly-form-app">
<%--                <span>或者使用社交账号登入</span>--%>
<%--                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>--%>
<%--                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>--%>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="fly-footer">
  <p><a href="" target="_blank"></a> 2024 &copy; <a href="" target="_blank">your comcapy 出品</a></p>
</div>

<script src="../res/layui/layui.js"></script>
<script>
layui.config({
	  version: "3.0.0"
	  ,base: '../res/mods/'
	}).extend({
	  fly: 'index'
	}).use('fly');
layui.use(['form','jquery'], function () {
  let form = layui.form;
  let $ = layui.jquery;

  //保存
  form.on('submit(user-login)', function (data) {
    let loader = layer.load();
    $.ajax({
      url: '/AccountBook-V2/userController/login.action',
      data: data.field,
      dataType: 'json',
      contentType: 'application/x-www-form-urlencoded',
      type: 'post',
      success: function (result) {
        if (result.code==200) {
          layer.msg(result.info, {icon: 1, time: 1000}, function () {
            layer.close(loader);
            window.location.href="main.action";
          });
        } else {
          layer.msg(result.info, {icon: 2, time: 1000});
          layer.close(loader);
        }
      }
    })
    return false;
  });


})
</script>



</body>
</html>