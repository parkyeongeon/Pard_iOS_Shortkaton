import SwiftUI

struct HomeView: View {

    @State private var searchText = ""
    @State private var places: [PlaceSummary] = []

    let service = PlaceService()

    var body: some View {
        NavigationStack {
            VStack {
                LogoBar()
                SearchBar(text: $searchText)
                PlaceSelection(places: places)
            }
            .padding()
        }
        .task {
            do {
                self.places = try await service.fetchPlaces()
                print("✅ Places loaded:", places)
            } catch {
                print("❌ Error fetching places:", error)
            }
        }
    }
}
