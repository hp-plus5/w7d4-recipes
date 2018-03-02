<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
    <c:url var="stylesheetUrl" value="/css/site.css" />
    <link rel="stylesheet" href="${stylesheetUrl}" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <c:url var="recipeTilesUrl" value="/recipeTiles" />
            <li><a href="${recipeTilesUrl}">Tile Layout</a></li>
            <c:url var="recipeTableUrl" value="/recipeTable" />
            <li><a href="${recipeTableUrl}">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
    
    <h2 style="text-align: center;"> Recipes </h2>

<table>

	<tr>
	<td></td>
		<c:forEach var="recipe" items="${recipes}">
			<c:url value="/img/recipe${recipe.recipeId}.jpg" var="imageUrl" />
			<c:url var="detailUrl" value="/recipeDetail">
				<c:param name="recipeId" value="${recipe.recipeId}"/>
			</c:url>
			<td>	<a href="${detailUrl}"><img src="${imageUrl}" alt="food image" /></a></td>		
		</c:forEach>
	</tr>
			
	<tr>
	<td>Name</td>
		<c:forEach var="recipe" items="${recipes}">
			<td bgcolor="#cccccc"><a href="${detailUrl}"><c:out value="${recipe.name}"/></a></td>
		</c:forEach>
	</tr>
				
	<tr>
	<td>Type</td>
		<c:forEach var="recipe" items="${recipes}">
			<td><c:out value="${recipe.recipeType}"/></td>
		</c:forEach>
	</tr>
	
	<tr>
	<td>Cook Time</td>
		<c:forEach var="recipe" items="${recipes}">
			<td bgcolor="#cccccc"><c:out value="${recipe.cookTimeInMinutes} min"/></td>
		</c:forEach>
	</tr>
	
	<tr>
		<td >Ingredients</td>
		<c:forEach var="recipe" items="${recipes}">
			<td ><c:out value="${recipe.ingredients.size()} ingredients"/></td>
		</c:forEach>
	</tr>
	
	<tr>
	<td>Rating</td>
		<c:forEach var="recipe" items="${recipes}">
			<fmt:formatNumber  var="ratingNum" value="${recipe.averageRating}" maxFractionDigits="0" />
			<c:url value="/img/${ratingNum}-star.png" var="starImg"/>
			<td bgcolor="#cccccc"><img src="${starImg}" alt="star image" /></td>
		</c:forEach>
	</tr>	

	</table>
   </section>
</body>
</html>