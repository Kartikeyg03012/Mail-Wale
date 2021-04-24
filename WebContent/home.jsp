<html>

<head>
  <title>Mail Wale | Home</title>
  <link rel="icon" href="images/myLogo.jpeg" />
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <!-- CSS only -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
  <%@ include file="header.jsp" %>
  <!--Image Gallery -->
  <!--Carousel Wrapper-->
  <div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
    <!--Indicators-->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-2" data-slide-to="1"></li>
      <li data-target="#carousel-example-2" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->
    <!--Slides-->
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item active">
        <div class="view">
          <img class="d-block w-100" src="images/Gallery 1.jpg" alt="First slide">
          <div class="mask rgba-black-light"></div>
        </div>
        <div class="carousel-caption">
          <h1 class="h3-responsive">Servers</h1>
          <p>First text</p>
        </div>
      </div>
      <div class="carousel-item">
        <!--Mask color-->
        <div class="view">
          <img class="d-block w-100" src="images/Gallery 2.jpg" alt="Second slide">
          <div class="mask rgba-black-light"></div>
        </div>
        <div class="carousel-caption">
          <h3 class="h3-responsive">Thir is the second title</h3>
          <p>Secondary text</p>
        </div>
      </div>
      <div class="carousel-item">
        <!--Mask color-->
        <div class="view">
          <img class="d-block w-100" src="images/Gallery 3.jpg" alt="Third slide">
          <div class="mask rgba-black-light"></div>
        </div>
        <div class="carousel-caption">
          <h3 class="h3-responsive">This is the third title</h3>
          <p>Third text</p>
        </div>
      </div>
    </div>
    <!--/.Slides-->
    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->
  </div>
  <!--/.Carousel Wrapper-->
  <hr>
  <!--Plans-->
  <div class="container-fluid">
    <div class="jumbotron">
      <center>
        <h3>Our Plans</h3>
        <p>Pricing Plan For Dedicated Server
        </p>
      </center>
      <div class="row">
        <div class="col-sm-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--Services-->
  <hr>
  <div class="container-fluid">
    <div class="jumbotron">
      <center>
        <h3>Cloud Services We Are Destined To Provide You</h3>
      </center><br><br>
      <div class="row">
        <div class="col"><a class="tw-ic">
            <center><i class="fa fa-server fa-4x white-text mr-4"> </i>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim repudiandae officia libero sequi minima
                minus assumenda nesciunt vel perspiciatis. Dicta eligendi cum fugiat, officia vitae minus culpa sunt
                voluptates assumenda?</p>
            </center>
          </a>
        </div>
        <div class="col"><a class="tw-ic">
            <center><i class="fa fa-database fa-4x white-text mr-4"> </i>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim repudiandae officia libero sequi minima
                minus assumenda nesciunt vel perspiciatis. Dicta eligendi cum fugiat, officia vitae minus culpa sunt
                voluptates assumenda?</p>
            </center>
          </a>
        </div>
        <div class="col"><a class="tw-ic">
            <center><i class="fa fa-cloud fa-4x white-text mr-4"> </i>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim repudiandae officia libero sequi minima
                minus assumenda nesciunt vel perspiciatis. Dicta eligendi cum fugiat, officia vitae minus culpa sunt
                voluptates assumenda?</p>
            </center>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col"><a class="tw-ic">
            <center><i class="fa fa-shield fa-4x white-text mr-4"> </i>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim repudiandae officia libero sequi minima
                minus assumenda nesciunt vel perspiciatis. Dicta eligendi cum fugiat, officia vitae minus culpa sunt
                voluptates assumenda?</p>
            </center>
          </a>
        </div>
        <div class="col"><a class="tw-ic">
            <center><i class="fa fa-star fa-4x white-text mr-4"></i>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim repudiandae officia libero sequi minima
                minus assumenda nesciunt vel perspiciatis. Dicta eligendi cum fugiat, officia vitae minus culpa sunt
                voluptates assumenda?</p>
            </center>
          </a>
        </div>
        <div class="col"><a class="tw-ic">
            <center><i class="fa fa-laptop fa-4x white-text mr-4"> </i>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim repudiandae officia libero sequi minima
                minus assumenda nesciunt vel perspiciatis. Dicta eligendi cum fugiat, officia vitae minus culpa sunt
                voluptates assumenda?</p>
            </center>
          </a>
        </div>
      </div>
    </div>
  </div>
  <!--About Us -->
  <div class="container-fluid">
    <div class="jumbotron">
      <center>
        <h3>Setup Your Own
          Bulk Email Server<br>
          With a one-time setup cost</h3>
        <p>Send unlimited emails without any restrictions.<br>
          No more huge monthly cost, and no more monthly plans based on your subscribers.</p>
      </center><br>

      <div style="text-align: left">
        <img src="images/homeimg.png" width="50%" height="70%" class="img-fluid"
          style="float: left; margin-right: 20px; border: burlywood 20px; padding: 10px;" />
        <h2>
          <b>How does it work?
        </h2>
        <h4 style="color: grey;">
          <i>We are providing all types of Server Solutions.</i>
        </h4>
        <p style="color: grey;">
          This bulk email server setup is a combination of web-application (Front-end) and email server (SMTP server).
          We will install..<br> <br> <i class="fa fa-angle-double-right"></i> STMP (Server for sending emails)<br><br> <i
            class="fa fa-angle-double-right"></i> Web application (for managing contacts, template, campaigns and show
          statistics )<br><br> <i class="fa fa-angle-double-right"></i>DKIM, SPF, DMARC, MTA setup<br><br> <i class="fa fa-angle-double-right"></i>100%
          Client Satisfaction.<br><br> <i class="fa fa-angle-double-right"></i>IP Rotation.<br><br> <i class="fa fa-angle-double-right"></i>Email Scheduling.</p>

      </div>
      <br>
      <br>
      
        
        <div style="text-align:left">
          <img src="images/homeimg2.jpeg" width="50%" height="70%" class="img-fluid"
            style="float: right; margin-right: 10px; border: burlywood 20px; padding: 10px;" />
            <center><h3 style="color: grey;">A reliable, open cloud with security standards you value</h3><p style="color: grey;">Companies handle more sensitive data than ever-often in a highly unstructured state. This data needs to be stored securely at all times, in full compliance with an increasingly complex range of data protection regulations. The struggle to maintain a secure cloud environment, however, is not a battle companies can win alone.
            </p></center>
          <ul style="color: grey;">
            <li>Web hosting. Maximum control and versatility, from Europe's original web hosting specialists.</li>

            <li>  Public Cloud. A range of secure, scalable and versatile cloud instances, to allow you to launch your projects in seconds.</li>
              
              <li>  Private Cloud. The power of 100% dedicated resources, combined with the freedom and flexibility of the cloud.</li>
              
                <li>  VPS. A cost-effective virtual solution, with exceptional performance, security and versatility.</li>
              
                  <li>Dedicated servers. Multiple ranges of world-class bare metal, manufactured in house, and ready to launch at OVHcloud datacentres worldwide.</li>
              
                    
          </ul>
          
          
          </div>

     

    </div>
  </div>
<!--/ About us-->
  

<%@ include file="footer.jsp" %>
</body>

</html>