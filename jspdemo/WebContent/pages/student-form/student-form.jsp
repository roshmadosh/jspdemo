<%@ page import="link.hiroshisprojects.jspdemo.FunUtils.Country"%>

<div class="page student">
	<div class="page-container">
		<form action="pages/student-form/student-response.jsp">
		
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

</div>