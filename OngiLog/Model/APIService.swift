import Foundation

final class PlaceService {
    
    func fetchPlaces() async throws -> [PlaceSummary] {
        guard let url = URL(string: "\(BaseURL.base.rawValue)/places") else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse,
              (200...299).contains(http.statusCode) else {
            throw URLError(.badServerResponse)
        }

        return try JSONDecoder().decode([PlaceSummary].self, from: data)
    }
    
    
    func fetchPlace(id: Int) async throws -> PlaceSummary {
        guard let url = URL(string: "\(BaseURL.base.rawValue)/places/\(id)") else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse,
              (200...299).contains(http.statusCode) else {
            throw URLError(.badServerResponse)
        }

        return try JSONDecoder().decode(PlaceSummary.self, from: data)
    }
}

extension PlaceService {
    func fetchPlaceDetail(id: Int) async throws -> PlaceDetail {
        let url = URL(string: "\(BaseURL.base.rawValue)/places/\(id)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(PlaceDetail.self, from: data)
    }
}
