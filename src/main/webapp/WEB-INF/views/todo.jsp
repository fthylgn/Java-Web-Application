<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
 <div class="row justify-content-center align-items-center" style="margin-top:10em">
  <div class="col-md-12 col-md-offset-3 ">
  	<span class="row justify-content-center align-items-center"><h2>ADD-TODO</h2></span>
  </div>
  <div class="col-md-6 col-md-offset-3 ">
   <div class="panel panel-primary">
    
    <div class="panel-body">
     <form:form method="post" modelAttribute="todo">
      <form:hidden path="id" />
      <fieldset class="form-group">
       <form:label path="name">Name</form:label>
       <form:input path="name" type="text" class="form-control"
        required="required" />
       
      </fieldset>
      <fieldset class="form-group">
       <form:label path="description">Description</form:label>
       <form:input path="description" type="text" class="form-control"
        required="required" />
       <form:errors path="description" cssClass="text-warning" />
      </fieldset>

      <fieldset class="form-group">
       <form:label path="targetDate">Target Date</form:label>
       <form:input path="targetDate" type="text" class="form-control"
        required="required" />
       <form:errors path="targetDate" cssClass="text-warning" />
      </fieldset>
      <fieldset class="form-group">
       <form:select path="status">
	        
	        <form:options items="${status}" />
		</form:select>
      </fieldset>
      
      <button type="submit" class="btn btn-success">Save</button>
      <a class="btn btn-md btn-danger" href="/list-todos" role="button">Back</a>
     </form:form>

    </div>
   </div>
  </div>
 </div>
</div>

<%@ include file="common/footer.jspf"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(document).ready(function () {

    $('#targetDate').datepicker({
        format: "dd/mm/yyyy"
    });

});
</script>

