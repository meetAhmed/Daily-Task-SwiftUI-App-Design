//
//  MainView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }
            
            SettingsView()
                .tabItem {
                    Text("Settings")
                    Image(systemName: "gear")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
