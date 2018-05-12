<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%= basePath %>">
    <title>记录查询</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script type="text/javascript" src="<%= path %>/static/js/lib/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<%= path %>/static/css/record/request_buy_record.css">
    <script type="text/javascript" src="<%= path %>/static/js/record/buy-record.js"></script>
  </head>

  <body>
     <jsp:include page="../lab/header.jsp"></jsp:include>

    <div class="content">
      <!-- 导航条 -->
      <ol class="breadcrumb">
        <li><a href="<%= path %>/lab/toContent">主页</a></li>
        <li class="active">审批管理</li>
      </ol>

      <div class="record-content">
        <div class="record-left">
          <span class="record-left-title">审批管理</span>
          <ul class="record-left-ul">
            <li class="li-list on"><span>购置审批</span></li>
            <li class="li-list"><span>报废审批</span></li>
          </ul>
        </div>
        <div class="record-right">
          <div class="record-right-title">
            <span class="title-b pull-left"></span>
            <span class="title-content pull-left">购置审批</span>
            <form action="<%= path %>/approvement/buy-record" method="get" id="searchForm">
              <input class="hidden" type="text" value="${pagination.currentPage }" name="page" />
              <input class="hidden" type="text" value="${pagination.orderBy }" name="orderBy" />
              <div class="input-group search-input">
                <input type="text" class="form-control" placeholder="Search key word" name="searchKeyWord" aria-describedby="basic-addon2" value="${pagination.searchKeyWord }">
                <span class="input-group-btn search-btn">
                  <button type="button" class="btn btn-info">
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                  </button>
                </span>
              </div>
            </form>
          </div>
          <div class="record-right-body">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>名称</th>
                  <th>花费(元)</th>
                  <th>申请人</th>
                  <th>申请人</th>
                  <th>申请人</th>
                  <th>详情</th>
                </tr>
              </thead>
              <tbody>
                
                <c:forEach items="${pagination.results }" var="record" varStatus="index">
                  <tr>
                    <th scope="row">${index.count }</th>
                    <td><fmt:formatDate value="${record.createAt }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>${record.cost }</td>
                    <td>${record.requestedUser.name }</td>
                    <td>${record.allowed } </td>
                    <td>${record.done }</td>
                    <td><img src="<%= path %>/static/css/images/details.svg" class="detail-img" /></td>
                  </tr>
                </c:forEach>

              </tbody>
            </table>

            <nav aria-label="Page navigation" class="pagination-nav text-center">
              <ul class="pagination">
                <c:if test="${pagination.currentPage > 1 }">
                  <li>
                    <a href="<%= path %>/approvement/buy-record?searchKeyWord=${pagination.searchKeyWord }&page=1&orderBy=${orderBy }" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li>
                    <a href="<%= path %>/approvement/buy-record?searchKeyWord=${pagination.searchKeyWord }&page=${pagination.currentPage - 1 }&orderBy=${orderBy }" aria-label="Previous">
                      <span aria-hidden="true">&lsaquo;</span>
                    </a>
                  </li>
                </c:if>

                <c:forEach items="${pagination.pagesList }" varStatus="i" var="pageIndex">
                  <c:choose>
                    <c:when test="${pageIndex eq pagination.currentPage}">
                      <li class="active"><a>${pageIndex }</a></li>
                    </c:when>
                    <c:otherwise>
                      <li><a href="<%= path %>/approvement/buy-record?searchKeyWord=${pagination.searchKeyWord }&page=${pageIndex }&orderBy=${orderBy }">${pageIndex }</a></li>
                    </c:otherwise>
                  </c:choose>
                </c:forEach>

                <c:if test="${pagination.currentPage < pagination.totalPage}">
                  <li>
                    <a href="<%= path %>/approvement/buy-record?searchKeyWord=${pagination.searchKeyWord }&page=${pagination.currentPage + 1 }&orderBy=${orderBy }" aria-label="Previous">
                      <span aria-hidden="true">&rsaquo;</span>
                    </a>
                  </li>
                  <li>
                    <a href="<%= path %>/approvement/buy-record?searchKeyWord=${pagination.searchKeyWord }&page=${pagination.totalPage }&orderBy=${orderBy }" aria-label="Previous">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </c:if>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>    
  </body>
</html>
