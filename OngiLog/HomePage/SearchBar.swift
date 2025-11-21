import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                
                if text.isEmpty {
                    Text("검색어를 입력하세요.")
                        .foregroundColor(Color.blue.opacity(0.7))
                }
                
               
                TextField("", text: $text)
                    .foregroundColor(.black)
            }
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.blue.opacity(0.7))
        }
        .padding(.horizontal, 15)
        .frame(height: 45)
        .background(Color.white.opacity(0.5))
        .cornerRadius(22.5)
        .overlay(
            RoundedRectangle(cornerRadius: 22.5)
                .stroke(Color.blue.opacity(0.7), lineWidth: 1.5)
        )
    }
}

#Preview {
    SearchBar(text: .constant(""))
}
