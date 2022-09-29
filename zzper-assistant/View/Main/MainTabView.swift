//
//  MainTabView.swift
//  TwitterSwiftUITutorial
//
//  Created by Stephen Dowless on 12/4/20.
//

import SwiftUI

struct MainTabView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            LoginView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
        }
    }
}
