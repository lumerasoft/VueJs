import * as Details from "./weather.js";
const weather=()=>{
    if(navigator.geolocation){
        navigator.geolocation.getCurrentPosition(Details.getWeather,Details.displayError);
    }    
};
weather()

