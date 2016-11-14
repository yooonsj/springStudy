<%--
  Created by IntelliJ IDEA.
  User: yooonsj
  Date: 2016. 11. 10.
  Time: PM 4:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav id="mainNav" class="navbar navbar-default ">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="/">Spring Study</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden active">
                    <a href="#page-top"></a>
                </li>
                <c:if test="${sessionScope.userName == null}">
                    <li class="page-scroll">
                        <a href="/user/signIn">Sign in</a>
                    </li>
                    <li class="page-scroll">
                        <a href="/user/signUp">Sign up</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.userName != null}">
                    <p class="navbar-text">Signed in as ${sessionScope.userName}</p>
                    <li class="page-scroll">
                        <a href="/user/signOut">Sign out</a>
                    </li>
                </c:if>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>