<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="http://www.java1234.com/jquery-easyui-1.3.3/demo/demo.css">
 <script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.min.js"></script>
 <script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="http://www.java1234.com/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>


<h2>用户管理</h2>
<div class="demo-info">
    <div class="demo-tip icon-tip"></div>
    <div></div>
</div>
<div style="margin:10px 0;"></div>
<table id="dg" class="easyui-datagrid" title="用户列表" style="width:900px;height:600px"
       data-options="rownumbers:true,singleSelect:true,pagination:true,url:'/wxgx/fileOperate/list?dir=css',toolbar:toolbar">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'itemid',width:80">编号</th>
        <th data-options="field:'name',width:100">昵称</th>
        <th data-options="field:'url',width:100">真实姓名</th>
        <th data-options="field:'url',width:100">登录密码</th>
        <th data-options="field:'url',width:100">性别</th>
        <th data-options="field:'url',width:100">头像</th>
        <th data-options="field:'url',width:100">注册时间</th>
        <th data-options="field:'url',width:100">邮箱</th>
        <th data-options="field:'url',width:100">联系电话</th>
        <th data-options="field:'url',width:100">用户类型</th>
        <th data-options="field:'url',width:100">操作</th>
    </tr>
    </thead>
</table>

<script type="text/javascript">
    var toolbar = [{
        text:'批量删除',
        iconCls:'icon-add',
        handler:function(){alert('add')}
    }];
</script>