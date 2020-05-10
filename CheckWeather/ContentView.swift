//
//  ContentView.swift
//  CheckWeather
//
//  Created by Apple on 2020/03/29.
//  Copyright © 2020 Ayumi Sashitani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: WetherResultVIew()) {
                    Text("天気取得結果を表示する")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
