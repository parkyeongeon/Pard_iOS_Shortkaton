import SwiftUI

struct LogoBar: View {
    var body: some View {
        
        VStack {
            ZStack {
                HStack {
                    Text("로고")
                        .bold()
                        .foregroundStyle(Color.blue)
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                        .font(.system(size: 20))
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    LogoBar()
}
