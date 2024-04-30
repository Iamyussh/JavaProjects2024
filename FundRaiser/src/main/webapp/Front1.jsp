<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html xmlns="http://www.w3.org/1999/xhtml"
		xmlns:h="http://xmlns.jcp.org/jsf/html"
		xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url("home.png");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100%;
}

.container {
	width: 50%;
	margin: 50px auto;
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
}

.hd {
	font-size: 45px;
	margin-right: 1037px;
	font-family: 'cursive';
	'
}

.glow {
	margin-right: 1032px;
	font-size: 24px;
	color: #FF5722; /* Orange */
	text-align: center;
	font-family: 'Arial', sans-serif;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
	animation: glow 1s ease-in-out infinite alternate;
	display: list-item;
}

h2{
font-weight: 100;
}

@
-webkit-keyframes glow {from { text-shadow:0010px#fff, 0020px#fff, 0030px#e60073,
	0040px#e60073, 0050px#e60073, 0060px#e60073, 0070px#e60073;
	
}

to {
	text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px
		#ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
}

}
.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"], select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

.btn:hover {
	background-color: #45a049;
}

.error-message {
	color: red;
}

.header {
	overflow: hidden;
	background-color: #f1f1f1;
	padding: 20px 10px;
}

/* Style the header links */
.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
	font-size: 25px;
	font-weight: bold;
}

/* Change the background color on mouse-over */
.header a:hover {
	background-color: #ddd;
	color: black;
}

/* Style the active/current link*/
.header a.active {
	background-color: dodgerblue;
	color: white;
}

/* Float the link section to the right */
.header-right {
	float: right;
}

/* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */
@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}

-- CSS for header----


body {
	font-family: Helvetica;
	margin: 0;
	 min-height: 100vh;
    display: flex;
    flex-direction: column;
}

a {
	text-decoration: none;
	color: #000;
}

.site-header {
	border-bottom: 1px solid #ccc;
	padding: .5em 1em;
	background-color: #e5dafb;
}

.site-header::after {
	content: "";
	display: table;
	clear: both;
}

.site-identity {
	float: left;
}

.site-identity h1 {
	font-size: 1.5em;
	margin: .7em 0 .3em 0;
	display: inline-block;
}

.site-identity img {
	max-width: 55px;
	float: left;
	margin: 0 10px 0 0;
}

.site-navigation {
	float: left;
}

.site-navigation ul, li {
	margin: 0 55px;
	padding: 0;
	text-align: right;
}

.site-navigation li {
	display: inline-block;
	margin: 1.4em 1em 1em 1em;
}

.acc-icon {
	float: right;
	margin-top: 20px;
	margin-right: 20px;
}

.capsule-btn {
	padding: 10px 20px;
	border: none;
	border-radius: 30px;
	background-color: #8351b9;
	color: #f5f2f2;
	font-size: 23px;
	cursor: pointer;
	outline: none;
	float: right;
	margin-top: 7px;
	margin-right: 245px;
}

/* Hover effect */
.capsule-btn:hover {
	background-color: #0056b3;
	/* Change to a darker shade of your background color */
}

.contact-us {
position: fixed;
    bottom: -22px;
    right: 153px;
    background-color: #7c3030;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    z-index: 1000;
    margin-bottom: 19px;
    height: 43px;
    width: 138px;
    text-align-last: center;
	
}



/*  for the search bar*/

* {
  outline: none;
}

html,
body {
  height: 100%;
  min-height: 100%;
}

body {
  margin: 0;
  background-color: #ffd8d8;
}

.tb {
  display: table;
  width: 100%;
}

.td {
  display: table-cell;
  vertical-align: middle;
}

.input,
button {
  color: #fff;
  font-family: Nunito;
  padding: 0;
  margin: 0;
  border: 0;
  background-color: transparent;
}

#cover {
  position: absolute;
  top: 50%;
  left: 0;
  right: 0;
  width: 826px;
  padding: 35px;
  margin: -83px auto 0 auto;
  background-color: #ff7575;
  border-radius: 20px;
  box-shadow: 0 10px 40px #ff7c7c, 0 0 0 20px #ffffffeb;
  transform: scale(0.6);
  margin-top: 200px;
}

form {
  height: 96px;
}

input[type="text"] {
  width: 100%;
  height: 96px;
  font-size: 60px;
  line-height: 1;
}

input[type="text"]::placeholder {
  color: #e16868;
}

#s-cover {
  width: 1px;
  padding-left: 35px;
}

button {
  position: relative;
  display: block;
  width: 84px;
  height: 96px;
  cursor: pointer;
}

