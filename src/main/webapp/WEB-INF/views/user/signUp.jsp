<%--
  Created by IntelliJ IDEA.
  User: yooonsj
  Date: 2016. 11. 11.
  Time: AM 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <section class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
              <h3>Sign Up</h3>
            </div>
        <div class="panel-body">
            <form id="signUp_FORM" action="/user/signUp" method="post">
                <div class="form-group">
                    <label for="signUp_id">Id</label>
                    <input type="text" class="form-control" id="signUp_id" name="id" placeholder="Id">
                </div>
                <div class="form-group">
                    <label for="signUp_password">Password</label>
                    <input type="password" class="form-control" id="signUp_password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="signUp_name">Name</label>
                    <input type="text" class="form-control" id="signUp_name" name="name" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="signUp_email">Email</label>
                    <input type="email" class="form-control" id="signUp_email" name="email" placeholder="Email">
                </div>
                <button type="submit" class="btn btn-lg btn-info btn-block">Sign up</button>
            </form>
        </div>
    </section>
    <script type="text/javascript">
        $(function() {
            $('#signUp_FORM').ajaxForm(function(data) {
                  alert(data.msg);

                  if (data.status === 'success') {
                      location.href = '/';
                  }
            });
        });
    </script>
</body>
</html>
