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
        /* 整体页面背景设置为淡橙色，营造温馨活泼的动漫氛围 */
        body {
            background-color: #ffe5b4;
            font-family: Arial, sans-serif;
        }

        /* 头部样式调整 */
        .fly-header {
            background-color: #ff8c00;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .fly-logo {
            display: inline-block;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: white;
            margin-right: 10px;
            transition: transform 0.3s ease;
        }

        .fly-logo:hover {
            transform: rotate(360deg);
        }

        .layui-nav.fly-nav-user li.layui-nav-item a {
            color: white;
            transition: color 0.3s ease;
        }

        .layui-nav.fly-nav-user li.layui-nav-item a:hover {
            color: #ffd700;
        }

        /* 导航栏选项样式 */
        .fly-column ul li {
            display: inline-block;
            margin-right: 5px;
            cursor: pointer;
            color: #333;
            transition: color 0.3s ease;
        }

        .fly-column ul li:hover {
            color: #ff8c00;
        }

        .fly-column ul li.layui-this {
            color: #ff8c00;
            font-weight: bold;
        }

        .fly-search {
            font-size: 20px;
            color: #333;
            margin-right: 10px;
            transition: color 0.3s ease;
        }

        .fly-search:hover {
            color: #ff8c00;
        }

        .layui-btn {
            background-color: #ff8c00;
            color: white;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .layui-btn:hover {
            background-color: #ffa500;
        }

        /* 面板相关样式 */
        .fly-panel {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        .fly-panel-title {
            color: #8b4513;
            margin-bottom: 15px;
        }

        .fly-filter-right a {
            color: #333;
            margin-right: 10px;
            transition: color 0.3s ease;
        }

        .fly-filter-right a:hover {
            color: #ff8c00;
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
                    <cite class="layui-hide-xs">哈喽呀~</cite>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="main"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的小天地</a></dd>
                    <hr style="margin: 5px 0;">
                    <dd><a href="logout" style="text-align: center;">拜拜咯~</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>

<div class="fly-column">
    <div class="layui-container">
        <ul class="layui-clear">
            <li class="layui-hide-xs layui-this"><a href="main.action">主页面哟~</a></li>

            <li><a href="main.action?cid=1">交通~</a></li>

            <li><a href="main.action?cid=2">电影~</a></li>

            <li><a href="main.action?cid=3">早餐~</a></li>

            <li><a href="main.action?cid=4">午餐~</a></li>

            <li><a href="main.action?cid=5">晚餐~</a></li>

            <li><a href="main.action?cid=6">娱乐~</a></li>

            <li><a href="main.action?cid=7">教育~</a></li>

            <li><a href="main.action?cid=8">旅游~</a></li>

            <li><a href="main.action?cid=9">购物~</a></li>

            <li><a href="main.action?cid=10">油费呀~</a></li>

            <li><a href="main.action?cid=11">宠物~</a></li>

            <li><a href="main.action?cid=12">医生~</a></li>

            <li><a href="main.action?cid=13">饮料~</a></li>

            <li><a href="main.action?cid=14">礼物~</a></li>

            <li><a href="main.action?cid=15">杂项~</a></li>

            <li><a href="main.action?cid=16">工资收入~</a></li>

            <li><a href="main.action?cid=17">小收入~</a></li>

            <li><a href="main.action?cid=18">小进账~</a></li>
        </ul>
        <div class="fly-column-right layui-hide-xs">
            <a href="add.action" class="layui-btn">记上一笔呀~</a>
        </div>
    </div>
</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="fly-panel" style="margin-bottom: 0;">
                <div class="fly-panel-title fly-filter">
                    <span id="zhichu">支出开销</span>
                    <span class="fly-mid"></span>
                    <span id="shouru">收入进账</span>
                    <span class="fly-filter-right layui-hide-xs">
                            <a href="main?order=time" class="layui-this">按时间排序哟~</a>
                            <span class="fly-mid"></span>
                            <a href="main?order=money">按金额排序呀~</a>
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