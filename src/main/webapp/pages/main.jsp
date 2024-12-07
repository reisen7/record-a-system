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
	          <dd><a href="user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
	          <dd><a href="user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
	          <dd><a href="main"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
	          <hr style="margin: 5px 0;">
	          <dd><a href="logout" style="text-align: center;">退出</a></dd>
	        </dl>
	      </li>
	    
      	
      
      
    </ul>
  </div>
</div>


<div class="fly-panel fly-column">
  <div class="layui-container">
    <ul class="layui-clear">
      <li class="layui-hide-xs layui-this"><a href="main.action">主页</a></li>
      
      	 <li><a href="main.action?cid=1">交通</a></li>
      
      	 <li><a href="main.action?cid=2">电影</a></li>
      
      	 <li><a href="main.action?cid=3">早餐</a></li>
      
      	 <li><a href="main.action?cid=4">午餐</a></li>
      
      	 <li><a href="main.action?cid=5">晚餐</a></li>
      
      	 <li><a href="main.action?cid=6">娱乐</a></li>
      
      	 <li><a href="main.action?cid=7">教育</a></li>
      
      	 <li><a href="main.action?cid=8">旅游</a></li>
      
      	 <li><a href="main.action?cid=9">购物</a></li>
      
      	 <li><a href="main.action?cid=10">油费</a></li>
      
      	 <li><a href="main.action?cid=11">宠物</a></li>
      
      	 <li><a href="main.action?cid=12">看病</a></li>
      
      	 <li><a href="main.action?cid=13">饮料</a></li>
      
      	 <li><a href="main.action?cid=14">礼物</a></li>
      
      	 <li><a href="main.action?cid=15">其他</a></li>
      
      	 <li><a href="main.action?cid=16">工资</a></li>
      
      	 <li><a href="main.action?cid=17">额外收入</a></li>
      
      	 <li><a href="main.action?cid=18">零碎收入</a></li>
      
    </ul> 
    
    <div class="fly-column-right layui-hide-xs"> 
      <span class="fly-search"><i class="layui-icon"></i></span> 
      <a href="add.action" class="layui-btn">记一笔</a>
    </div> 
  
  </div>
</div>

<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md12">
      <div class="fly-panel" style="margin-bottom: 0;">
        
        <div class="fly-panel-title fly-filter">
          <span id="zhichu" >支出</span>
          <span class="fly-mid"></span>
          <span id="shouru">收入</span>
         
          <span class="fly-filter-right layui-hide-xs">
            <a href="main?order=time" class="layui-this">时间</a>
            <span class="fly-mid"></span>
            <a href="main?order=money">金额</a>
          </span>
        </div>

        <ul class="fly-list">  
<%--			<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_doprava_1.png" alt="交通">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">交通</a>--%>
<%--		              <a href="jie/detail.html">打车费用</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2019-01-14 08:00:00</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge layui-bg-red">50.00</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>
<%-- 	<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_doprava_1.png" alt="交通">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">交通</a>--%>
<%--		              <a href="jie/detail.html">周末回家路费</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-21 15:27:26</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge layui-bg-red">88.50</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>
<%-- 	<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_movies_1.png" alt="电影">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">电影</a>--%>
<%--		              <a href="jie/detail.html">情人节陪女朋友看电影</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-21 14:42:56</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge layui-bg-red">50.20</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>

<%--         	 	<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_penize_1.png" alt="额外收入">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">额外收入</a>--%>
<%--		              <a href="jie/detail.html">兼职收入</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-21 14:40:07</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge fly-badge-accept">888.50</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>

<%--         		<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_food_1.png" alt="午餐">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">午餐</a>--%>
<%--		              <a href="jie/detail.html">中午吃饭</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-21 14:34:31</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge layui-bg-red">10.50</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>
<%-- 	<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_food_1.png" alt="午餐">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">午餐</a>--%>
<%--		              <a href="jie/detail.html">中午吃饭</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-21 14:34:31</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge layui-bg-red">10.50</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>
<%-- 	<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_food_1.png" alt="午餐">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">午餐</a>--%>
<%--		              <a href="jie/detail.html">中午吃饭</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-21 14:34:31</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge layui-bg-red">10.50</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>
  
<%--         	 	<li>--%>
<%--		            <a href="#" class="fly-avatar">--%>
<%--		              <img src="../res/images/cat/cat_bills_1.png" alt="工资">--%>
<%--		            </a>--%>
<%--		            <h2>--%>
<%--		              <a class="layui-badge">工资</a>--%>
<%--		              <a href="jie/detail.html">工资</a>--%>
<%--		            </h2>--%>
<%--		            <div class="fly-list-info">--%>
<%--		              <span>2018-12-05 00:03:03</span>--%>
<%--		            </div>--%>
<%--		            <div class="fly-list-badge">--%>
<%--		              <span class="layui-badge fly-badge-accept">5018.00</span>--%>
<%--		            </div>--%>
<%--		          </li>--%>

			<input style="display: none" type="text" id="cid" value="${cid}" /> -
			<input style="display: none" type="text" id="type" value="${type}" />

        </ul>
      </div>
    </div>

  </div>
