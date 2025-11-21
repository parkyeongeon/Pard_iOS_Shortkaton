//
//  OnBoarding.swift
//  OngiLog
//
//  Created by Taemin KIM on 11/22/25.
//

import SwiftUI

struct OnBoarding: View {

    @State private var navigate = false

    var body: some View {
        ZStack {
            if navigate {
                HomeView()
            } else {
                VStack(spacing: 24) {

                    Spacer()

                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)

//                    Text("온기록")
//                        .font(.largeTitle)
//                        .bold()

//                    Text("오늘의 청소 루틴을\n손쉽게 기록하고 시작해보세요")
//                        .font(.body)
//                        .foregroundColor(.gray)
//                        .multilineTextAlignment(.center)

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
