//
//  PlaceDetailPageView.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct PlaceDetailPageView: View {
    let place: Place
    
    var body: some View {
        PlaceTitle(place: place)
        RoutineList(routines: place.routines)
    }
}

#Preview {
    PlaceDetailPageView(place: MockData.kitchen)
}
