<%--
  Created by IntelliJ IDEA.
  User: yooonsj
  Date: 2016. 11. 11.
  Time: AM 10:09
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
                <h3>Sign In</h3>
            </div>
            <div class="panel-body">
                <form id="signIn_FORM" action="/user/signIn" method="post">
                    <div class="form-group">
                        <label for="signIn_id">Id</label>
                        <input type="text" class="form-control" id="signIn_id" name="id" placeholder="Id">
                    </div>
                    <div class="form-group">
                        <label for="signIn_password">Password</label>
                        <input type="password" class="form-control" id="signIn_password" name="password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        $(function() {
            $('#signIn_FORM').ajaxForm(function(data) {
                  alert(data.msg);

                  if (data.status === 'success') {
                      location.href = '/';
                  }
            });
        });
    </script>
</body>
</html>
