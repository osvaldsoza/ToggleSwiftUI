//
//  ContentView.swift
//  ToggleSwiftUI
//
//  Created by Osvaldo Souza Ferreira on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isWiFiOn = false
    @State var isPlay = false
    @State var isNetworkOn = false
    
    var body: some View {
        TabView{
            Toggle("Wi-Fi", systemImage: isWiFiOn ? "wifi" : "wifi.slash", isOn: $isWiFiOn)
                .tint(.pink)
                .font(.largeTitle)
                .toggleStyle(.button)
            // .labelStyle(.iconOnly)
                .contentTransition(.symbolEffect)
                .tabItem {
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                }
            
            Toggle(isPlay ? "Play" : "Stop", systemImage: isPlay ? "play.circle" : "stop.circle", isOn: $isPlay)
                .tint(.blue)
                .font(.largeTitle)
                .toggleStyle(.button)
                .contentTransition(.symbolEffect)
                .tabItem {
                    Image(systemName: "play.circle")
                    Text("Play")
                }
            
            Toggle("Network", systemImage: isNetworkOn ? "network" : "network.slash", isOn: $isNetworkOn)
                .tint(.blue)
                .font(.largeTitle)
                .toggleStyle(.button)
                .contentTransition(.symbolEffect)
                .tabItem {
                    Image(systemName: "network")
                    Text("Network")
                }
        }
    }
}

#Preview {
    ContentView()
}
