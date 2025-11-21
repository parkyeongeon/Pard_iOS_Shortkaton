//
//  PlaceTitle.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct PlaceTitle: View {

    let place: PlaceSummary

    var body: some View {
        VStack(spacing: 12) {
            Image(place.placeImage)
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 16))

            Text(place.placeName)
                .font(.largeTitle)
                .bold()
        }
        .frame(maxWidth: .infinity)
    }
}
