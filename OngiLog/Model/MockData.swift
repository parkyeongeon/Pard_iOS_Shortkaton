//
//  MockData.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import Foundation

struct MockData {

    static let kitchen = Place(
        id: 1,
        name: "부엌",
        image: "kitchen_thumbnail",
        supplies: [
            Supply(id: 1, name: "고무장갑", placeId: 1),
            Supply(id: 2, name: "행주", placeId: 1),
            Supply(id: 3, name: "베이킹소다", placeId: 1)
        ],
        routines: [
            RoutineStep(
                id: 1,
                orderIndex: 1,
                title: "싱크대 음식물 제거",
                description: "싱크대 안 음식물 찌꺼기를 먼저 치워요.",
                imageName: "kitchen_step1",
                isCompleted: false,
                placeId: 1
            ),
            RoutineStep(
                id: 2,
                orderIndex: 2,
                title: "설거지",
                description: "큰 접시부터 작은 접시 순서로 세척해요.",
                imageName: "kitchen_step2",
                isCompleted: false,
                placeId: 1
            )
        ]
    )

    static let room = Place(
        id: 2,
        name: "방",
        image: "room_thumbnail",
        supplies: [
            Supply(id: 4, name: "청소기", placeId: 2),
            Supply(id: 5, name: "먼지털이", placeId: 2)
        ],
        routines: [
            RoutineStep(
                id: 3,
                orderIndex: 1,
                title: "바닥 정리",
                description: "바닥에 있는 물건부터 제자리에 정리해요.",
                imageName: "room_step1",
                isCompleted: false,
                placeId: 2
            ),
            RoutineStep(
                id: 4,
                orderIndex: 2,
                title: "책상 정리",
                description: "메인 물건부터 치워요.",
                imageName: "room_step2",
                isCompleted: false,
                placeId: 2
            )
        ]
    )

    static let placeList: [Place] = [
        kitchen,
        room
    ]
}

