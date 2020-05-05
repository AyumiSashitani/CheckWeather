//
//  WhetherResultVIew.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/30.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import SwiftUI

struct WhetherResultVIew: View {
    
    @State private var weatherData = WheatherAPI.featchWeather(WheatherAPI())
    @State private var today = getToday()
    @State private var tomorrow = getTommorow()
    
    var body: some View {
        VStack {
            Text("")
            Text("今日(\(today)の天気")
            Text("気温　：12°")
            Text("湿度　：50%")
            Text("午前：☀️　午後：☀️")
            Text("")
            Text("明日(\(tomorrow))の天気")
            Text("気温　：12°")
            Text("湿度　：50%")
            Text("午前：☀️　午後：☔️")
        }
    }
}

struct WhetherResultVIew_Previews: PreviewProvider {
    static var previews: some View {
        WhetherResultVIew()
    }
}

func getToday(format:String = "MM/dd") -> String {
    let now = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: now as Date)
}

func getTommorow(format:String = "MM/dd") -> String {
    let now = Date()
    let modifiedDate = Calendar.current.date(byAdding: .day, value: 1, to: now)!
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: modifiedDate as Date)
}
