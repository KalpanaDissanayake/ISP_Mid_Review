<%@page import="com.gamestation.model.User"%>
<jsp:include page="WEB-INF/views/header.jsp"/>
<!DOCTYPE HTML>

<html>
    <head>
    
    <%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    	User user = (User) session.getAttribute("currentSessionUser");
    %>
    
    <title>CrypticalEnigma GameStation | Online CTF Gaming Site</title>
        
    <style>
        
        .mainImage{
            width: auto;
            text-align: center;
            height: 500px;
            background-image: url(images/banner.jpg);
			background-size: cover;
    		background-repeat: no-repeat;
    		background-position: center center;
    		margin-top: 70px;
        }
        
        .gamers{
            width: auto;
            text-align: center;
            color: white;
            background-color: #e74c3c;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            height: auto;
            margin-top: 50px;
            margin-bottom: 50px;
            padding: 40px;
        }
        
        .subContent{
        	background-size: contain;
        	background-repeat: no-repeat;
        	background-position: center center;
        	transition: transform 0.1s;
        }
        
        .subContent:hover{
			transform: scale(1.1);
        }
        
        .gamers a{
        	transition: color 0.2s;
        }
                
        .gamers a:hover{
        	color: #FFB900;
        }
        
        .about{
            width: auto;
            height: 300px;
            text-align: left;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            margin-top: 50px;
            margin-bottom: 50px;
            padding: 20px;
            padding-top: 10px;
        }
        
        .aboutContent{
            width: 800px;
            height: 200px;
            font-size: 20px;
            float: left;
        }
        
        .mainLogo{
            width: 200px;
            height: 200px;
            background-image: url(images/logo.png);
            background-size: cover;
    		background-repeat: no-repeat;
    		background-position: center center;
            float: right;
        }
        
        table #heading{
            font-size: 30px;
        }
        
        a{
        	text-decoration: none;
        	color: inherit;
        }
        
        
    </style>

        
    </head>
    <body>
    <div class="navbar-inner">
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                        <!-- Nav items -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="announcements.html">
                                    <i class="fa fa-bullhorn text-blue"></i>  Announcements
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="teams.html">
                                    <i class="fa fa-users text-pink"></i> Teams
                                </a>
                            </li>
                                                            <li class="nav-item">
                                    <a class="nav-link" href="login.html">
                                        <i class="fa fa-question text-red"></i> Challenges
                                    </a>
                                </li>
                                                                                        <li class="nav-item">
                                    <a class="nav-link" href="scoreboard.html">
                                        <i class="fa fa-list-ul text-yellow"></i> Scoreboard
                                    </a>
                                </li>
                                                        <li class="nav-item">
                                <a class="nav-link" href="rules.html">
                                    <i class="fa fa-gavel text-success"></i> Rules
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="faqs.html">
                                    <i class="fa fa-compass text-info"></i> FAQ
                                </a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="https://cryp.toc.tf/archive">
                                    <i class="fa fa-archive text-warning"></i> Archive
                                </a>
                            </li> -->
                                                            <li class="nav-item">
                                    <a class="nav-link" href="login.html">
                                        <i class="fa fa-sign-in-alt text-primary"></i> Login
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.html">
                                        <i class="fa fa-user-plus text-pink"></i> Register
                                    </a>
                                </li>
                                                    </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

	<!-- 
	<div class="mainImage">
        
    </div>
    -->
    
    <jsp:include page="WEB-INF/views/carousel.jsp"/>
    
    <div class="gamers">
        <h1>CTF_GAMERS ON ANY PLATFORM</h1>
        <table width="1200" align="center">
        <tr id="heading">
            <th width="300" height="50"></th>
            <th width="300" height="50"></th>
            <th width="300" height="50"></th>
        </tr>
        <tr>
            <th class="subContent" width="300" height="300" style="background-image: url(images/ps4.png); background-size: cover;"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/pc.png); background-size: cover;"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/xboxone.png); background-size: cover;"></th>
        </tr>
        <tr id="heading">
        <%if(user == null){ %>
        	<th colspan="3"><a href="register">LET THE HACKING BEGIN!</a></th>
        <%}else{ %>
        	<th colspan="4"><a href="games">Play Now!</a></th>
        <%} %>
        </tr>
        </table>
    </div>
    
    <div class="gamers" style="background-color: #717171;">
        <h1>CRYPTICAL_ENIGMA_CHALENGERS</h1>
        <table width="1200" align="center">
       
        <tr>
            <th class="subContent" width="300" height="300" style="background-image: url(images/action.png);"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/racing.png);"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/sports.png);"></th>
            <th class="subContent" width="300" height="300" style="background-image: url(images/puzzle.png);"></th>
        </tr>
        
        
        <tr id="heading">
        <%if(user == null){ %>
        	<th colspan="4"><a href="register">LET THE HACKING BEGIN!</a></th>
        <%}else{ %>
        	<th colspan="4"><a href="games">Play Now!</a></th>
        <%} %>
        </tr>
        </table>
    </div>
    
    <div class="gamers" style="background-color: white;">
        <h1 style="color: black;">PlayerUnknown's Battlegrounds CTF_Gameplay</h1>
        
        <iframe width="1200" height="540" src="https://www.youtube-nocookie.com/embed/dHuk72sMljE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        
    </div>
        
    <div class="about">
        <h1>About Us</h1>
        <div class="aboutContent">
            <p>
                Welcome to CrypticalEnigma GameStation. This is the best platform to all your CTF gaming related needs that also helps players to communicate with the most up-to-date technology.
                <br/>CrypticalEnigma GameStation is a high-end enthusiast online CTF gaming site offering the best in high performance gaming with a reliable and exceptional customer service.
            </p>
        </div>
        <div class="mainLogo"></div>
    </div>
    
    <jsp:include page="WEB-INF/views/scrolltop.jsp"/>
    
	<jsp:include page="WEB-INF/views/footer.jsp"/>
</body>
</html>