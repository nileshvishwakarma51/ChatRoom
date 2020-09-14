<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com - No Copyright -->
        <title>User Profile</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="../../fonts.googleapis.com/css55d0.css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="../../fonts.googleapis.com/css5d2a.css?family=Lato" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
            body {
                font: 400 15px Lato, sans-serif;
                line-height: 1.8;
                color: #818181;
            }
            h2 {
                font-size: 24px;
                text-transform: uppercase;
                color: #303030;
                font-weight: 600;
                margin-bottom: 30px;
            }
            h4 {
                font-size: 19px;
                line-height: 1.375em;
                color: #303030;
                font-weight: 400;
                margin-bottom: 30px;
            }  
            .jumbotron {
                background-color: #f4511e;
                color: #fff;
                padding: 100px 25px;
                font-family: Montserrat, sans-serif;
            }
            .container-fluid {
                padding: 60px 50px;
            }
            .bg-grey {
                background-color: #f6f6f6;
            }
            .logo-small {
                color: #f4511e;
                font-size: 50px;
            }
            .logo {
                color: #f4511e;
                font-size: 200px;
            }
            .thumbnail {
                padding: 0 0 15px 0;
                border: none;
                border-radius: 0;
            }
            .thumbnail img {
                width: 100%;
                height: 100%;
                margin-bottom: 10px;
            }
            .carousel-control.right, .carousel-control.left {
                background-image: none;
                color: #f4511e;
            }
            .carousel-indicators li {
                border-color: #f4511e;
            }
            .carousel-indicators li.active {
                background-color: #f4511e;
            }
            .item h4 {
                font-size: 19px;
                line-height: 1.375em;
                font-weight: 400;
                font-style: italic;
                margin: 70px 0;
            }
            .item span {
                font-style: normal;
            }
            .panel {
                border: 1px solid #f4511e; 
                border-radius:0 !important;
                transition: box-shadow 0.5s;
            }
            .panel:hover {
                box-shadow: 5px 0px 40px rgba(0,0,0, .2);
            }
            .panel-footer .btn:hover {
                border: 1px solid #f4511e;
                background-color: #fff !important;
                color: #f4511e;
            }
            .panel-heading {
                color: #fff !important;
                background-color: #f4511e !important;
                padding: 25px;
                border-bottom: 1px solid transparent;
                border-top-left-radius: 0px;
                border-top-right-radius: 0px;
                border-bottom-left-radius: 0px;
                border-bottom-right-radius: 0px;
            }
            .panel-footer {
                background-color: white !important;
            }
            .panel-footer h3 {
                font-size: 32px;
            }
            .panel-footer h4 {
                color: #aaa;
                font-size: 14px;
            }
            .panel-footer .btn {
                margin: 15px 0;
                background-color: #f4511e;
                color: #fff;
            }
            .navbar {
                margin-bottom: 0;
                background-color: #f4511e;
                z-index: 9999;
                border: 0;
                font-size: 12px !important;
                line-height: 1.42857143 !important;
                letter-spacing: 4px;
                border-radius: 0;
                font-family: Montserrat, sans-serif;
            }
            .navbar li a, .navbar .navbar-brand {
                color: #fff !important;
            }
            .navbar-nav li a:hover, .navbar-nav li.active a {
                color: #f4511e !important;
                background-color: #fff !important;
            }
            .navbar-default .navbar-toggle {
                border-color: transparent;
                color: #fff !important;
            }
            footer .glyphicon {
                font-size: 20px;
                margin-bottom: 20px;
                color: #f4511e;
            }
            .slideanim {visibility:hidden;}
            .slide {
                animation-name: slide;
                -webkit-animation-name: slide;	
                animation-duration: 1s;	
                -webkit-animation-duration: 1s;
                visibility: visible;			
            }
            @keyframes slide {
                0% {
                    opacity: 0;
                    -webkit-transform: translateY(70%);
                } 
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0%);
                }	
            }
            @-webkit-keyframes slide {
                0% {
                    opacity: 0;
                    -webkit-transform: translateY(70%);
                } 
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0%);
                }
            }
            @media screen and (max-width: 768px) {
                .col-sm-4 {
                    text-align: center;
                    margin: 25px 0;
                }
                .btn-lg {
                    width: 100%;
                    margin-bottom: 35px;
                }
            }
            .modal
            {
                color: black;
                z-index: 100001 !important;
            }
            .modal-backdrop
            {
                z-index: 100000 !important;
            }
            .modal-dialog 
            {
                width: 450px;
            }
            .btn-default
            {
                background-color: yellow;
                width: 100%
            }
            .close
            {
                color: black;
                opacity: 1;
            }
            button.close 
            {
                background-color: yellow;
                width: 10%;
            }

            .formHeadingTop
            {
                margin-top: 0px;
                margin-bottom: 5px;
            }

            .formHeading
            {
                margin-top: 50px;
                margin-bottom: 5px;
            }

            @media screen and (max-width: 480px) {
                .logo 
                {
                    font-size: 150px;
                }
                .modal-dialog 
                {
                    width: 95%;
                }
            }
        </style>
    </head>
    <body id="myPage" >

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
                        <li class="active"><a href="UserProfile.jsp">PROFILE</a></li>
                        <li><a href="Chat.jsp">CHAT</a></li>
                        <li><a href="AddFriend.jsp">ADD FRIEND</a></li>
                        <li><a href="Home.jsp">LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <hr>
        <div class="container bootstrap snippet" id="profile">
            <div class="row">
                <div class="col-sm-10"><h1></h1></div>

            </div>
            <div class="row">
                <div class="col-sm-3"><!--left col-->


                    <div class="text-center">
                        <form class="form" action="UpdateUserProfileImage" method="post" enctype="multipart/form-data">
                            <img src="" class="avatar img-circle img-thumbnail" alt="avatar">
                            <h6>Upload a different photo...</h6>
                            <input type="file"  name="userImage" class="text-center center-block file-upload">
                            <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                    </div>
                            </div>
                        </form>
                    </div></hr><br>


                </div><!--/col-3-->
                <div class="col-sm-9">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">Profile</a></li>
                        <li><a data-toggle="tab" href="#messages">Edit</a></li>
                    </ul>


                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <hr>
                            <form class="form from-horizontal" action="##" method="post" id="registrationForm">
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeadingTop">First name</h4>
                                        <input type="text" class="form-control" name="first_name" id="first_name" placeholder="" title="enter your first name if any." readonly="">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeadingTop">Last name</h4>
                                        <input type="text" class="form-control" name="last_name" id="last_name" placeholder="" title="enter your last name if any." readonly="">
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeading">Full Name</h4>
                                        <input type="text" class="form-control" name="phone" id="phone" placeholder="" title="enter your phone number if any." readonly="">
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeading">Email</h4>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="" title="enter your email." readonly="">
                                    </div>
                                </div>
                            </form>

                            <hr>

                        </div><!--/tab-pane-->
                        <div class="tab-pane" id="messages">
                            <hr>
                            <form class="form" action="UpdateProfile" method="post" id="registrationForm">
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeadingTop">First name</h4>
                                        <input type="text" class="form-control" name="firstName" id="first_name" placeholder="" title="enter your first name if any.">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeadingTop">Last name</h4>
                                        <input type="text" class="form-control" name="lastName" id="last_name" placeholder="" title="enter your last name if any.">
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeading">Email</h4>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="" title="enter your email.">
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h4 class="formHeading">Password</h4>
                                        <input type="password" class="form-control" name="password" id="password" placeholder="" title="enter your password.">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                        <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                                    </div>
                                </div>
                            </form>

                        </div><!--/tab-pane-->
                    </div><!--/tab-content-->

                </div><!--/col-9-->
            </div><!--/row-->


            <footer class="container-fluid text-center">
                <a href="#myPage" title="To Top">
                    <span class="glyphicon glyphicon-chevron-up"></span>
                </a>
                <p>© SKY WEBSITES. All Rights Reserved.</p>		
            </footer>



    </body>
</html>
