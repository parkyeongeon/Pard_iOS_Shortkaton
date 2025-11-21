//
//  Place.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import Foundation


struct PlaceSummary: Codable, Identifiable, Hashable {
    var id: Int { placeId }
    
    let placeId: Int
    let placeName: String
    let placeImage: String
}

struct PlaceDetail: Codable, Identifiable, Hashable {
    var id: Int { placeId }
    
    let placeId: Int
    let placeName: String
    let routines: [RoutineStep]
    let supplies: [Supply]
}


struct Supply: Codable, Identifiable, Hashable {
    var id: Int { supplyId }

    let supplyId: Int
    let supplyName: String
}

struct RoutineStep: Codable, Identifiable, Hashable {
    var id: Int { routineId }

    let routineId: Int
    let orderIndex: Int
    let title: String
    let description: String
    let routineImage: String
    var isComplete: Bool
}
