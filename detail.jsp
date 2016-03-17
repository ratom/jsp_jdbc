<%@include file="../header.jsp" %>

<h1>${course.name}</h1>
<p>
    ${course.description}
<div>Fees:${course.fees}</div>
<a href="${SITE_URL}/enroll/?cid=${course.id}">Enroll Now</a>
</p>
<%@include file="../footer.jsp" %>