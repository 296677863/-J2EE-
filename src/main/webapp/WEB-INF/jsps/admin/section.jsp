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



<h2>小板块管理</h2>
<div class="demo-info">
    <div class="demo-tip icon-tip"></div>
    <div></div>
</div>
<div style="margin:10px 0;"></div>
<table id="dg" class="easyui-datagrid" title="小板块列表" style="width:900px;height:600px"
       data-options="rownumbers:true,singleSelect:true,pagination:true,url:'/wxgx/fileOperate/list?dir=css',toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'itemid',width:80">编号</th>
        <th data-options="field:'name',width:100">小板块名称</th>
        <th data-options="field:'url',width:100">小板块图标</th>
        <th data-options="field:'url',width:100">所属大板块</th>
        <th data-options="field:'url',width:100">版主</th>
        <th data-options="field:'url',width:100">操作</th>
    </tr>
    </thead>
</table>

<div id="tb" style="padding:5px;height:auto">
    <div style="margin-bottom:5px">
        <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">小版块添加</a>

        <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">批量删除</a>
    </div>
    <div>
        小版块名称:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        所属大板块:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        版主:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        <a href="#" class="easyui-linkbutton" iconCls="icon-search">Search</a>
    </div>
</div>

