import SwiftUI

struct LogoBar: View {
    var body: some View {
        
        VStack {
            ZStack {
                HStack {
                    Text("로고")
                        .bold()
                        .foregroundColor(Color(red: 95/255, green: 148/255, blue: 240/255)) 
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
