import SwiftUI

// CharacterRow.swift -- linha reutilizavel para cada personagem
struct CharacterRow: View {
    let nome: String
    let papel: String
    let emoji: String

    var body: some View {
        // TODO: HStack: emoji + VStack(nome em headline + papel em subheadline)
        HStack(spacing: 16) {
            Text(emoji)
                .font(.system(size: 40))
                .frame(width: 52, height: 52)
                .background(Color(.tertiarySystemBackground))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 3) {
                Text(nome)
                    .font(.headline)
                    .foregroundColor(.primary)

                Text(papel)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
    }
}

#Preview {
    VStack(spacing: 8) {
        CharacterRow(nome: "Naruto Uzumaki", papel: "Protagonista", emoji: "🍜")
        CharacterRow(nome: "Sasuke Uchiha",  papel: "Rival",        emoji: "⚡")
    }
    .padding()
}
