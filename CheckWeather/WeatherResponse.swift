//
//  WeatherResponse.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/30.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import Foundation

struct WeatherResponse: Codable,Identifiable {
    var id: String
    var dateLabel: String
    var telop: String
    var date: String
    var minTemperatureCcelsius: String
    var maxTemperatureCcelsius: String
    var url: String
    var title: String
    var width: Int
    var height: Int
    
    init(id: String,
         dateLabel: String,
         telop: String,
         date: String,
         minTemperatureCcelsius: String,
         maxTemperatureCcelsius: String,
         url: String,
         title: String,
         width: Int,
         height: Int) {
        self.id = id
        self.dateLabel = dateLabel
        self.telop = telop
        self.date = date
        self.minTemperatureCcelsius = minTemperatureCcelsius
        self.maxTemperatureCcelsius = maxTemperatureCcelsius
        self.url = url
        self.title = title
        self.width = width
        self.height = height
    }
}
