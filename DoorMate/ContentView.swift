//
//  ContentView.swift
//  DoorMate
//
//  Created by Lucas Peterson on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            UnlockView()
                .tabItem {
                    Label("Unlock", systemImage: "key")
                }

            DoorView()
                .tabItem {
                    Label("Doors", systemImage: "list.bullet")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
