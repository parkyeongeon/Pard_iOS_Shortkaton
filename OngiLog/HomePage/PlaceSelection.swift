//
//  PlaceSelection.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct PlaceSelection: View {

    let places = MockData.placeList

    var body: some View {

        ScrollView {
            VStack(spacing: 20) {

                ForEach(places) { place in
                    NavigationLink {
                        PlaceDetailPageView(place: place)
                    } label: {
                        if(place.id == 1 || place.id == 2){
                            ZStack {
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 329, height: 159.5)
                                    .cornerRadius(12)
                                    .shadow(color: Color.black.opacity(0.2),
                                            radius: 5,
                                            x: 0, y: 2)

                                VStack {
                                    Spacer()
                                    Text(place.name)
                                        .font(.system(size: 20))
                                        .bold()
                                    HStack {
                                        Text("#거실 #대청소")
                                    }
                                    .padding()
                                }
                            }

                            
                        }
                        else {
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .fill(.white)
                                        .border(.blue.opacity(0.3))
                                        .frame(width: 157, height: 160)
                                        .cornerRadius(12)
                                    VStack() {
                                        Text(place.name)
                                    }
                                }
                                ZStack {
                                    Rectangle()
                                        .fill(.white)
                                        .border(.blue.opacity(0.3))
                                        .frame(width: 157, height: 160)
                                        .cornerRadius(12)
                                    VStack() {
                                        Text(place.name)
                                    }
                                }
                            }
                            
                        }
                    }
                }

            }
            .padding()
        }
    }
}


#Preview {
    PlaceSelection()
}
