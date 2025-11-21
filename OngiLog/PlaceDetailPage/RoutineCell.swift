import SwiftUI

struct RoutineCell: View {
    @Binding var step: RoutineStep

    var body: some View {
        VStack(spacing: 16) {

            // 안내 문구
            Text(step.isComplete ? "완료!" : "카드를 탭하여 완료 처리")
                .font(.headline)
                .foregroundColor(step.isComplete ? .gray : .blue)
                .padding(.top, 16)

            // 이미지
            ZStack {
                Image(step.routineImage)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()

                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 200)
                    .cornerRadius(16)
            }

            // 제목
            Text(step.title)
                .font(.title2)
                .bold()

            // 설명
            Text(step.description)
                .foregroundColor(.gray)

            Spacer(minLength: 0)
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .frame(height: 350)
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(step.isComplete ? Color(white: 0.92) : Color.white)   // ⭐ 터치하면 카드 전체 회색
                .shadow(radius: 4)
        )
        .animation(.easeInOut(duration: 0.25), value: step.isComplete)     // ⭐ 부드러운 색 변화
        .onTapGesture {
            step.isComplete.toggle()
        }
    }
}
