import SwiftUI

// ListaView.swift
struct ListaView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                // TODO 1: ShowCard para naruto
                //         + NavigationLink -> NarutoDetailView
 
                // TODO 2: ShowCard para avatar
                //         + NavigationLink -> AvatarDetailView
 
                // TODO 3: ShowCard para strangerThings
                //         + NavigationLink -> StrangerDetailView
            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

