import SwiftUI

struct PlaceDetailLoaderView: View {
    let placeId: Int

    @State private var detail: PlaceDetail?
    @State private var isLoading = true

    let service = PlaceService()

    var body: some View {
        Group {
            if isLoading {
                ProgressView("불러오는 중…")
            }
            else if let detail = detail {
                PlaceDetailPageView(place: detail)
            }
            else {
                Text("데이터를 불러오지 못했습니다.")
                    .foregroundColor(.red)
            }
        }
        .task {
            await fetchPlaceDetail()
        }
    }

    private func fetchPlaceDetail() async {
        do {
            detail = try await service.fetchPlaceDetail(id: placeId)
        } catch {
            print("❌ Error fetching detail:", error)
        }
        isLoading = false
    }
}
