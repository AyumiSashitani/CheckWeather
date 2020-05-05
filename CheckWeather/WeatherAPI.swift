//
//  WheaTherAPI.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/29.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import Foundation
import Alamofire

class WheatherAPI {
    
    func featchWeather(onSuccess: @escaping (WeatherResponse?) -> Void,
                       onError: @escaping (Error) -> Void) {
        execute(onSuccess: { serverResult in
            guard let result = serverResult else {
                onSuccess(nil)
                return
            }
            onSuccess(result)
            },
                onError: { error in
                    print(error)
        })
    }
    
    func execute(onSuccess: @escaping (WeatherResponse?) -> Void,
                 onError: @escaping (Error) -> Void) {
        
        AF.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=130010",
                   method: .get).responseJSON { response in
                    guard let data = response.data else {
                        return print("error")
                    }
                    let resData = try? JSONDecoder().decode(WeatherResponse?.self, from: data)
                    onSuccess(resData)
        }
    }
}
