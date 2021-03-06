<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script language="JavaScript" type="text/javascript">
	// Dojo configuration
	djConfig = {
		isDebug : false,
		bindEncoding : "UTF-8",
		baseRelativePath : "struts/dojo/",
		baseScriptUri : "struts/dojo/",
		parseWidgets : false

	};
</script>
<script language="JavaScript" type="text/javascript"
	src="struts/dojo/struts_dojo.js"></script>

<script language="JavaScript" type="text/javascript"
	src="struts/ajax/dojoRequire.js"></script>
<link rel="stylesheet" href="struts/xhtml/styles.css" type="text/css" />

<script language="JavaScript" src="struts/utils.js"
	type="text/javascript"></script>
<script language="JavaScript" src="struts/xhtml/validation.js"
	type="text/javascript"></script>
<script language="JavaScript" src="struts/css_xhtml/validation.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>青鸟租房 - 用户管理</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript">
	function add(url) {
		open("page/add.jsp");
	}
	function update(id) {
		open("page/modify.jsp?id=" + id);
	}

	function del(id, page) {
		var isDel = confirm("是否确定删除");
		if (isDel) {
			location.href = "page/HouseBean_del?id=" + id + "&currPage=" + page;
		}
	}
</script>
</head>
<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="images/logo.gif" />
		</div>
		<div class="search">
			<label class="ui-green"><input onclick="add()" type="button"
				name="search" value="发布房屋信息" /></label> <label class="ui-green"><input
				type="button" name="search" value="退       出"
				onclick='document.location="index.jsp"' /></label>
		</div>
	</div>
	<div class="main wrap">
		<div id="houseArea">
			<table class="house-list">
				<tr>
				<c:forEach items="${houses}" var="house">
					<td class="house-thumb"><span><a
							href="page/show.jsp?id=10001"><img
								src="images/thumb_house.gif" /></a></span></td>
					<td>
						<dl>
							<dt>
								<a href="page/show.jsp?id=10001">${house.title}</a>
							</dt>
							<dd>
								东城区朝阳门,${house.descrripton}平米<br /> 联系方式：13876768989
							</dd>
						</dl>
					</td>
					<td class="house-type"><label class="ui-green"><input
							type="button" onclick='update(10001)' value="修    改" /></label></td>
					<td class="house-price"><label class="ui-green"><input
							type="button" onclick='del(10001, 1)' value="删    除" /></label></td>
				</tr>
				</c:forEach>


			</table>
			<div class="pager">
				<ul>
					<li class="current"><a dojoType="struts:BindAnchor"
						validate="false" ajaxAfterValidation="false" id="widget_8076105"
						href="HouseBean_ajaxList.action?currPage=1" targets="houseArea"
						showError="true" parseContent="true"> 首页</a> <script
							language="JavaScript" type="text/javascript">
							djConfig.searchIds.push("widget_8076105");
						</script></li>
					<li class="current"><a dojoType="struts:BindAnchor"
						validate="false" ajaxAfterValidation="false"
						id="widget_1265654245" href="HouseBean_ajaxList.action?currPage=0"
						targets="houseArea" showError="true" parseContent="true"> 上一页</a>
						<script language="JavaScript" type="text/javascript">
							djConfig.searchIds.push("widget_1265654245");
						</script></li>
					<li class="current"><a dojoType="struts:BindAnchor"
						validate="false" ajaxAfterValidation="false"
						id="widget_1128401883" href="HouseBean_ajaxList.action?currPage=2"
						targets="houseArea" showError="true" parseContent="true"> 下一页</a>
						<script language="JavaScript" type="text/javascript">
							djConfig.searchIds.push("widget_1128401883");
						</script></li>
					<li class="current"><a dojoType="struts:BindAnchor"
						validate="false" ajaxAfterValidation="false"
						id="widget_1097434648" href="HouseBean_ajaxList.action?currPage=1"
						targets="houseArea" showError="true" parseContent="true"> 尾页</a> <script
							language="JavaScript" type="text/javascript">
							djConfig.searchIds.push("widget_1097434648");
						</script></li>
				</ul>
				<span class="total">1/1页</span>
			</div>
		</div>
	</div>
	<div id="footer" class="wrap">
		<dl>
			<dt>青鸟租房 &copy; 2015 源辰信息科技有限公司 湘ICP证1000001号</dt>
			<dd>关于我们 · 联系方式 · 意见反馈 · 帮助中心</dd>
		</dl>
	</div>
</body>
</html>
