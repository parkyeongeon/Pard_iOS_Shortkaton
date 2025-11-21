//
//  HomeView.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            LogoBar()
            SearchBar(text: $searchText)
            PlaceSelection()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
