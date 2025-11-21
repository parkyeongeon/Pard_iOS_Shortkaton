//
//  RoutineList.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct RoutineList: View {

    @State var routines: [RoutineStep]

    var body: some View {
        VStack(spacing: 16) {
            ForEach($routines) { $step in
                RoutineCell(step: $step)
            }
        }
    }
}

