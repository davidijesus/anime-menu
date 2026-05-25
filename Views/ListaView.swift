import SwiftUI

// ListaView.swift -- 
struct ListaView: View {
    var body: some View {
        NavigationStack {
            // Com scrollview e o foreach para suportar qualquer quantidade de animes séries e desenhos (ou também doramas, rs)
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(programas) { programa in
                        NavigationLink(destination: ProgramaDetailView(programa: programa)) {
                            ShowCard(programa: programa)
                        }
                        .buttonStyle(.plain)   
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
