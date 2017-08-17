<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客管理</title>
<link rel="stylesheet" href="../assets/css/foundation.min.css">
</head>

  <body>
    
    <div class="off-canvas-wrapper">
      <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

        <div class="off-canvas position-left reveal-for-large" id="my-info" data-off-canvas data-position="left">
          <div class="row column">
            <br>
            <img class="thumbnail" src="http://placehold.it/550x350">
            <h5>Mike Mikerson</h5>
            <p>Duis aliquet egestas purus in blandit. Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit amet leo.</p>
          	<p>
          		<a class="button tiny" href="#">博文分类</a>
				<a class="button small" href="#">管理博文</a>
				<a class="button" href="#">发表博文</a>
				<a class="button large" href="#">用户信息</a>
				<a class="button expanded" href="#">相册管理</a>
				<a class="button small expanded" href="#">Wow, Small Expand</a>
          	</p>
          </div>
        </div>

        <div class="off-canvas-content" data-off-canvas-content>
          <div class="title-bar hide-for-large">
            <div class="title-bar-left">
              <button class="menu-icon" type="button" data-open="my-info"></button>
              <span class="title-bar-title">Mike Mikerson</span>
            </div>
          </div>
          <div class="callout primary">
            <div class="row column">
              <h1>Hello! This is the portfolio of a very witty person.</h1>
              <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla.</p>
            </div>
          </div>
          <div class="row small-up-2 medium-up-3 large-up-4">
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
            <div class="column">
              <img class="thumbnail" src="http://placehold.it/550x550">
              <h5>My Site</h5>
            </div>
          </div>

          <hr>

          <div class="row">
            <div class="medium-6 columns">
              <h3>Contact Me</h3>
              <p>Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus. Mauris iaculis porttitor.</p>
              <ul class="menu">
                <li><a href="#">Dribbble</a></li>
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Yo</a></li>
              </ul>
            </div>
            <div class="medium-6 columns">
              <label>Name
                <input type="text" placeholder="Name">
              </label>
              <label>Email
                <input type="text" placeholder="Email">
              </label>
              <label>
                Message
                <textarea placeholder="holla at a designerd"></textarea>
              </label>
              <input type="submit" class="button expanded" value="Submit">
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>