<%-- <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog Amani</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
  <link rel="stylesheet" href="/Users/mac/eclipse-workspace/blogapp/src/main/resources/static/css/myStyles.css
  ">


</head>
<body >



<header class="mb-auto">

    <div>
      <h3 >${ Welcome}</h3>
      
${pageContext["request"].userPrinciple.principal}

<security:authorize access="isAuthenticated()">


<security:authentication property="principal.authorities" />

<div style="text-align:right; float:right ;  ">

<b>Hi: ${user.getFirstName()} ${user.getLastName()}</b>
<a href="${appName}logout">Logout</a>
</div>
      
      
      <nav class="nav nav-masthead justify-content-center float-md-end">
    <a class="nav-link active" aria-current="page" href="${appName}">Home</a>
    
    <a class="nav-link active" aria-current="page" href="${appName}author/index">Authors</a>
    
    
    <a class="nav-link active" aria-current="page" href="${appName}author/add">Add Author</a>
 

    <a class="nav-link active" aria-current="page" href="${appName}article/index">Articles</a>

    
    <a class="nav-link active" aria-current="page" href="${appName}article/add">Add Article</a>
    
        <a class="nav-link" href="https://www.linkedin.com/in/amani-almutairi-0b0079150/">Contact</a>
      </nav>
    </div>
    
    
    <b>Hi: <security:authentication property="principal.username" /> </b>
<a href="${appName}logout">Logout</a>
</div>
 </security:authorize>
 

 <security:authorize access="!isAuthenticated()">

  
      <nav class="nav nav-masthead justify-content-center float-md-end">
      
    <a class="nav-link active" aria-current="page" href="${appName}">Home</a>
    
    <a class="nav-link active" aria-current="page" href="${appName}author/index">Authors</a>
    

    <a class="nav-link active" aria-current="page" href="${appName}article/index">Articles</a>

    
    
        <a class="nav-link" href="https://www.linkedin.com/in/amani-almutairi-0b0079150/">Contact</a>
      </nav>

 <div style="text-align:right; float:right;  ">
<a href="${appName}user/login">Login</a>
<a href="${appName}user/registration">Create New Account</a>
</div>

</security:authorize>

    
  </header>


<c:if test="${message != null}">

<div class="alert alert-primary fade show" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
</c:if>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').fadeOut(4000);
	</script>
	
	
	<c:if test="${message.equals('Username or password is incorrect')}">


<div class="alert alert-warning" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$('.fade').fadeOut(4000);
	</script>
	
</c:if>

	
	<c:if test="${message.equals('you are logged in successfully')}">

<div class="alert alert-success" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$('.fade').fadeOut(4000);
	</script>
	
</c:if>


	<c:if test="${message.equals('log out successfully')}">

<div class="alert alert-info" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$('.fade').fadeOut(4000);
	</script>
	
</c:if>


	<c:if test="${message.equals('User registered successfully')}">

<div class="alert alert-success" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$('.fade').fadeOut(4000);
	</script>
	
</c:if>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').slideUp(4000);
	</script>
	
	
	</body>
	
	
<footer>
    <p>&copy 2021 - Amanialmutairi <a href="https://www.linkedin.com/in/amani-almutairi-0b0079150/" class="text-white">@Amanii</a> </footer>	
	
	
	

	


</html> --%>




<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog APP</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

  <link rel="stylesheet" href="/Users/mac/eclipse-workspace/blogapp/src/main/resources/static/css/myStyles.css
  ">




</head>

<style>


body {
	padding: 30px;
}
	header	{
	background-image: url('http://www.wallpapertip.com/wmimgs/0-3795_wallpaper-books-library-shelves-lighting-hd-book-library.jpg');
	background-position: center; 
	background-repeat: no-repeat; 
	background-size: cover; 
	height: 500px;}

footer{
     position: fixed; 
            padding: 10px 10px 0px 10px; 
            bottom: 0; 
            width: 100%; 
            /* Height of the footer*/  
            height: 40px; 
            background: grey; 
            
            
  background-color:#26272b;
  font-size:15px;
  line-height:24px;
  color:#737373;
/* Height of the footer */
   text-align:center;
}


