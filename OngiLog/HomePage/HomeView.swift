import SwiftUI

struct HomeView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            VStack {
                LogoBar()
                SearchBar(text: $searchText)
                PlaceSelection()
            }
            .padding()
        }
    }
}
