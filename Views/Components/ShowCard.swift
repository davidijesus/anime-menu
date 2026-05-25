import SwiftUI

// ShowCard.swift -- componente reutilizavel
struct ShowCard: View {
    let programa: Programa
    var fillColor: Color{
        if (programa.tipo=="Anime") {
            return .orange
        } else if (programa.tipo=="Desenho") {
            return .blue
        } else if (programa.tipo=="Serie") {
            return .purple
        } else {
            return .gray
        }
    }
    // Nota numérica, ex: 4.5
    var maxStars: Int = 5
    
    var body: some View {
        HStack(spacing: 12) {
            Rectangle()
                .fill(fillColor)
                .frame(width:6)
            
            Text(programa.emoji)
                .overlay(RoundedRectangle(cornerRadius: 4)
                        .fill(Color(.systemBackground))
                        .frame(width: 100, height: 100, alignment: .top))
                
            VStack(alignment: .leading, spacing: 4) {
                Text(programa.nome)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(programa.genero)
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)
                
                HStack(spacing: 4) {
                    ForEach(0..<maxStars, id: \.self) { index in
                        Image(systemName: index <= Int(programa.avaliacao) ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                    }
                    
                    Text(String(format: "%.1f", programa.avaliacao))
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.leading, 8)
                }
            }
                    
            
            Spacer()
            Image(systemName: "chevron.right")
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
    }
}

