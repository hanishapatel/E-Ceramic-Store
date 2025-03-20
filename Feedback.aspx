<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <meta name="viewport" content="width=device-width" />
    <title>Globex Responsive HTML5 Template</title>
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/jqueryslidemenu.css" rel="stylesheet" type="text/css" />
    <link href="css/widgets.css" rel="stylesheet" type="text/css" />
    <link href="css/skin.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link href='../../../../fonts.googleapis.com/css3f04.css?family=Oswald' rel='stylesheet'
        type='text/css' />
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/jqueryslidemenu.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
    <!--[if lt IE 9]>
	<script type="text/javascript" src="js/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body>
    <div id="background_bg_inner">
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
    <h2> FEEDBACK </h2>
    <h5>These tiles are used for makes your dreams true </h5>
    <div class="search_box">
    <form id="searchform" class="searchform" action="#" method="get">
        <span>
        <input id="s" class="text_input" type="text" onblur="if (this.value == '') {this.value = 'Search..'}" onfocus="if(this.value == 'Search..') {this.value = '';}" name="s" value="Search.."/>
        </span>
        <input class="search_button" type="submit" value=""/>
    </form>
    </div>
</section>
<br />
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td align="right">
    <asp:LinkButton ID="LinkButton1" style="font-size: x-large" runat="server" 
            onclick="LinkButton1_Click">SKIP FEEDBACK</asp:LinkButton>
    </td>
    </tr>
    </table>
    </div>
    <br />
    <div>
    <center>
    <table width="400px" style="color: #000000;" >
    
    <tr>
    <td class="style2" align="left" style="font-size:Medium" >
    Name
    </td>
    <td class="style1">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td class="style2" align="left" style="font-size:Medium" >
    Email ID
    </td>
    <td class="style1">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td class="style2" align="left" style="font-size:Medium" >
    Message
    </td>
    <td class="style1">
    <asp:TextBox ID="TextBox3" Rows="4" Columns="20" TextMode="MultiLine" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="right">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"></asp:Button>
    </td>
    </tr>
   
    </table>
    </center>
    
    </div>
    </form>

</section>

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
    <h4>AWARDS & CERTIFICATE <span>PHOTO'S</span></h4>
    <div class="flickr_widget">
        <img src="images/awards1.jpg" alt="img" />
        <img src="images/images2.jpg" alt="img" />
        <img src="images/doc-02.jpg" alt="img" />
        <img src="images/awards.jpg" alt="img" />
        <img src="images/blog-5.png" alt="img" />
        <img src="images/flickr.png" alt="img" />
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
</html>
