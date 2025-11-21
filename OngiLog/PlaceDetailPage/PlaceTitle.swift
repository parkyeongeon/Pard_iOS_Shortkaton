//
//  PlaceTitle.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct PlaceTitle: View {

    let place: Place

    var body: some View {
        VStack(spacing: 12) {
            Image(place.image)
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 16))

            Text(place.name)
                .font(.largeTitle)
                .bold()
        }
        .frame(maxWidth: .infinity)
    }
}
