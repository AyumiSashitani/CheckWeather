//
//  Execute.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/29.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import Foundation
import Alamofire

class Execute {
    
    func featchWeather(completionHandler: @escaping (WeatherResponse?) -> Void) {
        execute(completionHandler: { serverResult in
            guard let result = serverResult else {
                completionHandler(nil)
                return
            }
            completionHandler(result)
        })
    }
    
    func execute(completionHandler: @escaping (WeatherResponse?) -> Void) {
        
        AF.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=130010",
                   method: .get).responseJSON { response in
                    guard let data = response.data else {
                        return print("error")
                    }
                    let resData = try? JSONDecoder().decode(WeatherResponse?.self, from: data)
                    completionHandler(resData)
        }
    }
}
