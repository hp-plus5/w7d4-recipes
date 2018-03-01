<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
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

       <!-- Use the request attribute "recipes" (List<Recipe>) -->
    <h2 style="font-align: center;"> Recipes </h2>   
	

			<c:forEach var="recipe" items="${recipes}">
			<div class="greaterDiv">
			<div id="img">
			
			<c:url value="/img/recipe${recipe.recipeId}.jpg" var="imageUrl" />
			<img src="${imageUrl}" alt="food image" />

			</div>
			
			<div id="name">
			
			<c:out value="${recipe.name}"/>
			
			</div>
			
			<div id="stars">
			<div class="starImage">
			<fmt:formatNumber  var="ratingNum" value="${recipe.averageRating}" maxFractionDigits="0" />
			<c:url value="/img/${ratingNum}-star.png" var="starImg"/>
			<img src="${starImg}" alt="star image" />
			</div>
			<div class="starText">
			<c:out value="${recipe.ingredients.size()} ingredients"/>
			</div>
			
			</div>
			
			</div>
			</c:forEach>
			

	
    </section>
</body>
</html>