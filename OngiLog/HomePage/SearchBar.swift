import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            ZStack(alignment: .leading) {

                if text.isEmpty {
                    Text("검색어를 입력하세요.")
                        .foregroundColor(Color.blue.opacity(0.7))
                        .padding()
                        .font(.system(size: 14))
                }

                TextField("", text: $text)
                    .foregroundColor(.black)
            }

            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 17, height: 17)
                .foregroundColor(Color.blue.opacity(0.7))
                .padding(5)
        }
        .padding(.horizontal, 5)
        .frame(width: 329, height: 42)
        .background(Color.white.opacity(0.5))
        .cornerRadius(100)
        .overlay(
            RoundedRectangle(cornerRadius: 21)
                .stroke(Color.blue.opacity(0.7), lineWidth: 1)
        )
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SearchBar(text: .constant(""))
}
