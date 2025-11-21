////
////  ContentView.swift
////  OngiLog
////
////  Created by Taemin KIM on 11/22/25.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            HomeView()
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        ZStack {
            Color.white
            .ignoresSafeArea()
            
            VStack {
                LogoBar()
                
                SearchBar(text: $searchText)
                    
                
                Spacer()
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ContentView()
}
