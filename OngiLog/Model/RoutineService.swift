import Foundation

final class RoutineService {
    
    func fetchRoutines(placeId: Int) async throws -> [RoutineStep] {
        guard let url = URL(string: "\(BaseURL.base.rawValue)/places/\(placeId)/routines") else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse,
              (200...299).contains(http.statusCode) else {
            throw URLError(.badServerResponse)
        }

        return try JSONDecoder().decode([RoutineStep].self, from: data)
    }
}
