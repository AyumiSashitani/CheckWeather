//
//  WhetherResultVIew.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/30.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import SwiftUI

struct WhetherResultVIew: View {
    var body: some View {
        let result = Execute().execute { (<#WeatherResponse?#>) in
            <#code#>
        }
        Text(result)
    }
}

struct WhetherResultVIew_Previews: PreviewProvider {
    static var previews: some View {
        WhetherResultVIew()
    }
}
