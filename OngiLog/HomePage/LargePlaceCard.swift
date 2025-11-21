import SwiftUI

struct LargePlaceCard: View {
    let place: PlaceSummary

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 329, height: 159.5)
                .cornerRadius(12)
                .shadow(
                    color: Color.black.opacity(0.2),
                    radius: 5, x: 0, y: 2
                )

            VStack(alignment: .leading, spacing: 6) {
                Spacer()

                Text(place.placeName)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.black)

                Text("#거실 #대청소")
                    .font(.system(size: 14))
                    .foregroundColor(.black)

            }
            .padding(.leading, 20)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
