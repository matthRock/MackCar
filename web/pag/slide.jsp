<!DOCTYPE HTML>
<head>
<meta http-equiv="content-type" content="text/html" />
<meta name="author" content="www.intercambiosvirtuales.org" />

<title>efeito de deslizamento suave e automático</title>
<link href="css/slide.css" rel="stylesheet" type="text/css"/>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<link href="css/menu2.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    //Show the paging and activate its first link
    $(".paging").show();
    $(".paging a:first").addClass("active");
    
    //Get size of the image, how many images there are, then determin the size of the image reel.
    var imageWidth = $(".slider").width();
    var imageSum = $(".image_reel img").size();
    var imageReelWidth = imageWidth * imageSum;
    
    //Adjust the image reel to its new size
    $(".image_reel").css({'width' : imageReelWidth});
    
    //Paging  and Slider Function
    rotate = function(){
        var triggerID = $active.attr("rel") - 1; //Get number of times to slide
        var image_reelPosition = triggerID * imageWidth; //Determines the distance the image reel needs to slide
    
        $(".paging a").removeClass('active'); //Remove all active class
        $active.addClass('active'); //Add active class (the $active is declared in the rotateSwitch function)
    
        //Slider Animation
        $(".image_reel").animate({
            left: -image_reelPosition
        }, 500 );
    
    }; 
    
    //Rotation  and Timing Event
    rotateSwitch = function(){
        play = setInterval(function(){ //Set timer - this will repeat itself every 7 seconds
            $active = $('.paging a.active').next(); //Move to the next paging
            if ( $active.length === 0) { //If paging reaches the end...
                $active = $('.paging a:first'); //go back to first
            }
            rotate(); //Trigger the paging and slider function
        }, 7000); //Timer speed in milliseconds (7 seconds)
    };
    
    rotateSwitch(); //Run function on launch 

    //On Hover
    $(".image_reel a").hover(function() {
        clearInterval(play); //Stop the rotation
    }, function() {
        rotateSwitch(); //Resume rotation timer
    });	
    
    //On Click
    $(".paging a").click(function() {
        $active = $(this); //Activate the clicked paging
        //Reset Timer
        clearInterval(play); //Stop the rotation
        rotate(); //Trigger rotation immediately
        rotateSwitch(); // Resume rotation timer
        return false; //Prevent browser jump to link anchor
    });       
});
</script>
</head>

<body>

<div class="slider-container">
    <div class="slider">
        <div class="image_reel">
            <a href="#"><img src="imagens/img1.jpg" alt="1" width="700" height="369"/></a>
            <a href="#"><img src="imagens/img2.jpg" alt="2" width="700" height="369"/></a>
            <a href="#"><img src="imagens/img3.jpg" alt="3" width="700" height="369"/></a>
            <a href="#"><img src="imagens/img4.jpeg" alt="4" width="700" height="369"/></a>
            <a href="#"><img src="imagens/img5.jpg" alt="5" width="700" height="369"/></a>
        </div>
    </div>
    <div class="paging">
        <a href="#" rel="1">1</a>
        <a href="#" rel="2">2</a>
        <a href="#" rel="3">3</a>
        <a href="#" rel="4">4</a>
        <a href="#" rel="5">5</a>
    </div>
</div>

</body>
</html>