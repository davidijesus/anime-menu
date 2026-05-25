import SwiftUI

// ProgramaDetailView.swift -- "Ir Alem": unica DetailView reutilizavel
struct ProgramaDetailView: View {
    let programa: Programa

    var heroColor: Color {
        switch programa.tipo {
        case "Anime":   return .orange
        case "Desenho": return .blue
        case "Serie":   return .purple
        default:        return .gray
        }
    }

    var tipoColor: Color { heroColor }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                // Hero: ZStack com fundo colorido + emoji grande + overlay gradiente
                ZStack(alignment: .bottomLeading) {
                    Rectangle()
                        .fill(
                            LinearGradient(
                                colors: [heroColor, heroColor.opacity(0.7)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(height: 280)

                    Text(programa.emoji)
                        .font(.system(size: 110))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 40)

                    LinearGradient(
                        colors: [Color.black.opacity(0.65), Color.clear],
                        startPoint: .bottom,
                        endPoint: .center
                    )
                    .frame(height: 280)

                    VStack(alignment: .leading, spacing: 6) {
                        Capsule()
                            .fill(heroColor.opacity(0.85))
                            .frame(height: 24)
                            .overlay(
                                Text(programa.tipo)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            )
                            .frame(width: 72)

                        Text(programa.nome)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                }
                .frame(height: 280)

                // Sinopse
                VStack(alignment: .leading, spacing: 8) {
                    Text("Sinopse")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)

                    Text(programa.sinopse)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.horizontal, 20)

                // InfoBadges: episodios, temporadas, status
                HStack(spacing: 10) {
                    InfoBadge(
                        icon: "play.circle.fill",
                        valor: "\(programa.episodios)",
                        rotulo: "Episódios",
                        cor: .orange
                    )
                    InfoBadge(
                        icon: "tv.fill",
                        valor: "\(programa.temporadas)",
                        rotulo: "Temporadas",
                        cor: .green
                    )
                    InfoBadge(
                        icon: programa.status == "Concluido" ? "checkmark.circle.fill" : "antenna.radiowaves.left.and.right",
                        valor: programa.status,
                        rotulo: "Status",
                        cor: .blue
                    )
                }
                .padding(.horizontal, 20)

                // Personagens
                VStack(alignment: .leading, spacing: 12) {
                    Text("Personagens Principais")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.horizontal, 20)

                    VStack(spacing: 8) {
                        ForEach(programa.personagens, id: \.nome) { personagem in
                            CharacterRow(
                                nome: personagem.nome,
                                papel: personagem.papel,
                                emoji: personagem.emoji
                            )
                        }
                    }
                    .padding(.horizontal, 20)
                }

                Spacer(minLength: 32)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ProgramaDetailView(programa: naruto)
    }
}