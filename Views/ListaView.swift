import SwiftUI

// ListaView.swift
struct ListaView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ShowCard(programa:naruto)
                NavigationLink(destination:ProgramDetailView(programa:naruto)){}
                
                ShowCard(programa:avatar)
                NavigationLink(destination:ProgramDetailView(programa:naruto)){}
                
                ShowCard(programa:strangerThings)
                NavigationLink(destination:ProgramDetailView(programa:naruto)){}

            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

