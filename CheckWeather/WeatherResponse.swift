//
//  WeatherResponse.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/30.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import Foundation

struct WeatherResponse: Codable {
    
    var pinpointLocations: [PinpointLocations]
    var link: String
    var forecasts: [Forecasts]
    var location: Location
    var publicTime: String
    var copyright: Copyright
    var title: String
    var description: Description?
    
    init(pinpointLocations: PinpointLocations,
         link: String,
         forecasts: Forecasts,
         location: Location,
         publicTime: String,
         copyright: Copyright,
         title: String,
         description: Description){
        self.pinpointLocations = [pinpointLocations]
        self.link = link
        self.forecasts = [forecasts]
        self.location = location
        self.publicTime = publicTime
        self.copyright = copyright
        self.title = title
        self.description = description
    }
}

struct PinpointLocations: Codable {
    var link: String
    var name: String
    
    init(link: String,
         name: String) {
        self.link = link
        self.name = name
    }
}

struct Forecasts: Codable {
    var dataLabel: String
    var telop: String
    var temperature: Temperature
    var image: Image
    
    init(dataLabel: String,
         telop: String,
         temperature: Temperature,
         image: Image) {
        self.dataLabel = dataLabel
        self.telop = telop
        self.temperature = temperature
        self.image = image
    }
}

struct Temperature: Codable {
    var min: Min
    var max: Max
}

struct Min: Codable {
    var celsius: String
    var fahrenheit: String
    init(celsius: String, fahrenheit: String) {
        self.celsius = celsius
        self.fahrenheit = fahrenheit
    }
}

struct Max: Codable {
    var celsius: String
    var fahrenheit: String
    init(celsius: String, fahrenheit: String) {
        self.celsius = celsius
        self.fahrenheit = fahrenheit
    }
}

struct Image: Codable {
    var width: Int
    var link: String
    var url: String
    var title: String
    var height: Int
    init(width: Int,
         link: String,
         url: String,
         title: String,
         height: Int) {
        self.width = width
        self.link = link
        self.url = url
        self.title = title
        self.height = height
    }
}

struct Location: Codable {
    var city: String
    var area: String
    var prefecture: String
    init(city: String,
         area: String,
         prefecture: String) {
        self.city = city
        self.area = area
        self.prefecture = prefecture
    }
}

struct Copyright: Codable {
    var provider: [Provider]
    var link: String
    var title: String
    var image: Image
    init(provider: Provider,
         link: String,
         title: String,
         image: Image) {
        self.provider = [provider]
        self.link = link
        self.title = title
        self.image = image
    }
}

struct Provider: Codable {
    var link: String
    var name: String
    
    init(link: String,
         name: String) {
        self.link = link
        self.name = name
    }
}

struct Description: Codable {
    var text: String
    var pupblicTime: String
    init(text: String,
         publicTime: String) {
        self.text = text
        self.pupblicTime = publicTime
    }
}
