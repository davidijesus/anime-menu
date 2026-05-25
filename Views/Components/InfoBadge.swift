import SwiftUI

// InfoBadge.swift -- badge reutilizavel para episodios, temporadas e status
struct InfoBadge: View {
    let icon: String          // SF Symbol ou emoji
    let valor: String         // texto principal em bold
    let rotulo: String        // label em footnote abaixo
    let cor: Color            // laranja=episodios, verde=temporadas, azul=status

    var body: some View {
        // TODO: VStack com icone + valor em bold + rotulo em footnote
        VStack(spacing: 6) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(cor)

            Text(valor)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .lineLimit(1)
                .minimumScaleFactor(0.7)

            Text(rotulo)
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 8)
        .frame(maxWidth: .infinity)
        .background(cor.opacity(0.12))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(cor.opacity(0.3), lineWidth: 1)
        )
    }
}

#Preview {
    HStack(spacing: 12) {
        InfoBadge(icon: "play.circle.fill", valor: "720", rotulo: "Episódios", cor: .orange)
        InfoBadge(icon: "tv.fill",          valor: "5",   rotulo: "Temporadas", cor: .green)
        InfoBadge(icon: "checkmark.circle.fill", valor: "Concluído", rotulo: "Status", cor: .blue)
    }
    .padding()
}
