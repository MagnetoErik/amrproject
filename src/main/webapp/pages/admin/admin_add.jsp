<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String addUrl = basePath + "emp/doAddAdmin.action" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<jsp:include page="/pages/plugins/include_javascript_head.jsp" /> 
<script type="text/javascript" src="js/pages/admin/admin_add.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 导入头部标题栏内容 -->
		<jsp:include page="/pages/plugins/include_title_head.jsp" />
		<!-- 导入左边菜单项 -->
		<jsp:include page="/pages/plugins/include_menu_item.jsp" />
		<div class="content-wrapper">
			<!-- 此处编写需要显示的页面 -->
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title"><strong>增加新管理员</strong></h3>
						</div>
						<!-- /.box-header -->
						<div class="">
							<form class="form-horizontal" action="<%=addUrl%>" id="myform" method="post">
								<input type="hidden" id="aflag" name="aflag" value="1">
								<fieldset>
									<div class="form-group" id="eidDiv">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="eid">雇员编号：</label>
										<div class="col-md-5">
											<!-- 定义表单输入组件 -->
											<input type="text" readonly="readonly" value="${maxId}" id="eid" name="eid" class="form-control"
												placeholder="请输入雇员编号">
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="eidMsg"></div>
									</div>
									<div class="form-group" id="nameDiv">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="name">雇员姓名：</label>
										<div class="col-md-5">
											<!-- 定义表单输入组件 -->
											<input type="text" id="name" value="${newEmp.name}" name="name" class="form-control"
												placeholder="请输入雇员姓名">
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="nameMsg"></div>
									</div>
									<div class="form-group" id="passwordDiv">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="password">登录密码：</label>
										<div class="col-md-5">
											<!-- 定义表单输入组件 -->
											<input type="password" id="password" value="${newEmp.password}" name="password" class="form-control"
												placeholder="请输入登录密码">
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="passwordMsg"></div>
									</div>
									<div class="form-group" id="phoneDiv">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="phone">联系电话：</label>
										<div class="col-md-5">
											<!-- 定义表单输入组件 -->
											<input type="text" id="phone" name="phone" value="${newEmp.phone}" class="form-control"
												placeholder="请输入联系电话">
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="phoneMsg"></div>
									</div>
									<div class="form-group" id="level.lid">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="level.lid">员工级别：</label>
										<div class="col-md-5">
											<select id="lid" name="lid" class="form-control">
												<option value="1">实习生</option>
												<option value="2" selected>普通员工</option>
												<option value="3">部门主管</option>
												<option value="4">部门经理</option>
												<option value="5">总监</option>
												<option value="6">副总裁</option>
												<option value="7">总裁</option>
											</select>
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="level.lidMsg"></div>
									</div>
									<div class="form-group" id="salaryDiv">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="salary">基本工资：</label>
										<div class="col-md-5">
											<!-- 定义表单输入组件 -->
											<input type="text" id="salary" name="salary" value="${newEmp.salary}" class="form-control"
												placeholder="请输入基本工资">
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="salaryMsg"></div>
									</div>
									<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
									<div class="form-group" id="notice.noteDiv">
										<!-- 定义表单提示文字 -->
										<label class="col-md-3 control-label" for="note">备注信息：</label>
										<div class="col-md-5">
											<!-- 定义表单输入组件 -->
											<textarea id="note" name="note" class="form-control" placeholder="请输入公告信息" rows="10"></textarea>
										</div>
										<!-- 定义表单错误提示显示元素 -->
										<div class="col-md-4" id="noteMsg"></div>
									</div>
									<div class="form-group">
										<div class="col-md-5 col-md-offset-3">
											<button type="submit" class="btn btn-primary">增加</button>
											<button type="reset" class="btn btn-warning">重置</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
		</div>
		<!-- 导入公司尾部认证信息 -->
		<jsp:include page="/pages/plugins/include_title_foot.jsp" />
		<!-- 导入右边工具设置栏 -->
		<jsp:include page="/pages/plugins/include_menu_sidebar.jsp" />
		<div class="control-sidebar-bg"></div>
	</div>
	<jsp:include page="/pages/plugins/include_javascript_foot.jsp" />
</body>
</html>
