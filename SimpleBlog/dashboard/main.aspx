<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="SimpleBlog.dashboard.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <link rel='stylesheet' href='http://fonts.font.im/css?family=Source+Sans+Pro:400,300,600,700,300italic,400italic,600italic' />

    <%--echarts--%>
    <script src="../Scripts/echarts.min.js"></script>

</head>
<body>
    
    <section class="content-header">
        <h1>后台主页
        <small>主页</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>主页</a></li>
            <li class="active">控制台</li>
        </ol>
    </section>

    
    <section class="content">
       
        <div class="container-fluid">
            <div class="row">
                <div class="callout callout-info">
                    <h4>当前系统时间</h4>

                    <h4 id="current-time"></h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-xs-6">
               
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="blog" /></h3>

                        <p>文章总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-document"></i>
                    </div>
                    <a href="listblog.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
           
           <%-- <div class="col-lg-3 col-xs-6">
               
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="type" /></h3>

                        <p>分类总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="listtype.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>--%>
            <div class="col-lg-3 col-xs-6">
               
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="words" /></h3>

                        <p>留言总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-chatbubbles"></i>
                    </div>
                    <a href="listcontact.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6">
                
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="user" /></h3>

                        <p>用户总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person"></i>
                    </div>
                    <a href="listuser.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
               
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="comment" /></h3>

                        <p>评论总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-pricetag"></i>
                    </div>
                    <a href="listcomment.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
          
        </div>

        <div class="row">
             <div id="zhuzhuang" style="width: 600px;height:400px;float:left;display:inline"></div>
            <div id="bingzhuang" style="width: 500px;height:400px;float:left;display:inline"></div>
        </div>
        
        
    </section>
 
            
            
    <%--获取当前日期--%>
    <script>       
        function run() {
            var today;

            today = new Date();

            var week = "星期" + "日一二三四五六".charAt(new Date().getDay());

            document.getElementById("current-time").innerHTML ="今天是" + today.getFullYear() + "年"

                + (today.getMonth() + 1) + "月" + today.getDate() + "日"+ " " + week + " " +
                + today.getHours() + "时" + today.getMinutes() + "分" + today.getSeconds() + "秒";

            setTimeout('run()', 1000);
        }
        run();
    </script> 

    <%-- echarts-图--%>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var zhuzhuang = echarts.init(document.getElementById('zhuzhuang'));
        var bingzhuang = echarts.init(document.getElementById('bingzhuang'));
        var wz = document.getElementById("blog").innerText;
        var yh = document.getElementById("user").innerText;
        var pl = document.getElementById("comment").innerText;
        var ly = document.getElementById("words").innerText;
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '数据概况'
            },
            tooltip: {},
            //legend: {
            //    data: ['销量']
            //},
            xAxis: {
                data: ["文章", "留言", "用户", "评论"]
            },
            yAxis: {},
            series: [{
                name: '总数',
                type: 'bar',
                data: [wz, ly, yh, pl]
            }]
        };
        var option1 = {
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: '55%',
                    data: [
                        { value: wz, name: '文章总数' },
                        { value: yh, name: '用户人数' },
                        { value: pl, name: '评论个数' },
                        { value: ly, name: '留言条数' },
                        { value: 10, name: '分类条数' }
                    ]
                }
            ]
                
        }
        // 使用刚指定的配置项和数据显示图表。
        
        zhuzhuang.showLoading();
        zhuzhuang.hideLoading();
        zhuzhuang.setOption(option);
        bingzhuang.setOption(option1);
    </script>
     <%-- echarts-饼状图--%>

   <%-- <script src="../bower_components/jquery/dist/jquery.min.js"></script>
   
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
    <script src="../dist/js/adminlte.min.js"></script>--%>
</body>
</html>
