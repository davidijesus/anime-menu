import SwiftUI

// PrtogramDetailView.swift
struct ProgramDetailView: View {
    let programa = Programa
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // TODO E: ZStack com hero (fundo + emoji + overlay)
                //         badge de tipo + nome em cima do hero
 
                // TODO F: secao Sinopse (Text com naruto.sinopse)
 
                HStack(spacing: 8) {
                    
                }
 
                // TODO H: secao Personagens
                //         ForEach sobre naruto.personagens
                //         -> CharacterRow para cada um
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

