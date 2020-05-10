//
//  WheaTherAPI.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/29.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import Foundation
import Alamofire

class WeatherAPI {
    
    func featchWeather(onSuccess: @escaping (WeatherResponse?) -> Void,
                       onError: @escaping (Error) -> Void) {
        communicate(responseType: WeatherResponse.self, onSuccess: onSuccess, onError: onError)
    }
    
    private func communicate<K>(responseType: K.Type,
                                onSuccess: @escaping (K) -> Void,
                                onError: @escaping (Error) -> Void) where K: Decodable {
        
        let url = "http://weather.livedoor.com/forecast/webservice/json/v1?city=130010"
        
        //リクエスト送信
        AF.request(url, method: .get).response { response in
            do {
                //レスポンスのpayloadが存在しない場合はエラー
                guard let data = response.data else {
                    onError(response.error!)
                    return
                }
                let resData = try JSONDecoder().decode(responseType, from: data)
                onSuccess(resData)
            } catch {
                onError(response.error!)
            }
            return
        }
    }
}
