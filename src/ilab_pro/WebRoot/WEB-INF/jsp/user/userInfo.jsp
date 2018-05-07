<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
      + path + "/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>个人信息</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script type="text/javascript" src="<%= path %>/static/js/lib/jquery-3.3.1.min.js"></script>
    <script src="<%=path%>/static/js/lib/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/lab/main.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/lab/user_message.css">
    <script src="<%=path%>/static/js/lib/main.js"></script>
  </head>
  <body>
    <jsp:include page="../lab/header.jsp"></jsp:include>

    <div class="userinfo">
      <!-- 导航条 -->
      <ol class="breadcrumb">
        <li><a href="<%= path %>/lab/toContent">主页</a></li>
        <li class="active">个人信息管理</li>
      </ol>
      <form method="post" name="reg" action="modify.action">
        <table cellpadding="3" cellspacing="1" align="center" class="table table-bordered table-hover" id="table1">
          <tr>
            <td valign="middle" colspan="2" align="center" height="25"
             background="../images/bg2.gif"><font color="#000000"><b>用户信息修改</b></font></td>
           </tr>
            <tr>
              <td width="40%" class="tablebody1">
	           <b>用户名</b>：<br />
               <span>注册用户名长度限制为0－16字节</span>
              </td>
              <td width="60%" class="tablebody1">
                <input type="hidden" name="userid" value="briup" />
                <input type="text" class="form-control message-input" maxLength="8" size="32" disabled="disabled" value="briup" />
                <font color="#FF0000">*</font>
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>身份</b>：</td>
              <td class="tablebody1">
                <input type="text" size="32" maxlength="16" name="officephone" value="学生" 
                  class="form-control message-input" disabled="disabled">
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>性别</b>：</td>
              <td class="tablebody1">
                <input type="text" size="1" class="form-control message-input" maxlength="1" name="street2" value="男" />
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>姓名</b>：</td>
              <td class="tablebody1">
                <input type="text" size="32" class="form-control message-input" maxlength="16" name="homephone" value="sdfadsf">
              </td>
            </tr>
            <tr>
              <td width="40%" class="tablebody1">
                <b>密码(至少6位，至多8位)</b>：<br />
                <span>请输入密码，区分大小写。</span>
                <br /> 
                <span>请不要使用任何类似 \'*\'、\' \' 或 HTML 字符'</span>
              </td>
              <td width="60%" class="tablebody1">
                <input type="password" class="form-control message-input" align="center" maxLength="8" size="32" name="password" value="briup">
                <font color="#FF0000">*</font>
              </td>
            </tr>
            <tr>
              <td width="40%" class="tablebody1">
                <b>密码(至少6位，至多8位)</b>：<br />
                <span>请再输一遍确认</span>
              </td>
              <td class="tablebody1"><input type="password" maxLength="8" align="center" 
                size="32" name="password2" value="briup" class="form-control message-input">
                <font color="#FF0000">*</font>
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>所在地区</b>：</td>
              <td class="tablebody1">
                <select name="province" class="message-input" id="province"></select> 省
                <select name="city" class="message-input" id="city"></select> 市 
                <select name="area" class="message-input" id="area"></select> 区 
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>联系地址</b>：</td>
              <td class="tablebody1"><input type="text" size="64" class="form-control message-input"
                maxlength="32" name="street1" value="shang hai">
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>邮编</b>：</td>
              <td class="tablebody1"><input type="text" size="32"
                maxlength="8" name="zip" value="200001" class="form-control message-input">
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>手机</b>：</td>
              <td class="tablebody1"><input type="text" size="32"
                maxlength="16" name="cellphone" value="adfadfadfasd" class="form-control message-input">
              </td>
            </tr>
            <tr>
              <td class="tablebody1"><b>Email地址</b>：<br> 请输入有效的邮件地址</td>
              <td class="tablebody1"><input maxLength="50" size="32"
                maxlength="32" name="email" value="b1@2.coms" class="form-control message-input">
              </td>
            </tr>
            <tr>
              <td class="tablebody2" valign="middle" colspan="2" align="center">
                <input type="button" value="修 改" onclick="javascript:checkReg()" class="btn btn-info">
              </td>
            </tr>
          </table>
        </form>
    </div>
    <!--文件尾开始-->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
        <td bgcolor="#f1f1f6" height="53" valign="center">
          <p align="center">
            Copyright &copy;2018 
            <a href="http://www.briup.com.cn">
              <b>
                <span face="Verdana,">tyutlab</span>
              </b>
              <span color=#CC0000>.com.cn</span>
              <br />
            </a>
          </p>
        </td>
      </tr>
    </table>
    <script type="text/javascript" src="<%=path%>/static/js/user/user_info.js"></script>
  </body>
</html>