<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webpage1.aspx.cs" Inherits="HTML5sample.Page.webpage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../Scripts/jquery-2.0.3.js"></script>

    <script>
        //var MYORIGIN = location.protocol + "//" + location.host;
        var MYORIGIN = "http://localhost:65291";

        window.addEventListener("message", function (e) {
            
            if (e.origin == MYORIGIN) {
                $("#Text1").val( e.data.date + "送信された値は[" + e.data.number + "]でした。");
            }
        }, false);

        $(document).ready(function () {
            var canvas = document.getElementById("can1");
            var context = canvas.getContext("2d");
            context.fillRect(0, 0, 150, 100);
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <aside>
        </aside>
        <section>
            <h1>taitole</h1>
            <h1>aa</h1>
        </section>

        <canvas id="can1" width="100" height="300"></canvas>

        <div>
        <input id="Text1" type="text" style="width:400px;" />
        </div>

        <input type="datetime" />
        <input type="file" multiple="multiple" />

        
    </form>
</body>
</html>
