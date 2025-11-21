import SwiftUI

struct OnBoarding: View {

    @State private var navigate = false

    var body: some View {
        ZStack {

            Color(red: 95/255, green: 148/255, blue: 240/255)
                .ignoresSafeArea()

            if navigate {
                HomeView()
            } else {
                VStack(spacing: 24) {

                    Spacer()

                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)

                    Spacer()
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        withAnimation(.easeInOut) {
                            navigate = true
                        }
                    }
                }
                .transition(.opacity)
            }
        }
    }
}

#Preview {
    NavigationStack { OnBoarding() }
}
