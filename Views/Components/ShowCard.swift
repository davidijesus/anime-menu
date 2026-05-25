import SwiftUI

// ShowCard.swift -- componente reutilizavel
struct ShowCard: View {
    let programa: Programa

    // Cor da barra lateral e badge conforme tipo
    var tipoColor: Color {
        switch programa.tipo {
        case "Anime":   return .orange
        case "Desenho": return .blue
        case "Serie":   return .purple
        default:        return .gray
        }
    }

    // Background suave do thumbnail
    var thumbBackground: Color {
        tipoColor.opacity(0.15)
    }

    var body: some View {
        HStack(spacing: 0) {
            // TODO A: Barra lateral colorida por tipo
            Rectangle()
                .fill(tipoColor)
                .frame(width: 6)
                .clipShape(
                    .rect(topLeadingRadius: 16, bottomLeadingRadius: 16)
                )

            HStack(spacing: 12) {
                // TODO B: Thumbnail com emoji centralizado em fundo colorido suave
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(thumbBackground)
                        .frame(width: 64, height: 64)
                    Text(programa.emoji)
                        .font(.system(size: 32))
                }

                // TODO C: Badge de tipo + nome + genero + avaliacao
                VStack(alignment: .leading, spacing: 4) {
                    // Badge de tipo
                    Capsule()
                        .fill(tipoColor.opacity(0.15))
                        .frame(height: 20)
                        .overlay(
                            Text(programa.tipo)
                                .font(.caption2)
                                .fontWeight(.semibold)
                                .foregroundColor(tipoColor)
                        )
                        .frame(width: 64)

                    // Nome
                    Text(programa.nome)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(1)

                    // Genero
                    Text(programa.genero)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(1)

                    // Avaliacao: estrelas + nota
                    HStack(spacing: 2) {
                        ForEach(0..<5, id: \.self) { index in
                            Image(systemName: starName(index: index, avaliacao: programa.avaliacao))
                                .font(.caption)
                                .foregroundColor(.yellow)
                        }
                        Text(String(format: "%.1f", programa.avaliacao))
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                            .padding(.leading, 2)
                    }
                }

                Spacer()

                // TODO D: Chevron a direita
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.tertiary)
                    .padding(.trailing, 12)
            }
            .padding(.vertical, 12)
            .padding(.leading, 12)
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.06), radius: 6, x: 0, y: 2)
    }

    // Retorna nome correto do SF Symbol para estrela (cheia, meia ou vazia)
    private func starName(index: Int, avaliacao: Double) -> String {
        let filled = Int(avaliacao)
        let hasHalf = (avaliacao - Double(filled)) >= 0.5
        if index < filled {
            return "star.fill"
        } else if index == filled && hasHalf {
            return "star.leadinghalf.filled"
        } else {
            return "star"
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        ShowCard(programa: naruto)
        ShowCard(programa: avatar)
        ShowCard(programa: strangerThings)
    }
    .padding()
    .background(Color(.systemGroupedBackground))
}
