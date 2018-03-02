<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Recipe Tile View" />
<%@ include file="common/header.jspf" %>

			<c:forEach var="recipe" items="${recipes}">
			<div class="greaterDiv">
			<div id="img">
			
			<c:url value="/img/recipe${recipe.recipeId}.jpg" var="imageUrl" />
			<c:url var="detailUrl" value="/recipeDetail">
				<c:param name="recipeId" value="${recipe.recipeId}"/>
			</c:url>
			<a href="${detailUrl}"><img src="${imageUrl}" alt="food image" /></a>

			</div>
			<div id="name">
			<c:url var="detailUrl" value="/recipeDetail">
				<c:param name="recipeId" value="${recipe.recipeId}"/>
			</c:url>
			<a href="${detailUrl}"><c:out value="${recipe.name}"/></a>

			
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
			
<%@ include file="common/footer.jspf" %>