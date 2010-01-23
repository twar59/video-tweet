// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// getscreen from http://jquery-howto.blogspot.com/2009/02/how-to-get-youtube-video-screenshot.html 
function getScreen( url, size )
{
  if(url === null){ return ""; }

  size = (size === null) ? "big" : size;
  var vid;
  var results;

  results = url.match("[\\?&]v=([^&#]*)");

  vid = ( results === null ) ? url : results[1];

  if(size == "small"){
    return "http://img.youtube.com/vi/"+vid+"/2.jpg";
  }else {
    return "http://img.youtube.com/vi/"+vid+"/0.jpg";
  }
}

