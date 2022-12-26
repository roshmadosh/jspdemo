<%@ page import="link.hiroshisprojects.jspdemo.FunUtils.Country, java.util.*"%>

<div class="page student">
	<div class="page-container">
		<form action="index.jsp">
		
			<div class="form-inputs">
				<div class="form-input">
					<label for="firstname">First Name</label>
					<input type="text" name="firstname" />
				</div>
				<div class="form-input">
					<label for="lastname">Last Name</label>
					<input type="text" name="lastname" />
				</div>
				<div class="form-input">
					<select name="country">
						<% for (Country country : Country.values()) { %>
							<option><%= country.getLabel()%></option>
						<% } %>
					</select>
				</div>
			</div>
			
			<div class="form-buttons">
				<button type="submit">Submit</button>
			</div>
			
		</form>
	</div>
	<div class="page-container">
		<div class="session">
			<h2>Registered Students</h2> 		
			<%
				// get student items from session
				List<String> students = (List<String>) session.getAttribute("student-info");
				// if student doesn't exist, create one
				if (students == null) {
					students = new ArrayList<>();
					session.setAttribute("student-info", students);
				}
				// add form data if needed
				String firstname = request.getParameter("firstname");
				String lastname = request.getParameter("lastname");
				
				if (firstname != null & lastname != null) {
					String student = "Name: " + firstname + " " + lastname;
					students.add(student);
				}
			%>
			<%
				for (String student: students) {
					out.println("<p>" + student + "</p>");
				}
			%>
		</div>
	</div>
</div>