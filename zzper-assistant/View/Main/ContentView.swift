//
//  ContentView.swift
//  zzper-assistant
//
//  Created by berk tuna on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        MainTabView(selectedIndex: $selectedIndex)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
