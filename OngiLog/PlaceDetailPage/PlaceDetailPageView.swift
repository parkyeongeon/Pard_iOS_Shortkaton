import SwiftUI

struct PlaceDetailPageView: View {
    let place: PlaceDetail

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Supplies(supplies: place.supplies)
                RoutineList(routines: place.routines)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(place.placeName)
                    .font(.system(size: 24, weight: .bold))  // ← 글씨 크기 조절
                    .foregroundColor(.black)
            }
        }
    }
}