</div>


<div class="fly-footer">
  <p><a href="http://www.xintoucloud.com" target="_blank">新投云</a> 2017 &copy; <a href="http://www.xintoucloud.com" target="_blank">xintoucloud.com 出品</a></p>
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
});
layui.use(['laydate','form','jquery'], function(){
	var laydate = layui.laydate;
	let form = layui.form;
	let $ = layui.jquery;

	function fundquert(parameters) {
		var cid = $("#cid").val()
		var type = '2';
		$('ul.fly-list li').remove();
		$.ajax({
			url: 'list.action?cid='+cid+'&type=' + type,
			type: 'post',
			success: function (res) {
				if (res.code == 200){
					var data = res.data;
					$('.fly-panel.fly-column.layui-clear li').removeClass("layui-hide-xs layui-this");
					// var targetLi = document.querySelectorAll('.fly-panel.fly-column.layui-clear li')[1];
					// 添加新的class
					console.log(cid)
					$("ul.layui-clear li").eq(cid).addClass("layui-hide-xs layui-this");
					// targetLi.classList.add('layui-hide-xs layui-this');

					//渲染数据
					for (var i = 0; i < data.length; i++) {

						var outgoing = '<span class="layui-badge layui-bg-red">'
						var incoming = '<span class="layui-badge fly-badge-accept">'
						var div;
						if (data[i].type == '2'){
							div = outgoing
						}else{
							div = incoming;
						}
						var png
						if (data[i].cid == '1'){
							png = '<img src="../res/images/cat/cat_bills_1.png" alt="工资">'
						}else if(data[i].cid == '2'){
							png = '<img src="../res/images/cat/cat_car_1.png" alt="工资">'
						}else if(data[i].cid == '3'){
							png = '<img src="../res/images/cat/cat_doprava_1.png" alt="工资">'
						}else if(data[i].cid == '4'){
							png = '<img src="../res/images/cat/cat_drink_1.png" alt="工资">'
						}else if(data[i].cid == '5'){
							png = '<img src="../res/images/cat/cat_entern_1.png" alt="工资">'
						}else if(data[i].cid == '6'){
							png = '<img src="../res/images/cat/cat_food_1.png" alt="工资">'
						}else if(data[i].cid == '7'){
							png = '<img src="../res/images/cat/cat_gift_1.png" alt="工资">'
						}else if(data[i].cid == '8'){
							png = '<img src="../res/images/cat/cat_health_1.png" alt="工资">'
						}else if(data[i].cid == '9'){
							png = '<img src="../res/images/cat/cat_hotel_1.png" alt="工资">'
						}else if(data[i].cid == '10'){
							png = '<img src="../res/images/cat/cat_house_1.png" alt="工资">'
						}else if(data[i].cid == '11'){
							png = '<img src="../res/images/cat/cat_love_1.png" alt="工资">'
						}else if(data[i].cid == '12'){
							png = '<img src="../res/images/cat/cat_money_1.png" alt="工资">'
						}else if(data[i].cid == '13'){
							png = '<img src="../res/images/cat/cat_movies_1.png" alt="工资">'
						}else if(data[i].cid == '14'){
							png = '<img src="../res/images/cat/cat_music_1.png" alt="工资">'
						}else if(data[i].cid == '15'){
							png = '<img src="../res/images/cat/cat_nakup_1.png" alt="工资">'
						}else if(data[i].cid == '16'){
							png = '<img src="../res/images/cat/cat_otaznik_1.png" alt="工资">'
						}else if(data[i].cid == '17'){
							png = '<img src="../res/images/cat/cat_penize_1.png" alt="工资">'
						}else if(data[i].cid == '18'){
							png = '<img src="../res/images/cat/cat_personal_1.png" alt="工资">'
						}

						var date = new Date(data[i].addTime);
						// 获取年、月、日、时、分、秒等信息，并进行格式化处理，以下示例几种常见格式

						// 格式化为 "yyyy-MM-dd" 格式
						var year = date.getFullYear();
						var month = ('0' + (date.getMonth() + 1)).slice(-2);
						var day = ('0' + date.getDate()).slice(-2);
						var formattedDate = year + '-' + month + '-' + day;
						console.log("格式化后的日期（yyyy-MM-dd）:", formattedDate);

						var liHtml = '<li>' +
								'<a href="#" class="fly-avatar">' +
								png +
								'</a>' +
								'<h2>' +
								'<a class="layui-badge">' + data[i].details +'</a>' +
								'<a href="">' + data[i].details +'</a>' +
								'</h2>' +
								'<div class="fly-list-info">' +
								'<span>' + formattedDate +'</span>' +
								'</div>' +
								'<div class="fly-list-badge">' +
								div + data[i].money +'</span>' +
								'</div>' +
								'</li>';
						$('.fly-list').append(liHtml);

					}



				}
			}
		});
	}

	function fundquert1(parameters) {
		var cid = $("#cid").val()
		var type = '1';
		$('ul.fly-list li').remove();
		$.ajax({
			url: 'list.action?cid='+cid+'&type=' + type,
			type: 'post',
			success: function (res) {
				if (res.code == 200){
					var data = res.data;
					$('.fly-panel.fly-column.layui-clear li').removeClass("layui-hide-xs layui-this");
					// var targetLi = document.querySelectorAll('.fly-panel.fly-column.layui-clear li')[1];
					// 添加新的class
					console.log(cid)
					$("ul.layui-clear li").eq(cid).addClass("layui-hide-xs layui-this");
					// targetLi.classList.add('layui-hide-xs layui-this');

					//渲染数据
					for (var i = 0; i < data.length; i++) {

						var outgoing = '<span class="layui-badge layui-bg-red">'
						var incoming = '<span class="layui-badge fly-badge-accept">'
						var div;
						if (data[i].type == '2'){
							div = outgoing
						}else{
							div = incoming;
						}
						var png
						if (data[i].cid == '1'){
							png = '<img src="../res/images/cat/cat_bills_1.png" alt="工资">'
						}else if(data[i].cid == '2'){
							png = '<img src="../res/images/cat/cat_car_1.png" alt="工资">'
						}else if(data[i].cid == '3'){
							png = '<img src="../res/images/cat/cat_doprava_1.png" alt="工资">'
						}else if(data[i].cid == '4'){
							png = '<img src="../res/images/cat/cat_drink_1.png" alt="工资">'
						}else if(data[i].cid == '5'){
							png = '<img src="../res/images/cat/cat_entern_1.png" alt="工资">'
						}else if(data[i].cid == '6'){
							png = '<img src="../res/images/cat/cat_food_1.png" alt="工资">'
						}else if(data[i].cid == '7'){
							png = '<img src="../res/images/cat/cat_gift_1.png" alt="工资">'
						}else if(data[i].cid == '8'){
							png = '<img src="../res/images/cat/cat_health_1.png" alt="工资">'
						}else if(data[i].cid == '9'){
							png = '<img src="../res/images/cat/cat_hotel_1.png" alt="工资">'
						}else if(data[i].cid == '10'){
							png = '<img src="../res/images/cat/cat_house_1.png" alt="工资">'
						}else if(data[i].cid == '11'){
							png = '<img src="../res/images/cat/cat_love_1.png" alt="工资">'
						}else if(data[i].cid == '12'){
							png = '<img src="../res/images/cat/cat_money_1.png" alt="工资">'
						}else if(data[i].cid == '13'){
							png = '<img src="../res/images/cat/cat_movies_1.png" alt="工资">'
						}else if(data[i].cid == '14'){
							png = '<img src="../res/images/cat/cat_music_1.png" alt="工资">'
						}else if(data[i].cid == '15'){
							png = '<img src="../res/images/cat/cat_nakup_1.png" alt="工资">'
						}else if(data[i].cid == '16'){
							png = '<img src="../res/images/cat/cat_otaznik_1.png" alt="工资">'
						}else if(data[i].cid == '17'){
							png = '<img src="../res/images/cat/cat_penize_1.png" alt="工资">'
						}else if(data[i].cid == '18'){
							png = '<img src="../res/images/cat/cat_personal_1.png" alt="工资">'
						}

						var date = new Date(data[i].addTime);
						// 获取年、月、日、时、分、秒等信息，并进行格式化处理，以下示例几种常见格式

						// 格式化为 "yyyy-MM-dd" 格式
						var year = date.getFullYear();
						var month = ('0' + (date.getMonth() + 1)).slice(-2);
						var day = ('0' + date.getDate()).slice(-2);
						var formattedDate = year + '-' + month + '-' + day;
						console.log("格式化后的日期（yyyy-MM-dd）:", formattedDate);

						var liHtml = '<li>' +
								'<a href="#" class="fly-avatar">' +
								png +
								'</a>' +
								'<h2>' +
								'<a class="layui-badge">' + data[i].details +'</a>' +
								'<a href="">' + data[i].details +'</a>' +
								'</h2>' +
								'<div class="fly-list-info">' +
								'<span>' + formattedDate +'</span>' +
								'</div>' +
								'<div class="fly-list-badge">' +
								div + data[i].money +'</span>' +
								'</div>' +
								'</li>';
						$('.fly-list').append(liHtml);

					}



				}
			}
		});
	}
	document.getElementById('shouru').addEventListener('click', fundquert1);
	document.getElementById('zhichu').addEventListener('click', fundquert);

	$(document).ready(function (){
		var cid = $("#cid").val()
		var type = $("#type").val()
		console.log(cid)
		console.log(type)
		$.ajax({
			url: 'list.action?cid='+cid+'&type=' + type,
			type: 'post',
			success: function (res) {
				if (res.code == 200){
					var data = res.data;
					$('.fly-panel.fly-column.layui-clear li').removeClass("layui-hide-xs layui-this");
					// var targetLi = document.querySelectorAll('.fly-panel.fly-column.layui-clear li')[1];
					// 添加新的class
					console.log(cid)
					$("ul.layui-clear li").eq(cid).addClass("layui-hide-xs layui-this");
					// targetLi.classList.add('layui-hide-xs layui-this');

					//渲染数据
					for (var i = 0; i < data.length; i++) {

						var outgoing = '<span class="layui-badge layui-bg-red">'
						var incoming = '<span class="layui-badge fly-badge-accept">'
						var div;
						if (data[i].type == '2'){
							div = outgoing
						}else{
							div = incoming;
						}
						var png
						if (data[i].cid == '1'){
							png = '<img src="../res/images/cat/cat_bills_1.png" alt="工资">'
						}else if(data[i].cid == '2'){
							png = '<img src="../res/images/cat/cat_car_1.png" alt="工资">'
						}else if(data[i].cid == '3'){
							png = '<img src="../res/images/cat/cat_doprava_1.png" alt="工资">'
						}else if(data[i].cid == '4'){
							png = '<img src="../res/images/cat/cat_drink_1.png" alt="工资">'
						}else if(data[i].cid == '5'){
							png = '<img src="../res/images/cat/cat_entern_1.png" alt="工资">'
						}else if(data[i].cid == '6'){
							png = '<img src="../res/images/cat/cat_food_1.png" alt="工资">'
						}else if(data[i].cid == '7'){
							png = '<img src="../res/images/cat/cat_gift_1.png" alt="工资">'
						}else if(data[i].cid == '8'){
							png = '<img src="../res/images/cat/cat_health_1.png" alt="工资">'
						}else if(data[i].cid == '9'){
							png = '<img src="../res/images/cat/cat_hotel_1.png" alt="工资">'
						}else if(data[i].cid == '10'){
							png = '<img src="../res/images/cat/cat_house_1.png" alt="工资">'
						}else if(data[i].cid == '11'){
							png = '<img src="../res/images/cat/cat_love_1.png" alt="工资">'
						}else if(data[i].cid == '12'){
							png = '<img src="../res/images/cat/cat_money_1.png" alt="工资">'
						}else if(data[i].cid == '13'){
							png = '<img src="../res/images/cat/cat_movies_1.png" alt="工资">'
						}else if(data[i].cid == '14'){
							png = '<img src="../res/images/cat/cat_music_1.png" alt="工资">'
						}else if(data[i].cid == '15'){
							png = '<img src="../res/images/cat/cat_nakup_1.png" alt="工资">'
						}else if(data[i].cid == '16'){
							png = '<img src="../res/images/cat/cat_otaznik_1.png" alt="工资">'
						}else if(data[i].cid == '17'){
							png = '<img src="../res/images/cat/cat_penize_1.png" alt="工资">'
						}else if(data[i].cid == '18'){
							png = '<img src="../res/images/cat/cat_personal_1.png" alt="工资">'
						}

						var date = new Date(data[i].addTime);
						// 获取年、月、日、时、分、秒等信息，并进行格式化处理，以下示例几种常见格式

						// 格式化为 "yyyy-MM-dd" 格式
						var year = date.getFullYear();
						var month = ('0' + (date.getMonth() + 1)).slice(-2);
						var day = ('0' + date.getDate()).slice(-2);
						var formattedDate = year + '-' + month + '-' + day;
						console.log("格式化后的日期（yyyy-MM-dd）:", formattedDate);

						var liHtml = '<li>' +
								'<a href="#" class="fly-avatar">' +
								png +
								'</a>' +
								'<h2>' +
								'<a class="layui-badge">' + data[i].details +'</a>' +
								'<a href="">' + data[i].details +'</a>' +
								'</h2>' +
								'<div class="fly-list-info">' +
								'<span>' + formattedDate +'</span>' +
								'</div>' +
								'<div class="fly-list-badge">' +
								div + data[i].money +'</span>' +
								'</div>' +
								'</li>';
						$('.fly-list').append(liHtml);

					}



				}
			}
		});




	})



})
</script>
</body>
</html>