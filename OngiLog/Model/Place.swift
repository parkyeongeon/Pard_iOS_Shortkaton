//
//  Place.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import Foundation

struct Place: Codable, Identifiable, Hashable {
    var id: Int?                    // 장소 고유 ID
    let name: String                // "부엌", "방", "화장실"
    let image: String               // 메인에서 쓸 썸네일 이미지 or URL

    let supplies: [Supply]          // 준비물 리스트
    let routines: [RoutineStep]     // 루틴 리스트
}

struct Supply: Codable, Identifiable, Hashable {
    let id: Int                   // 준비물 고유 ID
    let name: String              // "고무장갑", "베이킹소다"
    let placeId: Int              // 어떤 Place에 속하는지 (FK)
}

struct RoutineStep: Codable, Identifiable, Hashable {
    let id: Int                    // 루틴 단계 ID
    let orderIndex: Int            // 순서 (1,2,3,4...)
    let title: String              // "설거지", "바닥 청소"
    let description: String        // 상세 설명
    let imageName: String          // 루틴 단계 이미지 URL or asset 이름
    var isCompleted: Bool          // 체크 여부 (mutable 가능)
    let placeId: Int               // 어떤 장소인지 (FK)
}
