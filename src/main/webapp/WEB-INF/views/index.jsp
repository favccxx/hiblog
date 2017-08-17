<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>嗨客</title>
<link rel="stylesheet"
	href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
	<header>
  <!-- Sub Navigation -->
  <div class="top-bar">
    <div class="top-bar-left">
      <ul class="menu">
      	<li><a href="login">hiblog</a></li>
       <%--  <li><a href="login">登录${sysUser.userName }</a></li> --%>
        <!-- <li><a href="#">注册</a></li> -->
        <li><a href="#">收藏</a></li>
        <!-- <li><a href="#">Four</a></li> -->
      </ul>
    </div>
    <div class="top-bar-right">
      <ul class="menu">
        <li><input type="search" placeholder="搜索"></li>
        <li><button type="button" class="button">搜索</button></li>
      </ul>
    </div>
  </div>
  <!-- /Sub Navigation -->

  <!-- logo and ad break -->
  <div class="row">
    <div class="medium-4 columns">
      <img src="assets/images/theme/banner_left.png" alt="company logo">
    </div>
    <div class="medium-8 columns">
      <img src="assets/images/theme/banner_right.png" style="width:900px;height:175px;" alt="advertisement for deep fried Twinkies">
    </div>
  </div>
  <!-- / logo and ad break -->
  
  <br>

  <div class="title-bar" data-responsive-toggle="main-menu" data-hide-for="medium">
    <button class="menu-icon" type="button" data-toggle></button>
    <div class="title-bar-title">Menu</div>
  </div>

  <div class="top-bar" id="main-menu">
    <ul class="menu vertical medium-horizontal expanded medium-text-center" data-responsive-menu="drilldown medium-dropdown">
      <li class="has-submenu"><a href="#">首页</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul>
      </li>
      <li class="has-submenu"><a href="blog"  onclick="goBlog('${sysUser.userName }')">博客</a>
        <!-- <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul> -->
      </li>
      <li class="has-submenu"><a href="#">论坛</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul>
      </li>
      <li class="has-submenu"><a href="#">会员中心</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul>
      </li>
      <li class="has-submenu"><a href="#" onclick="goAlbum('${sysUser.userName }')">相册</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul>
      </li>
      <li class="has-submenu"><a href="backend/blogadmin" onclick="goAdmin()">进入后台</a>
       <!--  <ul class="submenu menu vertical" data-submenu>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul> -->
      </li>
    </ul>
  </div>

</header>

<br>

<div class="row">
  <div class="medium-8 columns">
    <p><img src="assets/images/theme/slider.png" style="width:900px;height:450px;" alt="main article image"></p>
  </div>
  <div class="medium-4 columns">
    <p><img src="assets/images/theme/slider1.png?text=Other cool article" alt="article promo image" alt="advertisement for deep fried Twinkies"></p>
    <p><img src="assets/images/theme/slider2.png" alt="article promo image"></p>
    <p><img src="assets/images/theme/slider1.png" alt="article promo image"></p>
  </div>
</div>

<hr>

<div class="row column">
  <h4 style="margin: 0;" class="text-center">编辑推荐</h4>
</div>

<hr>

<div class="row small-up-3 medium-up-4 large-up-5">

  <div class="column">
    <img src="assets\images\temp\news.png" alt="image for article">
  </div>

  <div class="column">
    <img src="assets\images\temp\cioage.png" alt="image for article">
  </div>

  <div class="column">
    <img src="assets\images\temp\server.png" alt="image for article">
  </div>

  <div class="column show-for-medium">
    <img src="assets\images\temp\better.png" alt="image for article">
  </div>

  <div class="column show-for-large">
    <img src="assets\images\temp\ball.png" alt="image for article">
  </div>

</div>

<hr>

<div class="row column">
  <h4 style="margin: 0;" class="text-center">新闻速递</h4>
</div>

<hr>

