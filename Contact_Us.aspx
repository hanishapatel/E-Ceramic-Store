<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Contact_Us" %>

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
<link href="css/widgets.css" rel="stylesheet" type="text/css"/>
<link href="css/skin.css" rel="stylesheet" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="css/responsive.css" />
<link href='../../../../fonts.googleapis.com/css3f04.css?family=Oswald' rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/jqueryslidemenu.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/contact.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/css3-mediaqueries.js"></script>
<![endif]-->

</head>
<body>
    <form id="form1" runat="server">
    <body>
<div id="background_bg"></div>

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
    <h2>Contact Us</h2>
    <h5>This is the Page you can Contact the Author</h5>
    <div class="search_box">
    <form id="searchform" class="searchform" action="#" method="get">
        <span>
        <input id="s" class="text_input" type="text" onblur="if (this.value == '') {this.value = 'Search..'}" onfocus="if(this.value == 'Search..') {this.value = '';}" name="s" value="Search..">
        </span>
        <input class="search_button" type="submit" value="">
    </form>
    </div>
</section>

    <%--<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;q=-33.873651,151.20689&amp;aq=&amp;sll=-33.873651,151.20689&amp;sspn=0.021771,0.045447&amp;ie=UTF8&amp;hnear=Sydney+New+South+Wales,+Australia&amp;t=m&amp;rq=1&amp;split=0&amp;ll=-33.873651,151.20689&amp;spn=0.021774,0.045447&amp;z=14&amp;output=embed"></iframe>--%>
    <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.34628853968!2d72.90900817520476!3d19.04850648215044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c5f39a7d77d1%3A0x9ebbdeaea9ec24ae!2sShah%20%26%20Anchor%20Kutchhi%20Engineering%20College!5e0!3m2!1sen!2sus!4v1738965500873!5m2!1sen!2sus"></iframe>
<br /><br /><br />
    
    
<div class="two_third">
<h4>Let's Connect</h4>
    <form method="post" action="http://templatesden.com/TF/html/globex/sendEmail.php" name="contact-form" id="contact-form">	
        <div id="main">
        <div id="response" /></div>
            <label for="name">Name:</label>
            <p><input type="text" name="name" id="name" size="30" /></p>
            
            <label for="email">Email:</label>
            <p><input type="text" name="email" id="email" size="30" /></p>
            
            <label for="web">Subject:</label>
            <p><input type="text" name="subject" id="subject" size="30" /></p>
            
            <label for="message">Message:</label>
            <p><textarea name="message" id="message" cols="30" rows="10"></textarea></p>
            
            <p><input  class="contact_button button" type="submit" name="submit" id="submit" value="Email Us!" /></p>
        </div>
    </form>
</div>
    
<div class="one_third_last">
<aside>

<h4>Our Location</h4>
<br />
<div class="contact_details">
    <div class="thumb_img contact_identify">
        <img src="images/home.png" alt="img"/>
    </div>
    <div class="description">
        <h5>Our Address</h5><br />
        <p>Mahavir Education Trust Chowk,</p>
        <p>W.T Patil Marg, D P Rd</p>
        <p>Chembur, Mumbai</p>
        <p>Maharashtra 400088, India</p>
    </div>
</div>

<span class="divider"></span>

<div class="contact_details">
    <div class="thumb_img contact_identify">
        <img src="images/phone.png" alt="img"/>
    </div>
    <div class="description">
        <h5>Our Contact Number</h5><br />
        <p><strong>Office:</strong> 079-454-324</p>
        <p><strong>Branch Office:</strong> 070-555-666</p>
    </div>
</div>

<span class="divider"></span>

<div class="contact_details">
    <div class="thumb_img contact_identify">
        <img src="images/mail.png" alt="img"/>
    </div>
    <div class="description">
        <h5>Our Mail Address</h5><br />
        <p><strong>Email:</strong>epicceramic1@gmail.com</p>
    </div>
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
    <img src="images/footer_logo.png" alt="img" class="alignleft" />
    
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
</body>
    </form>
</body>
</html>
