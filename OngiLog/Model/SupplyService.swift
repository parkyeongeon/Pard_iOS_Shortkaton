import Foundation

final class SupplyService {
    
    func fetchSupplies(placeId: Int) async throws -> [Supply] {
        guard let url = URL(string: "\(BaseURL.base.rawValue)/places/\(placeId)/supplies") else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse,
              (200...299).contains(http.statusCode) else {
            throw URLError(.badServerResponse)
        }

        return try JSONDecoder().decode([Supply].self, from: data)
    }
}
