<%@include file="../header.jsp" %>
<form action="${SITE_URL}/enroll" method="post">

    <div>
    <label>First Name</label>
    <input type="text" name="first_name"/>
    </div>
    <div>
    <label>Last Name</label>
    <input type="text" name="last_name"/>
    </div>
    <div>
    <label>Email</label>
    <input type="email" name="email"/>
    </div>    
    <div>
    <label>Contact No</label>
    <input type="text" name="contact_no"/>
    </div>    
    <div>
    <label>Course</label>
    <select name="course">
        <option value="">Select Course</option>
    <c:forEach var="course" items="${requestScope.courses}">
        <option value="${course.id}" <c:if test="${param.cid == course.id}">selected="selected"</c:if>>
            ${course.name}
        </option>
        
    </c:forEach>
    </select>
    </div>
        <div>
    <label>Message</label>
    <textarea name="message" style="height:150px"></textarea>
    </div>
    <button type="submit">Enroll</button>
</form>
<%@include file="../footer.jsp" %>