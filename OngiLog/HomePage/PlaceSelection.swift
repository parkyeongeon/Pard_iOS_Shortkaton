//
//  PlaceSelection.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct PlaceSelection: View {

    let places = MockData.placeList  // ⭐ mockData 연결

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {

                    ForEach(places) { place in
                        NavigationLink {
                            PlaceDetailPageView(place: place)
                        } label: {
                            HStack {
                                Image(place.image)        // 썸네일
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))

                                Text(place.name)
                                    .font(.title2)
                                    .bold()

                                Spacer()
                            }
                            .padding()
                            .background(Color(white: 0.95))
                            .cornerRadius(15)
                        }
                    }

                }
                .padding()
            }
        }
    }
}


#Preview {
    PlaceSelection()
}
