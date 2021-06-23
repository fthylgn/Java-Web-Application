<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div class="row justify-content-center align-items-center" style="margin-top:10em">
		 
	</div>
	
		    <div class="row justify-content-center align-items-center">
		      <h3>List of TODO's</h3>
		    </div>
		    <div class="row">
		    	<div class="col-6">
					<a type="button" class="btn btn-primary btn-md" href="/add-todo">Add Todo</a>
				</div>
				<div class="col-6">
					<div class="form-check">
						<form id="myform">
					     	<fieldset class="form">
					       		<span>
					       		  <form:radiobutton path = "status" value = "ALL" label = "ALL" name="status" checked="checked"/>
					       		</span>
						        <form:radiobuttons items="${status}" path="status" name="status"/>
					      	</fieldset>
			        	</form>
					</div>
				</div>
		      
		  	<div class="table table-lg">
			   <table class="table table-striped">
			    <thead>
			     <tr>
			      <th>Name</th>
			      <th>Description</th>
			      <th>Target Date</th>
			      <th>Status</th>
			      <th> </th>
			     </tr>
			    </thead>
			    <tbody>
			     <c:forEach items="${todos}" var="todo">
			      <tr name="${todo.status}">
			       <td>${todo.name}</td>
			       <td>${todo.description}</td>
			       <td><fmt:formatDate value="${todo.targetDate}"
			         pattern="dd/MM/yyyy" /></td>
			       <td>${todo.status}</td>
			       <td>${todo.userName}</td>
			       <td><a type="button" class="btn btn-success"
			        href="/update-todo?id=${todo.id}">Update</a>
			       <a type="button" class="btn btn-warning"
			        href="/delete-todo?id=${todo.id}">Delete</a></td>
			      </tr>
			     </c:forEach>
			    </tbody>
			   </table>
		  	</div>
		 </div>
	
</div>
<%@ include file="common/footer.jspf"%>

<script>

	$('input[type=radio]').change(function() {       
	    var id=this.id;
	    var name=this.value;
	    var rows = document.getElementsByTagName("table")[0].rows;
	    for(j = 1; j < rows.length; j++) 
	    	  rows[j].style.display="none";
	    if(name==="ALL"){
	    	var rows = document.getElementsByTagName("table")[0].rows;
	    	for(j = 0; j < rows.length; j++) 
	    	  rows[j].style.display="table-row"
		}
	    else{
	    	cells = document.getElementsByName(name);
	        for(j = 0; j < cells.length; j++) 
	    	  cells[j].style.display="table-row";
	    }
	});

</script>
