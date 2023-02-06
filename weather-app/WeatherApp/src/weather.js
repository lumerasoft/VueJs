let result = {};
const key = "b24ed3b720df22f39886b0504a9807a2";

const getWeather=async()=>{
    const city = prompt("Enter the location: ");
            let api=`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${key}`
            const kelvin=273
        
            await fetch(api)
            .then(function(response){
                let data = response.json();
                return data;
            })
            .then(function(data){
                result.temperature = Math.floor(data.main.temp - kelvin);
                result.description = data.weather[0].description;
                result.city = data.name;
                result.country = data.sys.country;
            })
            const displayWeather=()=>{
                console.log(result.temperature)
                console.log(result.description)
                console.log(result.country)
                console.log(result.city)            
            }
            return displayWeather()
}

const displayError=(error)=>{
    console.log(error.message)
}

export{getWeather,displayError}
