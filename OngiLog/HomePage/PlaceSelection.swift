import SwiftUI

struct PlaceSelection: View {

    let places: [PlaceSummary]

    var body: some View {

        ScrollView {
            VStack(spacing: 20) {

                // 첫 2개 → Large 카드
                ForEach(places.prefix(2)) { place in
                    NavigationLink {
                        PlaceDetailLoaderView(placeId: place.placeId)
                    } label: {
                        LargePlaceCard(place: place)
                    }
                }

                // 나머지 → Small 카드 2개씩 나누기
                let smallPlaces = Array(places.dropFirst(2))

                ForEach(smallPlaces.chunked(into: 2), id: \.self) { row in
                    HStack(spacing: 15) {

                        // 🚀 핵심 수정: id: \.placeId 추가!
                        ForEach(row, id: \.placeId) { place in
                            NavigationLink {
                                PlaceDetailLoaderView(placeId: place.placeId)
                            } label: {
                                SmallPlaceCard(place: place)
                            }
                        }

                        // 홀수 개면 빈 박스 하나 넣기
                        if row.count == 1 {
                            Color.clear
                                .frame(width: 157, height: 160)
                        }
                    }
                }

            }
            .padding()
        }
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
