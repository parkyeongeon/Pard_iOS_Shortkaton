import SwiftUI

struct RoutineCell: View {
    @Binding var step: RoutineStep

    var body: some View {

        VStack(spacing: 16) {

            // 카드 안내 문구
            Text(step.isCompleted ? "완료" : "카드를 탭하여 완료로 표시")
                .font(.headline)
                .foregroundColor(.blue)
                .padding(.top, 16)

            // 이미지 영역
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 200)
                .cornerRadius(16)

            // 제목
            Text(step.title)
                .font(.title2)
                .bold()

            // 내용
            Text(step.description)
                .foregroundColor(.gray)

            Spacer(minLength: 0)
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .frame(height: 350)
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(Color.white)
                .shadow(radius: 4)
        )
        .opacity(step.isCompleted ? 0.5 : 1.0)
        .contentShape(Rectangle())      // 🔥 터치 영역을 전체로 확장
        .onTapGesture {
            step.isCompleted.toggle()
        }
    }
}

#Preview {
    RoutineCell(step: .constant(MockData.kitchen.routines[0]))
        .previewLayout(.sizeThatFits)
        .padding()
}
