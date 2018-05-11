<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>记录查询</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script type="text/javascript" src="<%= path %>/static/js/lib/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<%= path %>/static/css/record/request_buy_record.css">
  </head>

  <body>
     <jsp:include page="../lab/header.jsp"></jsp:include>
    
    <div class="content">
      <!-- 导航条 -->
      <ol class="breadcrumb">
        <li><a href="<%= path %>/lab/toContent">主页</a></li>
        <li class="active">记录查询</li>
      </ol>

      <div class="record-content">
        <div class="record-left">
          <span class="record-left-title">记录查询</span>
          <ul class="record-left-ul">
            <li class="li-list on"><span>购置记录</span></li>
            <li class="li-list"><span>维修记录</span></li>
            <li class="li-list"><span>报废记录</span></li>
            <li class="li-list"><span>入库记录</span></li>
          </ul>
        </div>
        <div class="record-right">
          <div class="record-right-title">
            <span class="title-b pull-left"></span>
            <span class="title-content pull-left">购置申请</span>
            <div class="input-group search-input">
              <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
              <span class="input-group-btn">
                <button type="button" class="btn btn-info">
                  <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                </button>
              </span>
            </div>
          </div>
          <div class="record-right-body">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>创建时间</th>
                  <th>花费</th>
                  <th>申请人</th>
                  <th>是否审批</th>
                  <th>是否执行</th>
                  <th>详情</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                  <td>@mdo</td>
                  <td>@mdo</td>
                  <td><img src="<%= path %>/static/css/images/details.svg" class="detail-img" /></td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>Thornton</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                  <td><img src="<%= path %>/static/css/images/details.svg" class="detail-img" /></td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>the Bird</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                  <td><img src="<%= path %>/static/css/images/details.svg" class="detail-img" /></td>
                </tr>
              </tbody>
            </table>
            
            <nav aria-label="Page navigation" class="pagination-nav text-center">
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
