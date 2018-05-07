<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>申请购买设备</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= path %>/static/css/equipment/request_buy_equipment.css" >
    <link rel="stylesheet" href="<%= path %>/static/css/equipment/table.css" >
    <script type="text/javascript" src="<%= path %>/static/js/lib/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript" src="<%= path %>/static/js/equipment/request_buy_equipment.js"></script>
  </head>
  
  <body>
    <jsp:include page="../lab/header.jsp"></jsp:include>
    
    <div class="content">
      <!-- 导航条 -->
      <ol class="breadcrumb">
        <li><a href="<%= path %>/toContent">主页</a></li>
        <li class="active">申请购买设备</li>
      </ol>

      <table align="center" class="bordered" style="width: 80%; margin-left: 10%;margin-top: 50px;">
        <tr>
          <td colspan="2" bgcolor="#0ccff2" style="text-align: left;"><label style="font-size: 18px"> 负责人信息</label></td>
        </tr>
        <tr>
          <td bgcolor="#fff">
            <label>负责人工作号</label>
          </td>
          <td bgcolor="#fff" class="td-input">
            <input type="text" name="charge_id" class="input-text" value="">
          </td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>负责人姓名</label></td>
          <td bgcolor="#fff" class="td-input">
            <input type="text" name="charge_name" value="" class="input-text" />
          </td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>实验室名称</label></td>
          <td bgcolor="#fff" class="td-input">
            <select name="lab_name" style="width: 60%; height: 50px; border: 0px;">
              <option value="生物实验室">生物实验室</option>
              <option value="化学实验室">化学实验室</option>
              <option value="数学实验室">数学实验室</option>
              <option value="计科实验室">计科实验室</option>
              <option value="医药实验室">医药实验室</option>
            </select>
          </td>
        </tr>
        <tr>
          <td bgcolor="#0ccff2" colspan="2" style="text-align: left;">
            <label style="font-size: 18px">设备信息</label>
          </td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>设备名</label></td>
          <td bgcolor="#fff" class="td-input">
            <input type="text" name="equipment_name" class="input-text" />
          </td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>设备类型</label></td>
          <td bgcolor="#fff" class="td-input">
            <input type="text" class="input-text" name="equipment_type" />
          </td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>购进数量</label></td>
          <td bgcolor="#fff" class="td-input">
            <input type="text" class="input-text" name="equipment_count" />
          </td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>购买预算</label></td>
          <td bgcolor="#fff" class="td-input"><input type="text" class="input-text"  align="center" name="equipment_budget" /></td>
        </tr>
        <tr>
          <td bgcolor="#fff"><label>申请日期</label></td>
          <td bgcolor="#fff" class="td-input"><input type="date" class="input-text"  align="center" name="buy_date" /></td>
        </tr>
      </table>

      <div class="table-add-div">
        <img src="<%= path %>/static/css/images/add.svg" class="btn-circle">
      </div>
      <div class="commit-div">
        <button class="btn btn-default">取消</button>
        <button class="btn btn-info btn-commit">提交</button>
      </div>
    </div>
  </body>
</html>
