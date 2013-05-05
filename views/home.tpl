 <!DOCTYPE html>
<html lang="tr">
  <head>
    <meta charset="utf-8">
    <title>Journal Search Tool</title>
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
      .model-content {
        max-width: 900px;
        padding: 10px 10px 10px;
        margin: 10 auto 0px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      textarea {
        margin-bottom: 10px;
        height: auto;
        margin-bottom: 10px;
        padding: 7px 9px;
        max-width: 850px;
        min-width: 850px;
        width: 100%;
      }


    </style>
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
              <li class="active"><a href="#">Home</a></li>
              <li><a href="/contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container">
        <div class="page-header"> 
            <h1 class ="text-center"> JournalS: Search for journals of natural sciences</h1>        
            <p class ="lead text-center"> SCI-A and SCI-B type journals valid after 1st September 2012</p>
        </div>                
        <p class ="text-center">
        The day that I need A and B type journal lists about computer science is the day I decided to share it with you!          
        </p>        
        <dl class = "dl-horizontal"> 
            <dt>Why</dt>
            <dd>Why don't open it to the world :)</dd>
            <dt>How</dt>
            <dd>With lists of only <a href = "http://fef.metu.edu.tr/en/node/167">natural sciences journals</a>, <a href = "https://developers.google.com/appengine/">gae</a>, <a href = "http://bottlepy.org/docs/dev/">bottle</a>, and <a href = "http://twitter.github.io/bootstrap/">bootstrap </a>.</dd>
            <dt>What</dt>
            <dd>A search tool. Just select subjects and search. That's it! You can download the resulting list as excel file.</dd>
        </dl>
         
        <div class = "row">
           <div class = "span8 offset4">
            <form class="form-search" method = "post">
                <select multiple="multiple" class = "span3" name = "subjects">
                    %for subject in subjects:
                    <option>{{subject}}</option>
                    %end
                </select>
                <button class="btn btn-large btn-primary" type="submit" name="searchdown" >Search</button>
            </form>
          </div>
        </div>
     </div>
     <br> 
    %if len(resultingList) != 0:
    
    <div class = "row-fluid">
           <div class = "span10 offset1">
            <div class="text-info">    
                <strong>RESULTS FOR: </strong>{{keywordList}} 
            </div>
            <table class= "table table-striped table-condensed">
                <thead>
                <tr>
                  <th>Abbreviation</th>
                  <th>Full Title</th>
                  <th>ISSN</th>
                  <th>Type</th>
                </tr>
                </thead>
                <tbody>
                %for journal in resultingList:
                <tr>
                    <td>{{journal[0]}}</td>              
                    <td>{{journal[1]}}</td>
                    <td>{{journal[2]}}</td>   
                    <td style= "text-align:center;">{{journal[3]}}</td>               
                </tr>
                %end
                </tbody>
            </table>
        </div>
    </div>
    %end
    <hr>
     <footer>
         <div class="container">
        <p> <span class="muted credit">&copy; Selma Suloglu 2013 </span>
            <a href="https://github.com/ssuloglu/journalS">Git Repository </a>
        </p>
        </div>
      </footer>

    </div> <!-- /container -->

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
