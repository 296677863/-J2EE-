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


<h2>域管理</h2>
<div class="demo-info">
    <div class="demo-tip icon-tip"></div>
    <div></div>
</div>
<div style="margin:10px 0;"></div>
<table id="dg" class="easyui-datagrid" title="域列表" style="width:900px;height:600px"
       data-options="rownumbers:true,singleSelect:true,pagination:true,url:'zone_list',toolbar:toolbar">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'name',width:100">域名称</th>
        <th data-options="field:'description',width:500">域备注</th>
    </tr>
    </thead>
</table>
<script type="text/javascript">
    var toolbar = [{
        text:'添加域',
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