<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <link rel="stylesheet" type="text/css" href="resources/jquery-easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="resources/jquery-easyui/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="resources/jquery-easyui/css/demo.css">
 <script type="text/javascript" src="resources/jquery-easyui/js/jquery-1.7.2.min.js"></script>
 <script type="text/javascript" src="resources/jquery-easyui/js/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="resources/jquery-easyui/js/easyui-lang-zh_CN.js"></script>


<h2>用户管理</h2>
<div class="demo-info">
    <div class="demo-tip icon-tip"></div>
    <div></div>
</div>
<div style="margin:10px 0;"></div>
<table id="dg" class="easyui-datagrid" title="用户列表" style="width:1250px;height:600px"
       data-options="rownumbers:true,singleSelect:true,pagination:true,url:'user/user_list',toolbar:toolbar">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'nickname',width:100">昵称</th>
        <th data-options="field:'truename',width:100">真实姓名</th>
        <th data-options="field:'password',width:100">登录密码</th>
        <th data-options="field:'sex',width:100">性别</th>
        <th data-options="field:'face',width:300">头像</th>
        <th data-options="field:'regtime',width:100">注册时间</th>
        <th data-options="field:'email',width:100">邮箱</th>
        <th data-options="field:'mobile',width:100">联系电话</th>
        <th data-options="field:'type',width:100">用户类型</th>
    </tr>
    </thead>
</table>

<script type="text/javascript">
    var toolbar = [{
        text:'批量删除',
        iconCls:'icon-add',
        handler:function(){alert('add')}
    },{
    	text:'修改',
        iconCls:'icon-edit',
        handler:function(){alert('edit')}
    	
    },{
    	text:'删除',
        iconCls:'icon-remove',
        handler:function(){alert('remove')}
    }];
</script>