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
    
    
    var body: some View {
        HStack(spacing: 12) {
            Rectangle()
                .fill(fillColor)
                .frame(width:6)
            // TODO B: thumbnail com emoji
            RoundedRectangle(cornerRadius: 4)
                .fill(Color(.systemBackground))
                .frame(width: 100, height: 100, alignment: .top)
                
            VStack(alignment: .leading, spacing: 4) {
                Text(programa.nome)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(programa.genero)
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)
                
                HStack(spacing:4) {
                    
                }
                    
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
    }
}

