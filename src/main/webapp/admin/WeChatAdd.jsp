<%--
  Created by IntelliJ IDEA.
  User: 杨辉虎
  Date: 2018/12/25
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="/favicon.ico" >
    <link rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<c:url value ='/lib/html5shiv.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/lib/respond.min.js'/>"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/h-ui/css/H-ui.min.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/h-ui.admin/css/H-ui.admin.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/lib/Hui-iconfont/1.0.8/iconfont.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/h-ui.admin/skin/default/skin.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/h-ui.admin/css/style.css'/>">
    <!--[if IE 6]>
    <script type="text/javascript" src="<c:url value='/lib/DD_belatedPNG_0.0.8a-min.js'/>"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--/meta 作为公共模版分离出去-->

    <title>添加微信群</title>
</head>
<body>
<article class="page-container" id="form-article-add">
    <form class="form form-horizontal" action="<c:url value='/servlet/WeChatServlet?type=addPhoto'/> " method="post" enctype="multipart/form-data">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">图片文件：</label>&nbsp;&nbsp;
            <input type="file" name="files">
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <input type="submit" class="btn btn-primary radius">
                <button onClick="removeIframe();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<c:url value='/lib/jquery/1.9.1/jquery.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/lib/layer/2.4/layer.js'/> "></script>
<script type="text/javascript" src="<c:url value='/static/h-ui/js/H-ui.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/static/h-ui.admin/js/H-ui.admin.js'/> "></script>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<c:url value='/lib/My97DatePicker/4.8/WdatePicker.js'/> "></script>
<script type="text/javascript" src="<c:url value='/lib/jquery.validation/1.14.0/jquery.validate.js'/> "></script>
<script type="text/javascript" src="<c:url value='/lib/jquery.validation/1.14.0/validate-methods.js'/> "></script>
<script type="text/javascript" src="<c:url value='/lib/jquery.validation/1.14.0/messages_zh.js'/> "></script>
<script type="text/javascript" src="<c:url value='/lib/webuploader/0.1.5/webuploader.min.js'/> "></script>
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
