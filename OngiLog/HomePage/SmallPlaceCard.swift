import SwiftUI

struct SmallPlaceCard: View {
    let place: PlaceSummary

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 157, height: 160)
                .cornerRadius(12)
                .shadow(
                    color: Color.black.opacity(0.2),
                    radius: 5, x: 0, y: 2
                )

            VStack(alignment: .leading) {
                Spacer()

                Text(place.placeName)
                    .font(.system(size: 18))
                    .bold()
                    .foregroundColor(.black)

                Text("#청소 #기록")
                    .font(.system(size: 13))
                    .foregroundColor(.black)

            }
            .padding(.leading, 14)
            .padding(.bottom, 14)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
