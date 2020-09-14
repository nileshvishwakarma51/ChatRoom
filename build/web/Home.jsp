<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com - No Copyright -->
        <title>Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="../../fonts.googleapis.com/css55d0.css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="../../fonts.googleapis.com/css5d2a.css?family=Lato" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <link rel="stylesheet" type="text/css" href="HomeCss.css">
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
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                        <li><a data-toggle="modal" data-target="#myModal1" href="#">REGISTER</a></li>
                        <li><a data-toggle="modal" data-target="#myModal" href="#">LOGIN</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- LOGIN MODAL -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2 style="text-align: center;"><b>LOGIN</b></h2>
                    </div>
                    <div class="modal-body">
                        <form role="form" action="login.jsp" method="post">
                            <div class="form-group">
                                <label for="email">Username:</label>
                                <input type="text" class="form-control" id="email" name="userName" placeholder="Enter username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password">
                            </div>
                            <button type="submit" class="btn btn-default"><b>LOGIN</b></button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <!-- REGISTER MODAL -->
        <div class="modal fade" id="myModal1" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2 style="text-align: center;"><b>SIGN UP</b></h2>
                    </div>
                    <div class="modal-body">
                        <form role="form" action="Register.jsp" method="post">
                            <div class="form-group">
                                <label for="email">First Name:</label>
                                <input type="text" class="form-control" name="firstName" id="email" placeholder="Enter Fisrt Name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Last Name:</label>
                                <input type="text" class="form-control" name="lastName" id="email" placeholder="Enter Last Name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Username:</label>
                                <input type="text" class="form-control" name="userName" id="email" placeholder="Enter username" required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Email:</label>
                                <input type="email" class="form-control" name="email" id="pwd" placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" name="password" id="pwd" placeholder="Enter password" required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Confirm Password:</label>
                                <input type="password" class="form-control" name="confirmpassword" id="compwd" placeholder="Enter password again" required>
                            </div>
                            <button type="submit" class="btn btn-default"><b>Submit</b></button>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <div class="jumbotron text-center">
            <h1>CHAT ROOM</h1> 
            <p>Any Body Can Chat</p> 
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Explore Website</button>
        </div>

        <!-- Container (About Section) -->
        <div id="about" class="container-fluid">
            <h2>About Us</h2><br>
            <h4>This is the website which is for the people who want to connect to other people and want to chat with new people easily</h4>
        </div>

        <div class="container-fluid bg-grey">
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-globe logo slideanim"></span>
                </div>
                <div class="col-sm-8">
                    <h2>Our Values</h2><br>
                    <h4><strong>MISSION:</strong>Our mission is to provide a way through which people can connect with each other.</h4><br>
                    <p><strong>VISION:</strong>Our vision is to give a plattform where user can connect to do chat with people.</h4><br>
                </div>
            </div>
        </div>

        <!-- Container (Services Section) -->
        <div id="services" class="container-fluid text-center">
            <h2>SERVICES</h2>
            <h4>What we offer</h4>
            <br>
            <div class="row slideanim">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-home logo-small"></span>
                    <h4>Area</h4>
                    <p>Where You can chat</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-eye-open logo-small"></span>
                    <h4>Easy</h4>
                    <p>Easy to use</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-search logo-small"></span>
                    <h4>SEARCH</h4>
                    <p>Search people by id</p>
                </div>
            </div>
            <br><br>
            <div class="row slideanim">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-lock logo-small"></span>
                    <h4>PRIVACY</h4>
                    <p>All deatils are secured</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-certificate logo-small"></span>
                    <h4>CERTIFIED</h4>
                    <p>Certified Website</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-wrench logo-small"></span>
                    <h4 style="color:#303030;">Avaibility</h4>
                    <p>Always ready for maintainence</p>
                </div>
            </div>
        </div>



        <!-- Container (Contact Section) -->
        <div id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> Indore,India</p>
                    <p><span class="glyphicon glyphicon-phone"></span> +91 1234567890</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>    
                </div>
                <div class="col-sm-7 slideanim">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" type="submit">Send</button>
                        </div>
                    </div>  
                </div>
            </div>
        </div>

        <div >
            <h2 style="text-align: center;">Our Location</h2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3681.138570742294!2d75.86957401479427!3d22.685884885124548!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fce93bae3ac1%3A0xd93c472bc377377e!2sIT+Park+Parking!5e0!3m2!1sen!2sin!4v1566356748759!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

        <footer class="container-fluid text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            
        </footer>

        <script>
            
            
            $(document).ready(function () {
                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                });

                $(window).scroll(function () {
                    $(".slideanim").each(function () {
                        var pos = $(this).offset().top;

                        var winTop = $(window).scrollTop();
                        if (pos < winTop + 600) {
                            $(this).addClass("slide");
                        }
                    });
                });
            }
            )
        </script>

    </body>

    <!-- Mirrored from www.w3schools.com/bootstrap/tryit.asp?filename=trybs_theme_company_complete_animation by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 28 Jan 2016 12:33:00 GMT -->
</html>





