$(document).ready(function(){
  $(".submitCity").click(function(){
    return getWeather();
  });

});

function getWeather(){
  var city = $(".city").val();

  if(city != ''){
    $.ajax({
      url: 'http://api.openweathermap.org/data/2.5/weather?q=' + city + "&units=metric" + "&APPID=" + config.api_key +"",
      type: "GET",
      dataType: "jsonp",
      success: function(data){
        console.log(data)
        $("weather").html();
      }
    });

  }
}