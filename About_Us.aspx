<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About_Us.aspx.cs" Inherits="About_Us" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <meta name="viewport" content="width=device-width" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/jqueryslidemenu.css" rel="stylesheet" type="text/css" />
    <link href="css/widgets.css" rel="stylesheet" type="text/css" />
    <link href="css/skin.css" rel="stylesheet" type="text/css" />
    <link href="css/news_slider.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link href='../../../../fonts.googleapis.com/css3f04.css?family=Oswald' rel='stylesheet'
        type='text/css' />
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/jqueryslidemenu.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript" src="js/jcarousellite_1.0.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".news_slider").jCarouselLite({
                btnNext: "a.next",
                btnPrev: "a.prev",
                vertical: true
            });
        });
</script>
    <!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
    <!--[if lt IE 9]>
	<script type="text/javascript" src="js/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div id="background_bg">
    </div>
    <!-- container Start -->
    <section id="container">

<!-- top section Start -->
<header>
    <figure id="logo"><a href="Home.aspx"><img src="images/6_3.png" alt="img" height="10px" width="70px" /></a></figure>
    <div class="top_right">
        <ul class="top_info">
            <li><span class=" call_1st_col">Call:</span> <span class="call_2nd_col">+070-555-666</span></li>
            <li><span class=" call_1st_col">Fax:</span> <span class="call_2nd_col">+03.2312.4442</span></li>
            <li><span class=" call_1st_col">Mail:</span> <span class="call_2nd_col">epicceramic1@gmail.com</span></li>
        </ul>
        <div id="social_media">
            <img src="images/rss_icon.png" alt="img" />
            <img src="images/twitter_icon.png" alt="img" />
            <img src="images/facebook_icon.png" alt="img" />
            <img src="images/skype_icon.png" alt="img" />
            <img src="images/link_in_icon.png" alt="img" />
        </div> 
    </div>
</header>
<!-- top section end -->

<!-- Nav start -->
<nav>
    <div id="myslidemenu" class="jqueryslidemenu clearfix">
        <ul>
            <li><a class="active" href="Home.aspx"><i class="icon-home"></i>HOME</a></li>
            <li><a href="About_Us.aspx"><i class="icon-user"></i>ABOUT US</a></li>
            <li><a href=""><i class="icon-briefcase"></i>MEDIA GALLERY</a>
            <ul>
                <li><a href="Showevent.aspx"><i class="icon-briefcase"></i>EVENTS</a></li>
                <li><a href="ShowExhibition.aspx"><i class="icon-briefcase"></i>EXHIBITION</a></li>
                <li><a href="Tiles_calculator.aspx"><i class="icon-briefcase"></i>TILES CALCULATOR</a></li>
            </ul>
            </li>
            <li><a href="Faq_form.aspx"><i class="icon-pencil"></i>FAQ</a></li>
            <li><a href=""><i class="icon-file"></i>PRODUCT</a>
            <ul>
                <li><a href="Tiles.aspx"><i class="icon-columns"></i>CERAMIC TILES </a></li>
                <li><a href="Glazed_tiles.aspx"><i class="icon-columns"></i>GLAZED TILES</a></li>
                <li><a href="Wooden_tiles.aspx"><i class="icon-columns"></i>WOODEN TILES</a></li>

                <li><a href="Marbles.aspx"><i class="icon-columns"></i> MARBLES </a></li>
            </ul>
            </li>
            <li><a href="Contact_Us.aspx"><i class="icon-envelope"></i>CONTACT US</a></li>
        </ul>
    </div>
</nav>
<!-- Nav end -->

<!--  Content wide start -->
<section class="content">

<section class="sub_header">
    <h2>About Us</h2>
    <h5>The Company Details and Specialization and Latest News</h5>
    <div class="search_box">
        <form id="searchform" class="searchform" action="#" method="get">
        <span>
        <input id="s" class="text_input" type="text" onblur="if (this.value == '') {this.value = 'Search..'}" onfocus="if(this.value == 'Search..') {this.value = '';}" name="s" value="Search..">
        </span>
        <input class="search_button" type="submit" value="" >
    </form>
    </div>
</section>

<div class="two_third">
    <img src="images/about_us_img_1.jpg" alt="img" class="alignleft" />
    <h3>About Our <span>Company</span></h3>
    <p>Epic Ceramics is the largest manufacturer of ceramic/vitrified tiles in India. It has an annual aggregate capacity of 45.20 mn. sq. meters, distributed across seven plants-Sikandrabad in Uttar Pradesh, Gailpur in Rajasthan, four plants in Morbi in Gujarat and one at Vijayawada in Andhra Pradesh.
       The motivating factor remains the zeal, the zeal to be the best, to be at the top and to achieve the highest echelons of excellence. The manufacturing units are equipped with cutting edge technology. Intense automation, robotic car application and a zero chance for human error are just few reasons why Epic remains at the top in the industry.</p><br />
    
    
   
    
    <h3>What Makes <span>Us Special</span></h3><br />
    
    <div class="one_half">
        <div class="drop_cap thumb_img"><h5>01</h5></div>
        <div class="description">
            <h4>We Work for You!</h4>
            <p>To sustain a dream of such a magnitude, it is always important to stay ahead of  your time. So in return we give you the marvellous facility of chosing ceramic tiles of your choice.  </p>
        </div>
    </div>
    <div class="one_half_last">
        <div class="drop_cap thumb_img"><h5>02</h5></div>
        <div class="description">
            <h4>Succeed with us!</h4>
            <p>Achieving customer delight through business innovation and cost effectiveness while pursuing latest fashion trends in ceramics & allied products for creating stakeholders values.</p>
        </div>
    </div>
    
    <div class="one_half">
        <div class="drop_cap thumb_img"><h5>03</h5></div>
        <div class="description">
            <h4>Clients choose us!</h4>
            <p>The facility which is from our side will comfort the clients in every way. </p>
        </div>
    </div>
    <div class="one_half_last">
        <div class="drop_cap thumb_img"><h5>04</h5></div>
        <div class="description">
            <h4>Our Capabiliies</h4>
            <p>Its because of  we provide the best facility to the customers that interact with us, along with the the great aspects of collection.  </p>
        </div>
    </div>