#s-circle {
  position: relative;
  top: -8px;
  left: 0;
  width: 43px;
  height: 43px;
  margin-top: 0;
  border-width: 15px;
  border: 15px solid #fff;
  background-color: transparent;
  border-radius: 50%;
  transition: 0.5s ease all;
}

button span {
  position: absolute;
  top: 68px;
  left: 43px;
  display: block;
  width: 45px;
  height: 15px;
  background-color: transparent;
  border-radius: 10px;
  transform: rotateZ(52deg);
  transition: 0.5s ease all;
}

button span:before,
button span:after {
  content: "";
  position: absolute;
  bottom: 0;
  right: 0;
  width: 45px;
  height: 15px;
  background-color: #fff;
  border-radius: 10px;
  transform: rotateZ(0);
  transition: 0.5s ease all;
}

#s-cover:hover #s-circle {
  top: -1px;
  width: 67px;
  height: 15px;
  border-width: 0;
  background-color: #fff;
  border-radius: 20px;
}

#s-cover:hover span {
  top: 50%;
  left: 56px;
  width: 25px;
  margin-top: -9px;
  transform: rotateZ(0);
}

#s-cover:hover button span:before {
  bottom: 11px;
  transform: rotateZ(52deg);
}

#s-cover:hover button span:after {
  bottom: -11px;
  transform: rotateZ(-52deg);
}
#s-cover:hover button span:before,
#s-cover:hover button span:after {
  right: -6px;
  width: 40px;
  background-color: #fff;
}


.abv-sbar{

text-align: center;
margin-top: 190px;
    font-family: system-ui;
    font-weight: 400;
}


#footer {
            position:relative;
           
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
             margin-top: auto;
        }

.octagon {
  width: 100px;
  height: 100px;
  background: orange;
  position: relative;
}

.octagon:before{
   content: "";
  position: absolute;
  top: 0;
  left: 0;
  border-bottom: 29px solid orange;
  border-left: 29px solid rgb(24,24,24);
  border-right: 29px solid rgb(24,24,24);
  width: 42px;
  height: 0;
}
.octagon:after{
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  border-top: 29px solid orange;
  border-left: 29px solid rgb(24,24,24);
  border-right: 29px solid rgb(24,24,24);
  width: 42px;
  height: 0;
}.octagon {
  width: 100px;
  height: 100px;
  background: orange;
  position: relative;
}

.octagon:before {
   content: "";
  position: absolute;
  top: 0;
  left: 0;
  border-bottom: 29px solid orange;
  border-left: 29px solid rgb(24,24,24);
  border-right: 29px solid rgb(24,24,24);
  width: 42px;
  height: 0;
}
.octagon:after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  border-top: 29px solid orange;
  border-left: 29px solid rgb(24,24,24);
  border-right: 29px solid rgb(24,24,24);
  width: 42px;
  height: 0;
}


</style>

</head>

<body>
	<header class="site-header">

		<div class="site-identity">

			<a href="#"><h:graphicImage value="log.png" alt="Site Name" /></a>
			<h1>
				<a href="#">Ayush Foundation</a>
			</h1>
		</div>
		<a href="#"><h:graphicImage value="account.png"
				style="float:right; margin-right:10px;height: 60px" /></a>
		<nav class="site-navigation">
			<ul class="nav">
				<li><a href="#">Home </a></li>
				<li><a href="#">Donate</a></li>
				<li><a href="#">Lend</a></li>
				<li><a href="#">Pricing</a></li>
			</ul>
		</nav>
		<h:commandButton value="Start a Fundraiser" styleClass="capsule-btn" />
	</header>
	
	<h:form>
		<h1 class="hd">Ayush Foundation</h1>
	<h1 class="glow">Free Crowd Funding for India</h1>
	<h2>Empowering Health, One Donation at a Time</h2>


		<div class="contact-us">
			<h3>Contact Us <a href="#"><h:graphicImage value="chat.png" alt="Site Name" style=" height:29px"/></a></h3>
		</div>
		
		
		<div class="abv-sbar">
		<h2 class="srh">Thousands of Helping people are on Ayush Foundation</h2>
		
		</div>
		<div class="octagon"></div><div class="octagon"></div>
		
		
		<div id="cover">
  <form method="get" action="">
    <div class="tb">
      <div class="td"><input type="text" placeholder="Search" required></div>
      <div class="td" id="s-cover">
        <button type="submit">
          <div id="s-circle"></div>
          <span></span>
        </button>
      </div>
    </div>
  </form>
</div>

	</h:form>
	

</body>


<%-- <footer id="footer">
<p>contact</p>
</footer>   --%>
	</html>
	
</f:view>