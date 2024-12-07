<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>记一笔</title>

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
      
      	
      	
      	  <!-- 登入后的状态 -->
	      
	      <li class="layui-nav-item">
	        <a class="fly-nav-avatar"  href="javascript:;">
	          <cite class="layui-hide-xs">Andy</cite>
	          <i class="iconfont icon-renzheng layui-hide-xs" title=""></i>
	          <i class="layui-badge fly-badge-vip layui-hide-xs">VIP1</i>
	        </a>
	        <dl class="layui-nav-child">
<%--	          <dd><a href="user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>--%>
<%--	          <dd><a href="user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>--%>
<%--	          <dd><a href="main"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>--%>
<%--	          <hr style="margin: 5px 0;">--%>
<%--	          <dd><a href="logout" style="text-align: center;">退出</a></dd>--%>
	        </dl>
	      </li>
	    
      	
      
      
    </ul>
  </div>
</div>

<div class="layui-container fly-marginTop">
  <div class="fly-panel" pad20 style="padding-top: 5px;">
    <!--<div class="fly-none">没有权限</div>-->
    <div class="layui-form layui-form-pane">
      <div class="layui-tab layui-tab-brief" lay-filter="user">
        <ul class="layui-tab-title">
          <li class="layui-this">支出</li>
          <li><a href="add2.action">收入</a></li>
        </ul>
        <div class="layui-form layui-tab-content" id="zhichu" style="padding: 20px 0;">
          <div class="layui-tab-item layui-show">
            <form class="layui-form">
              <input type="hidden" name="type" value="2"> 
              <div class="layui-row layui-col-space15 layui-form-item">
              	 <div class="layui-col-md6">
                  <label class="layui-form-label">支出金额</label>
                  <div class="layui-input-block">
                   <input type="text" id="L_title" name="money" required lay-verify="required|number" autocomplete="off" class="layui-input">
                  </div>
                </div>
                <div class="layui-col-md3">
                  <label class="layui-form-label">支出类别</label>
                  <div class="layui-input-block">
                    <select lay-verify="required" name="cid" lay-filter="column"> 
                      <option></option>
                      		<option value="1">交通</option>
                      		<option value="2">电影</option>
                      		<option value="3">早餐</option>
                      		<option value="4">午餐</option>
                      		<option value="5">晚餐</option>
                      		<option value="6">娱乐</option>
                            <option value="7">教育</option>
                      		<option value="8">旅游</option> 
   <option value="9">购物</option> 
   <option value="10">油费</option> 
   <option value="11">宠物</option> 
   <option value="12">看病</option> 
   <option value="13">饮料</option> 
   <option value="14">礼物</option> 
   <option value="15">其他</option>
                    </select>
                  </div>
                </div>
                <div class="layui-col-md3">
                  <label for="L_title" class="layui-form-label">发生日期</label>
                  <div class="layui-input-block">
                    <input  type="text" class="layui-input" id="test5" name="addTime" placeholder="yyyy-MM-dd HH:mm:ss">
                  </div>
                </div>
              </div>
                <input style="display: none" type="text" id="type" name="type" value="2" hidden>
              <div class="layui-form-item layui-form-text">
                <div class="layui-input-block">
                  <textarea id="L_content" name="details" required lay-verify="required"  placeholder="详细描述" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
                </div>
              </div>
          
              <div class="layui-form-item">
                <button class="layui-btn" lay-filter="user-add" lay-submit="">记一笔</button>
              </div>
            </form>
          </div>
          
           
        </div>
      </div>
    </div>
  </div>
</div>


<div class="fly-footer">
  <p> 2024 &copy; </p>
</div>

<script src="../res/layui/layui.js"></script>
<script>
layui.config({
	  version: "3.0.0"
	  ,base: '../res/mods/'
	}).extend({
	  fly: 'index'
	}).use('fly');
</script>

<script>
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
layui.use(['laydate','form','jquery'], function(){
	  var laydate = layui.laydate;
	  laydate.render({
		   elem: '#test5'
		   ,type: 'datetime'
	  });
    let form = layui.form;
    let $ = layui.jquery;
    form.on('submit(user-add)', function (data) {
        let loader = layer.load();
        $.ajax({
            url: '/AccountBook-V2/userController/addNew.action',
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

	 
});
</script>
</body>
</html>