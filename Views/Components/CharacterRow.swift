import SwiftUI

struct CharacterRowView: View {
    
    let programa: Programa
    
    var emoji: String = programa.personagens
    var nome: String = programa.personagens
    var papel: String = programa.personagens
    
    var body: some View {
        HStack(spacing: 16) {
            Text(emoji)
                .font(.system(size: 40))
            
            VStack(alignment: .leading, spacing: 4) {
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
        .padding(.horizontal)
    }
}
