import SwiftUI

struct InfoBadgeView: View {
    
    let programa: Programa
    
    var body: some View {
        HStack(spacing: 12) {
            VStack(spacing: 4) {
                Image(systemName: "play.circle.fill")
                    .font(.title2)
                    .foregroundColor(.orange)
                
                Text(String(programa.episodios))
                    .font(.body)
                    .bold()
                
                Text("Episódios")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.orange.opacity(0.15))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.orange.opacity(0.3), lineWidth: 1)
            )
            
            VStack(spacing: 4) {
                Image(systemName: "tv.fill")
                    .font(.title2)
                    .foregroundColor(.green)
                
                Text(String(programa.temporadas))
                    .font(.body)
                    .bold()
                
                Text("Temporadas")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green.opacity(0.15))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.green.opacity(0.3), lineWidth: 1)
            )
            
            // 3. Quadrado de Status (Azul)
            VStack(spacing: 4) {
                Image(systemName: "checkmark.circle.fill")
                    .font(.title2)
                    .foregroundColor(.blue)
                
                Text(programa.status)
                    .font(.body)
                    .bold()
                
                Text("Status")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.15))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.blue.opacity(0.3), lineWidth: 1)
            )
            
        }
        .padding(.horizontal)
    }
}

