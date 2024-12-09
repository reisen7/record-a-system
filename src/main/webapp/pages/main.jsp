<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>快速记 - 记下明白生活</title>

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
            background-color: #6188c9;
        }
        .fly-logo img {
            height: 50px;
        }
        .layui-container {
            padding-top: 50px;
        }
        .fly-column {
            background: #1e293b;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 2rem;
            margin-top: 2rem;
        }
        .fly-column ul li {
            display: inline-block;
            margin-right: 1rem;
        }
        .fly-column a {
            color: #e2e8f0;
            transition: color 0.3s ease-in-out;
        }
        .fly-column a:hover {
            color: #6366f1;
        }
        .fly-column .fly-column-right {
            float: right;
        }
        .fly-panel-title {
            background: #2d3748;
            padding: 1rem;
            border-radius: 1rem;
            margin-bottom: 1rem;
        }
        .fly-panel-title span {
            cursor: pointer;
            margin-right: 1rem;
            color: #e2e8f0;
            transition: color 0.3s ease-in-out;
        }
        .fly-panel-title span:hover {
            color: #6366f1;
        }
        .fly-list {
            list-style: none;
            padding: 0;
        }
        .fly-list li {
            background: #2d3748;
            margin-bottom: 1rem;
            padding: 1rem;
            border-radius: 1rem;
        }
        .fly-avatar img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 1rem;
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

<div class="fly-header ">
    <div class="layui-container">
        <a class="fly-logo" href="showIndex.action">
        </a>
        <ul class="layui-nav fly-nav-user">
            <li class="layui-nav-item">
                <a class="fly-nav-avatar" href="javascript:;">
                    <cite class="layui-hide-xs">你好啊</cite>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="main"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                    <hr style="margin: 5px 0;">
                    <dd><a href="logout" style="text-align: center;">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>

<div class="fly-column">
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
                    <span id="zhichu">支出</span>
                    <span class="fly-mid"></span>
                    <span id="shouru">收入</span>
                    <span class="fly-filter-right layui-hide-xs">
            <a href="main?order=time" class="layui-this">时间</a>
            <span class="fly-mid"></span>
            <a href="main?order=money">金额</a>
          </span>
                </div>
                <ul class="fly-list">

                    <input style="display: none" type="text" id="cid" value="${cid}" />
                    <input style="display: none" type="text" id="type" value="${type}" />
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">
    <p>© 2024 快速记. All rights reserved.</p>
</div>

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
					$('.fly-column.layui-clear li').removeClass("layui-hide-xs layui-this");
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
					$('.fly-column.layui-clear li').removeClass("layui-hide-xs layui-this");
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
					$('.fly-column.layui-clear li').removeClass("layui-hide-xs layui-this");
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