//
//  RoutineCell.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct RoutineCell: View {

    @Binding var step: RoutineStep

    var body: some View {
        HStack(alignment: .top, spacing: 16) {

            // 이미지
            Image(step.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            // 텍스트 정보
            VStack(alignment: .leading, spacing: 6) {
                Text("\(step.orderIndex). \(step.title)")
                    .font(.headline)

                Text(step.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            // 체크버튼
            Button {
                step.isCompleted.toggle()
            } label: {
                Image(systemName: step.isCompleted ? "checkmark.circle.fill" : "circle")
                    .font(.title2)
                    .foregroundColor(step.isCompleted ? .green : .gray)
            }
        }
        .padding()
        .background(Color(white: 0.97))
        .cornerRadius(16)
    }
}


#Preview {
    RoutineCell(step: .constant(MockData.kitchen.routines[0]))
        .previewLayout(.sizeThatFits)
        .padding()
}
