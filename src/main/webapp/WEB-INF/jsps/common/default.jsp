<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
	<div class="container">
		<h1>Java</h1>
		<p>Java是由Sun
			Microsystems公司推出的Java面向对象程序设计语言（以下简称Java语言）和Java平台的总称。由James
			Gosling和同事们共同研发，并在1995年正式推出。</p>
		<p>
			<a class="btn btn-primary btn-lg"
				href="http://www.java.com/zh_CN/about/" role="button">Learn more
				&raquo;</a>
		</p>
	</div>
</div>

<div class="container">
	<!-- Example row of columns -->
	<div class="mybox">
	
	<div class="row">
	<div class="col-xs-12 col-sm-12">
	<h3>
		<a href=""><img style="width: 50px;" alt=""
			src="resources/images/java-logo.gif"></a>Java web
	</h3>
	</div>
	<c:forEach items="${sectionList1 }" var="section">
		<div class="col-xs-6 col-sm-3">
			<table cellspacing="0" cellpadding="0" class="fl_tb">
				<tbody>
					<tr>
						<td class="fl_g" width="49.9%">
							<div class="fl_icn_g">
								<a href="f_topicList?sectionId=${section.id }&&sectionName=${section.name}"><img
									src="${section.logo }" alt=""><font
									style="font-size: 20px">${section.name }</font></a>
							</div>
							<dl>
								<dt></dt>
								<dd>
									<em>帖子总数: <span title="${sectionTopicCount.get(section) }">${sectionTopicCount.get(section) }</span></em>, <em>精华帖子:
										<span title="${sectionGoodTopicCount.get(section) }">${sectionGoodTopicCount.get(section) }</span>
									</em>
								</dd>
								<dd>
									<em>未回复:<span title="${sectionNoReplyTopicCount.get(section) }">${sectionNoReplyTopicCount.get(section) }</span></em>, <em>版主: <span
										title="${section.masterid }">${section.masterid }</span></em>
								</dd>
							</dl>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</c:forEach>
	</div>

	
	<div class="row">
		
	<div class="col-xs-12 col-sm-12">
	<h3>
		<a href=""><img style="width: 50px;" alt=""
			src="resources/images/android.png"></a>Android4
	</h3>
	</div>
		<c:forEach items="${sectionList2 }" var="section">
		<div class="col-xs-6 col-sm-3">
			<table cellspacing="0" cellpadding="0" class="fl_tb">
				<tbody>
					<tr>
						<td class="fl_g" width="49.9%">
							<div class="fl_icn_g">
								<a href="f_topicList?sectionId=${section.id }&&sectionName=${section.name}"><img
									src="${section.logo }" alt=""><font
									style="font-size: 20px">${section.name }</font></a>
							</div>
							<dl>
								<dt></dt>
								<dd>
									<em>帖子总数: <span title="${sectionTopicCount.get(section) }">${sectionTopicCount.get(section) }</span></em>, <em>精华帖子:
										<span title="${sectionGoodTopicCount.get(section) }">${sectionGoodTopicCount.get(section) }</span>
									</em>
								</dd>
								<dd>
									<em>未回复:<span title="${sectionNoReplyTopicCount.get(section) }">${sectionNoReplyTopicCount.get(section) }</span></em>, <em>版主: <span
										title="${section.masterid }">${section.masterid }</span></em>
								</dd>
							</dl>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</c:forEach>

	</div>
	
	<div class="row">
	<div class="col-xs-12 col-sm-12">
	<h3>
		<a href=""><img style="width: 50px;" alt=""
			src="resources/images/tool.jpg"></a>常用框架
	</h3>
	</div>
		<c:forEach items="${sectionList3 }" var="section">
		<div class="col-xs-6 col-sm-3">
			<table cellspacing="0" cellpadding="0" class="fl_tb">
				<tbody>
					<tr>
						<td class="fl_g" width="49.9%">
							<div class="fl_icn_g">
								<a href="f_topicList?sectionId=${section.id }&&sectionName=${section.name}"><img
									src="${section.logo }" alt=""><font
									style="font-size: 20px">${section.name }</font></a>
							</div>
							<dl>
								<dt></dt>
								<dd>
									<em>帖子总数: <span title="${sectionTopicCount.get(section) }">${sectionTopicCount.get(section) }</span></em>, <em>精华帖子:
										<span title="${sectionGoodTopicCount.get(section) }">${sectionGoodTopicCount.get(section) }</span>
									</em>
								</dd>
								<dd>
									<em>未回复:<span title="${sectionNoReplyTopicCount.get(section) }">${sectionNoReplyTopicCount.get(section) }</span></em>, <em>版主: <span
										title="${section.masterid }">${section.masterid }</span></em>
								</dd>
							</dl>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</c:forEach>

	</div>
	</div>
</div>



