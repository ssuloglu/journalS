<!DOCTYPE html>
<html lang="tr">
  <head>
    <meta charset="utf-8">
    <title>Contact</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Journal Search Tool">
    <meta name="author" content="Selma Suloglu">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="ico/favicon.png">
  </head>

  <body>
  <div id="wrap">
  
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="/">JournalS</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li ><a href="/">Home</a></li>
              <li class="active"><a href="#" >Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    
    <div class="container">
    <div class="page-header"> 
          <h1>If Anything You Want to Say, Contact Me!</h1>
    </div>  
      
    <div class= "row-fluid">
        <div class="span12">
          <form class="form-horizontal" method = "post">
            <div class="control-group">
                <label class="control-label" >Subject</label>
                <div class="controls">
                    <input type="text" id="subject" name ="subject" value = "{{subject}}" placeholder="Subject">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Message</label>
                <div class="controls">
                    <textarea  style="resize: none;" rows = "5" id="scontent" name ="scontent" placeholder="Please write your message here...">{{scontent}}</textarea>
                </div>
            </div>
            <div  class="control-group">
                <label class="control-label" for="inputEmail">Email<span style= "color:red;"> *</span></label>
                <div class="controls">
                    <input type="text" name = "email" value = "{{email}}" id="inputEmail" placeholder="Email"> <br>
                </div>
            </div>
            <div  class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary">Send</button>
                </div>
            </div>
            <div class="offset1">
                <span style= "color:red;">* Required</span>
            </div>
            %if 1==1:
            <div class="offset1 text-{{s}}">
                <strong>{{notification}}</strong>
            </div>
            %end
          </form>
        </div>
    </div>
    
    
    <hr>
      <footer>
         <div class="container">
        <p class="muted credit">&copy; Selma Suloglu 2013</p>
        </div>
      </footer>

    </div> <!-- /container -->
    </div> 
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>

  </body>
</html>