</div>

<div class="one_third_last">
<aside>

<div class="widget_container">
<h3>Latest <span>News</span></h3>

<div class="news_slider_wrapper">
<div class="controls">
    <a class="prev">&nbsp;</a>
    <a class="next">&nbsp;</a>
</div>
<div class="news_slider">
    <ul>
        <li><div class="thumb_img">
            	<img src="images/latest_news_img_1.png" alt="img" />
            </div>
            <div class="description">
            	<strong>Etiam magna libero</strong>	
                <p>Dapibus eu suscipit condiment ingilla mattis.</p>
            </div>
        </li>
        <li><div class="thumb_img">
            	<img src="images/latest_news_img_2.png" alt="img" />
            </div>
            <div class="description">
            	<strong>Curabitur adipis ornare</strong>	
                <p>Pretium eu suscipit condiment ingilla erat.</p>
            </div>
        </li>
        <li><div class="thumb_img">
            	<img src="images/latest_news_img_3.png" alt="img" />
            </div>
            <div class="description">
            	<strong>Blandit varius luctus</strong>	
                <p>Sed eget leo sed diam aliquam interdumt aucto</p>
            </div>
        </li>
        <li><div class="thumb_img">
            	<img src="images/latest_news_img_4.png" alt="img" />
            </div>
            <div class="description">
            	<strong>Suspendisse vitae velit</strong>	
                <p>Morbi laoreet mauris nullec lacinia tellus.</p>
            </div>
        </li>
        <li><div class="thumb_img">
            	<img src="images/latest_news_img_5.png" alt="img" />
            </div>
            <div class="description">
            	<strong>Riam magna libero</strong>	
                <p>Ingilla eu suscipit condiment ingilla mattis.</p>
            </div>
        </li><li><div class="thumb_img">
            	<img src="images/latest_news_img_6.png" alt="img" />
            </div>
            <div class="description">
            	<strong>Feugiat feugiat massa</strong>	
                <p>Semper eu suscipit condiment ingilla diet.</p>
            </div>
        </li>
    </ul>
</div>
</div>
</div>
<div class="widget_container">
    <h3>Theme <span>Pages</span></h3>
    <ul>
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="About_Us.aspx">About Us</a></li>
        <li><a href="">Media gallery</a></li>
        <li><a href="">Product</a></li>
        <li><a href="Contact_Us.aspx">Contact Us</a></li>
    </ul>
</div>

</aside>
</div>

</section>
<!--  Content wide end -->

<!--  trigger content start -->
<div class="trigger_container">
    <span class="trigger"><a href="#"></a></span>
    <div class="toggle_container">
        <p>Responsive Layout is powerfull and easy to customize.Quick Contact <strong>templatesden@yourmail.com</strong></p>
    </div>
</div>
<!--  trigger content end -->

<!--  Footer Start -->
<footer>

<div class="one_third">
<div class="widget_container">
    <h4>ABOUT <span>US</span></h4>
    <img src="images/about_us_img_1.jpg" alt="img" class="alignleft" />
    
</div>
</div>

<div class="one_third">
<div class="widget_container">
    <h4>RECENT <span>POST</span></h4>
    <ul>
        <li>
        <img src="images/recent_post_img_1.png" alt="img" class="thumb_img" />
        <div class="description">
            <strong>Nullam ultrices suscipit</strong><br />
            Suscipit diam lacinia id quisque diam sapien.
        </div>
    </li>
    <li>
        <img src="images/recent_post_img_2.png" alt="img" class="thumb_img" />
        <div class="description">
            <strong>Nullam ultrices suscipit</strong><br />
            Euismod eget volutpat sed pharetra a nibh.
        </div>
    </li>
    </ul>
</div>
</div>

<div class="one_third_last">
<div class="widget_container">
    <h4>FLICKR <span>PHOTO'S</span></h4>
    <div class="flickr_widget">
        <img src="images/flickr_img_1.png" alt="img" />
        <img src="images/flickr_img_2.png" alt="img" />
        <img src="images/flickr_img_3.png" alt="img" />
        <img src="images/flickr_img_4.png" alt="img" />
        <img src="images/flickr_img_5.png" alt="img" />
        <img src="images/flickr_img_6.png" alt="img" />
	</div>
</div>
</div>

</footer>
<!--  Footer End -->    

<!--  Footer bottom Start -->
<section class="footer">
    <div class="copyright">
    <p>Copyright@templatesden.com</p>
    </div>
</section>
<!--  Footer bottom End -->   

</section>
    <!-- container End -->
    <div>
    </div>
    </form>
</body>
</html>