<div class="row">
  <div class="large-8 columns" style="border-right: 1px solid #E3E5E8;">

  <article>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="assets\images\temp\swift.png" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">苹果“Swift语言之父”跳槽谷歌人工智能项目</a></h5>
        <p>
          <span><i class="fi-torso"> 嗨客科技 &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 11/23/2017 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 评论</i></span>
        </p>
        <p>最近传出一个令苹果不安的消息，这一开发语言的核心发明人，最近加盟了谷歌的人工智能项目，而且他后续仍将对 Swift 语言的完善产生影响力。</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="http://placehold.it/600x370&text=Look at me!" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">NASA's SLS Rocket Sheds Saturn V Color Scheme in Design Review</a></h5>
        <p>
          <span><i class="fi-torso"> By Thadeus &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 01/23/16 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 comments</i></span>
        </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="http://placehold.it/600x370&text=Look at me!" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">Ingredients for Life Were Always Present on Earth, Comet Suggests</a></h5>
        <p>
          <span><i class="fi-torso"> By Thadeus &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 11/23/16 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 comments</i></span>
        </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="http://placehold.it/600x370&text=Look at me!" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">Astronaut's Watch Worn on the Moon Sells for Record $1.6 Million</a></h5>
        <p>
          <span><i class="fi-torso"> By Thadeus &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 11/23/16 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 comments</i></span>
        </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="http://placehold.it/600x370&text=Look at me!" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">Interstellar Dust on the Galaxy's Magnetic Field | Space Wallpaper</a></h5>
        <p>
          <span><i class="fi-torso"> By Thadeus &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 11/23/16 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 comments</i></span>
        </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="http://placehold.it/600x370&text=Look at me!" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">Explore the Moon (Virtually) with These Awesome Global Maps</a></h5>
        <p>
          <span><i class="fi-torso"> By Thadeus &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 11/23/16 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 comments</i></span>
        </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="large-6 columns">
        <p><img src="http://placehold.it/600x370&text=Look at me!" alt="image for article" alt="article preview image"></p>
      </div>
      <div class="large-6 columns">
        <h5><a href="#">Best Space Books and Sci-Fi: A Space.com Reading List</a></h5>
        <p>
          <span><i class="fi-torso"> By Thadeus &nbsp;&nbsp;</i></span>
          <span><i class="fi-calendar"> 11/23/16 &nbsp;&nbsp;</i></span>
          <span><i class="fi-comments"> 6 comments</i></span>
        </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae impedit beatae, ipsum delectus aperiam nesciunt magni facilis ullam.</p>
      </div>
    </div>

    <hr>

    <ul class="pagination" role="navigation" aria-label="Pagination">
      <li class="disabled">Previous <span class="show-for-sr">page</span></li>
      <li class="current"><span class="show-for-sr">You're on page</span> 1</li>
      <li><a href="#" aria-label="Page 2">2</a></li>
      <li><a href="#" aria-label="Page 3">3</a></li>
      <li><a href="#" aria-label="Page 4">4</a></li>
      <li><a href="#" aria-label="Next page">Next <span class="show-for-sr">page</span></a></li>
    </ul>

    </article>

  </div>

  <div class="large-4 columns">

    <aside>

      <div class="row small-up-3">

        <div class="column text-center">
          <i class="fi-social-facebook"></i>
          <h6>56,009</h6>
          <p><small>用户</small></p>
          <br>
        </div>

        <div class="column text-center">
          <i class="fi-social-twitter"></i>
          <h6>76,905</h6>
          <p><small>博文</small></p>
          <br>
        </div>

        <div class="column text-center">
          <i class="fi-social-instagram"></i>
          <h6>34,099</h6>
          <p><small>评论</small></p>
          <br>
        </div>

        <div class="column text-center">
          <i class="fi-social-tumblr"></i>
          <h6>3,765</h6>
          <p><small>在线用户</small></p>
        </div>

        <div class="column text-center">
          <i class="fi-social-pinterest"></i>
          <h6>9,283</h6>
          <p><small>帖子</small></p>
        </div>

        <div class="column text-center">
          <i class="fi-social-youtube"></i>
          <h6>99,000</h6>
          <p><small>访问</small></p>
        </div>

      </div>

      <br>

      <div class="row column">
        <p class="lead">FROM OUR FRIENDS</p>
        <p><img src="http://placehold.it/400x300&text=Buy Me!" alt="advertisement of ShamWow"></p>
      </div>

      <br>

      <div class="row column">
        <p class="lead">TRENDING POSTS</p>

        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src= "http://placehold.it/100">
          </div>
          <div class="media-object-section">
            <h5>All I need is a space suit and I'm ready to go.</h5>
          </div>
        </div>

        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src= "http://placehold.it/100">
          </div>
          <div class="media-object-section">
            <h5>Are the stars out tonight? I don't know if it's cloudy or bright.</h5>
          </div>
        </div>

        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src= "http://placehold.it/100">
          </div>
          <div class="media-object-section">
            <h5>And the world keeps spinning.</h5>
          </div>
        </div>

        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src= "http://placehold.it/100">
          </div>
          <div class="media-object-section">
            <h5>Cold hearted orb that rules the night.</h5>
          </div>
        </div>

      </div>
      
    </aside>
    
  </div>
</div>

<footer>
  <div class="row expanded callout secondary">

    <div class="large-4 columns">
      <h5>FLICKR IMAGES</h5>
      <div class="row small-up-4">
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
        <div class="column"><img class="thumbnail" src="http://placehold.it/75" alt="image of space dog"></div>
      </div>
      
    </div>

    <div class="large-4 columns">
      <h5>FLICKR IMAGES</h5>
      <span class="secondary label">Space</span>
      <span class="secondary label">Galaxies</span>
      <span class="secondary label">Milky Way</span>
      <span class="secondary label">Black Holes</span>
      <span class="secondary label">Rebels</span>
      <span class="secondary label">Death Star</span>
      <span class="secondary label">Republic</span>
      <span class="secondary label">R2D2</span>
    </div>

    <div class="large-4 columns">
      <h5>RANDOM MAG</h5>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quam voluptatum vel repellat ab similique molestias molestiae ea omnis eos, id asperiores est praesentium, voluptate officia nulla aspernatur sequi aliquam.</p>
    </div>

  </div>
  <div class="row expanded">

    <div class="medium-6 columns">
      <ul class="menu">
        <li><a href="#">Legal</a></li>
        <li><a href="#">Partner</a></li>
        <li><a href="#">Explore</a></li>
      </ul>
    </div>

    <div class="medium-6 columns">
      <ul class="menu align-right">
        <li class="menu-text">Copyright © 2099 Random Mag</li>
      </ul>
    </div>
  </div>

</footer>

	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script
		src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
	<script>
		$(document).foundation();
		
		function goBlog(username){
			window.open("blog/" + username, "_self");
			
		}
		
		function goAlbum(username){
			window.open("albums/" + username, "_self");
		}
		
		function goAdmin(){
			window.open("backend/blogadmin", "_self");
		}
	</script>
</body>
</html>