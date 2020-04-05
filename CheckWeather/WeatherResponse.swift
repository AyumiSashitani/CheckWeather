//
//  WeatherResponse.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/30.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import Foundation

public struct WeatherResponse: Codable {
    var dateLabel: String
    var telop: String
    var date: String
    var minTemperatureCcelsius: String
    var maxTemperatureCcelsius: String
    var url: String
    var title: String
    var width: Int
    var height: Int
    
    init(dateLabel: String,
         telop: String,
         date: String,
         minTemperatureCcelsius: String,
         maxTemperatureCcelsius: String,
         url: String,
         title: String,
         width: Int,
         height: Int) {
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
