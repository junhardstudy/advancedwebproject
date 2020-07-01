<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	$('.carousel').carousel({
	  interval: 500
	});
	
</script>
<style>
 .carousel-item img {
  max-height: 400px;
}
</style>
<meta charset="utf-8">
<title>여행가조</title>
</head>
<body>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="./resources/3.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./resources/4.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./resources/5.gif" class="d-block w-100" alt="...">
    </div>
  </div>
</div>

</body>
</html>