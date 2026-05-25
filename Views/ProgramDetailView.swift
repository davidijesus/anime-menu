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

                // TODO F: Sinopse
                // TODO G: InfoBadges
                // TODO H: Personagens
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