h3{
   text-align:center;
     color:#F8F8FF
     ;
       font-family: 'Brush Script MT', cursive;
     
}


.hoverable{
  display:inline-block;
  backface-visibility: hidden;
  vertical-align: middle;
  position:relative;
  box-shadow: 0 0 1px rgba(0,0,0,0);
  transform: translateZ(0);
  transition-duration: .3s;
  transition-property:transform;
}

.hoverable:before{
  position:absolute;
  pointer-events: none;
  z-index:-1;
  content: '';
  top: 100%;
  left: 5%;
  height:10px;
  width:90%;
  opacity:0;
  background: -webkit-radial-gradient(center, ellipse, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
  background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
  /* W3C */
  transition-duration: 0.3s;
  transition-property: transform, opacity;
}

.hoverable:hover, .hoverable:active, .hoverable:focus{
  transform: translateY(-5px);
}
.hoverable:hover:before, .hoverable:active:before, .hoverable:focus:before{
  opacity: 1;
  transform: translateY(-5px);
}

.nav > a{
  padding-left:30px;
  padding-right:30px;
}

.block2 {
    color: blue;
    width: 70px;
    position: absolute;
    top: 40px;
    right: 40px;
}


</style>

<header>


<h3>${Welcome}</h3>

<%-- ${pageContext["request"].userPrinciple.principal}
 --%>
 
<security:authorize access="isAuthenticated()">
<%-- <security:authentication property="principal.authorities" /> --%>


      <nav class="nav nav-masthead justify-content-center float-md-end">
    <a  class="hoverable"  class="nav-link active" aria-current="page" href="${appName}">Home</a>
    
    <a class="hoverable" class="nav-link active" aria-current="page" href="${appName}author/index">Authors</a>
    
    
    <a class="hoverable" class="nav-link active" aria-current="page" href="${appName}author/add">Add Author</a>
 

    <a class="hoverable" class="nav-link active" aria-current="page" href="${appName}article/index">Articles</a>

    
    <a class="hoverable" class="nav-link active" aria-current="page" href="${appName}article/add">Add Article</a>
    
        <a class="hoverable" class="nav-link" href="https://www.linkedin.com/in/amani-almutairi-0b0079150/">Contact</a>
      </nav>
      
<%-- 
<a href="${appName}">Home</a>

<a href="${appName}author/add">Add Author</a>
<a href="${appName}author/index">Author</a>

<a href="${appName}article/add">Add Article</a>
<a href="${appName}article/index">Article</a> --%>

<div class='block2' style="text-align:right; float:right;">

<b>Hi: <security:authentication property="principal.username" /> </b>
<a href="${appName}logout">Logout</a>
</div>
 </security:authorize>
 
 
 <security:authorize access="!isAuthenticated()">
 
 
       <nav  class="nav nav-masthead justify-content-center float-md-end">
      
    <a class="hoverable" class="nav-link active" aria-current="page" href="${appName}">Home</a>
    
    <a  class="hoverable"  class="nav-link active" aria-current="page" href="${appName}author/index">Authors</a>
    

    <a class="hoverable"  class="nav-link active" aria-current="page" href="${appName}article/index">Articles</a>

    
    
        <a class="hoverable"  class="nav-link" href="https://www.linkedin.com/in/amani-almutairi-0b0079150/">Contact</a>
      </nav>
 
 <%-- 
<a href="${appName}">Home</a>

<a href="${appName}author/index">Author</a>

<a href="${appName}article/index">Article</a> --%>

<div class='block2' style="text-align:right; float:right; ">

<a class="hoverable" href="${appName}login">Sign in</a>
<a class="hoverable" href="${appName}user/registration">Sign up </a>
</div>

</security:authorize>

<hr>

<c:if test="${message != null}">

<div class="alert alert-primary fade show" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
</c:if>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').slideUp(4000);
	</script>



</header>
	
<footer>
    <p>&copy 2021 - Amanialmutairi <a href="https://www.linkedin.com/in/amani-almutairi-0b0079150/" class="text-white">@Amanii</a> </footer>	
	
	
</html>