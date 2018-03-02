<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Recipe Tile View" />
<%@ include file="common/header.jspf" %>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<div class="bigDiv">
<div class="bestDiv">
	<div id="imgDiv">
	<c:url value="/img/recipe${recipe.recipeId}.jpg" var="imageUrl" />
			<c:url var="detailUrl" value="/recipeDetail"/>

		<img src="${imageUrl}" alt="food image" />
	</div> <!-- imgDiv -->
	
	<div id="textDiv">
	
		<strong><c:out value="${recipe.name}"/></strong></br>
	
		<c:out value="${recipe.recipeType}"/></br></br>
		
		<strong><c:out value="Cook Time"/></strong>
		<c:out value="${recipe.cookTimeInMinutes} min"/> </br></br>
	
		<c:out value="${recipe.description}"/>
	</div><!-- textDiv -->
</div> <!-- bestDiv -->

<div class="bottomDiv">
<div id="ingredients">
	<strong><c:out value="Ingredients"/></strong>
	<ul>
		<c:forEach var="ingredients1" items="${recipe.ingredients}">
			<li><c:out value="${ingredients1.quantity}"/><c:out value=" ${ingredients1.name}"/></li>
		</c:forEach>
	</ul>
</div> <!--ingredients> -->
	
<div id="preparation"> 
	</br><strong><c:out value="Preparation"/></strong>
	<ol>
		<c:forEach var="preparationStep" items="${recipe.preparationSteps}">
			<li><c:out value="${preparationStep}"/></li>
		</c:forEach>
	</ol>
</div> <!--  preparation -->
</div> <!-- bottomDiv -->
</div> <!-- bigDiv -->
<%@ include file="common/footer.jspf" %>