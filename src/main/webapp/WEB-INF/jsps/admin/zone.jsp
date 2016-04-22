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



<h2>大板块管理</h2>
<div class="demo-info">
    <div class="demo-tip icon-tip"></div>
    <div></div>
</div>
<div style="margin:10px 0;"></div>
<table id="dg" class="easyui-datagrid" title="大板块列表" style="width:900px;height:600px"
       data-options="rownumbers:true,singleSelect:true,pagination:true,url:'zone_list',toolbar:toolbar">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'name',width:100">大板块名称</th>
        <th data-options="field:'description',width:500">大板块备注</th>
    </tr>
    </thead>
</table>


<script type="text/javascript">
    var toolbar = [{
        text:'添加大板块',
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