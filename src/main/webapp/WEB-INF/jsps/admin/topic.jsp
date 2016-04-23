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



<h2>主题管理</h2>
<div class="demo-info">
    <div class="demo-tip icon-tip"></div>
    <div></div>
</div>
<div style="margin:10px 0;"></div>
<table id="dg" class="easyui-datagrid" title="主题列表" style="width:900px;height:600px"
       data-options="rownumbers:true,singleSelect:true,pagination:true,url:'topic_list',toolbar:'#tb'">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'id',width:80">编号</th>
        <th data-options="field:'title',width:100">帖子标题</th>
        <th data-options="field:'userid',width:100">发帖人</th>
        <th data-options="field:'sectionid',width:100">所属小版块</th>
        <th data-options="field:'publishtime',width:100">发帖时间</th>
        <th data-options="field:'modifytime',width:100">最后修改时间</th>
        <th data-options="field:'top',width:100">是否置顶</th>
        <th data-options="field:'good',width:100">是否精华</th>
    </tr>
    </thead>
</table>

<div id="tb" style="padding:5px;height:auto">
    <div style="margin-bottom:5px">
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">批量删除</a>
    </div>
    <div>
        帖子标题:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        发帖人:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        所属小版块:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        是否置顶:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        是否精华:
        <select class="easyui-combobox" panelHeight="auto" style="width:100px">
            <option value="java">Java</option>
            <option value="c">C</option>
            <option value="basic">Basic</option>
            <option value="perl">Perl</option>
            <option value="python">Python</option>
        </select>
        <a href="#" class="easyui-linkbutton" iconCls="icon-search">查询</a>
    </div>
</div>