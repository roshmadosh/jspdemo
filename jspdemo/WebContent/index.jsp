<%@ page import="link.hiroshisprojects.jspdemo.FunUtils" %>

<html>
	<head>
		<link rel="stylesheet" href="styles/style.css" />
	</head>
	
	<body>
		<header>
			<jsp:include page="components/header.html" />
		</header>
		
		<main class="view-width">
			<jsp:include page="pages/student-form/student-form.html" />
		</main>
		<footer>
			<jsp:include page="components/footer.html" />
		</footer>
  </body>

</html>