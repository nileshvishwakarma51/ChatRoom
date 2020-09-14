<%
    String loginname = (String)session.getAttribute("loginname");
    System.out.println(loginname);
    if(loginname==null)
    {
        response.sendRedirect("Home.jsp");
        
    }
    session.setAttribute("loginname", loginname);
 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com - No Copyright -->
        <title>Add Friend</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="../../fonts.googleapis.com/css55d0.css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="../../fonts.googleapis.com/css5d2a.css?family=Lato" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="HomeCss.css">
        <style type="text/css">
            .MainDivision
            {
                margin-top: 70px;
            }
            .SearchFriend
            {
                background-color: white;
                margin-bottom: 30px;
                padding-bottom: 20px;
                display: flex;
                justify-content: center;
                border-bottom: solid black;
            }
            .AddFriend
            {
                background-color: white;
                display: flex;
                justify-content: center;
            }
            .AddFriendBody
            {
                width: 350px;
            }
            .SearchButton
            {
                background-color: #f4511e;
                color: white;
            }
            .SearchFriendBody
            {
                width: 350px;
                padding-bottom: 30px;
            }
            #SearchFriendHeading
            {
                margin-bottom: 10px;
            }
            #SearchFriendResult
            {
                width: 70%;
                height: 70px;
                background-color: black;
            }
            #SendFriendRequest
            {
                background-color:#f4511e;
                color:white;
                width: 100%;
            }
            .SearchResultCard
            {
                width:300px;
                background-color: white;
                padding: 25px;
                border:solid black;
            }
            .UsernameTitle
            {
                margin-bottom: 5px;
                text-align: center;
            }
            .FriendRequestArrive
            {
                width:300px;
                background-color: white;
                padding: 25px;
                border:solid black;
                display: flex;
            }
            .AddFriendButton
            {
                background-color:#f4511e;
                color:white;
                width: 50%;
                margin-left: 5px;
                margin-right: 5px;
            }
        </style>


    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#myPage">CHAT ROOM</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="UserProfile.jsp">PROFILE</a></li>
                        <li><a href="chat.jsp">CHAT</a></li>
                        <li class="active"><a href="AddFriend.jsp">ADD FRIEND</a></li>
                        <li><a href="logout.jsp">LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row MainDivision">

                <div class="SearchFriend col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="SearchFriendBody">
                        <h4 id='SearchFriendHeading'><b>SEARCH FRIEND</b></h4>

                        <input type="text" id='searchUsers' autocomplete="off" class="form-control" name="searchUsername" placeholder="Enter UserName" required>
                        <div id='result'></div>
                       




                        <div class='container'>
                            <div id="response"></div>
                        </div>

                        <div class='container'>
                            <div id="test"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class='container'>
            <div id="friendreq"></div>
        </div>

<!--        <footer class="container-fluid text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>

        </footer>-->

        <script>

            //search friend ajax
            $("#searchUsers").keyup(function () {
                var name = $("#searchUsers").val();
                if (name == '') {
                    $("#result").html("enter name first");

                } else {
                    $.ajax({
                        url: "search.jsp",
                        method: "POST",
                        data: {name: name},
                        success: function (data) {
                            $("#result").html(data);

                        }


                    });
                }

            });

            //send request
            $(document).on('click', '#sendbtn', function () {

                var name = $(this).data("id3");
                


                $.ajax({
                    url: "sendRequest.jsp",
                    method: "POST",
                    data: {name: name},
                    success: function (data)
                    {
                        $("#response").fadeIn(500).html(data).fadeOut(3000);
                    }
                });
            });

            //fetching request
            $(document).ready(function () {
              setInterval(function () {
                $.ajax({
                    url: "request.jsp",
                    method: "POST",
                    success: function (data)
                    {
                        $("#friendreq").html(data);
                    }
                });
            },3000);
            });

            //Accept 
            $(document).on('click', '.btn-accept', function () {

                var username = $(this).data("id4");
                var value = "accept";
                


                $.ajax({
                    url: "reqResponse.jsp",
                    method: "POST",
                    data: {name: username , value:value},
                    success: function (data)
                    {
                        $("#test").fadeIn(500).html(data).fadeOut(3000);
                    }
                });
            });


            //reject
            $(document).on('click', '.btn-reject', function () {

                var username = $(this).data("id5");
                var value = "reject";
                


                $.ajax({
                    url: "reqResponse.jsp",
                    method: "POST",
                    data: {name: username , value:value},
                    success: function (data)
                    {
                        $("#test").fadeIn(500).html(data).fadeOut(3000);
                    }
                });
            });





        </script>












    </body>
</html>
