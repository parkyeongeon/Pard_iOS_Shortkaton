import SwiftUI

struct Supplies: View {
    let supplies: [Supply]

    var body: some View {
        HStack {
            Text("필요한 물품")
                .foregroundColor(Color.blue.opacity(0.8))
                .fontWeight(.semibold)

            Spacer()

            Text(supplies.map { $0.name }.joined(separator: ", "))
                .foregroundColor(Color.blue.opacity(0.8))
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(15)
    }
}

#Preview {
    Supplies(supplies: MockData.kitchen.supplies)
}
