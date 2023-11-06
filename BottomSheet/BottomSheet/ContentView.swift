//
//  ContentView.swift
//  BottomSheet
//
//  Created by Lucas Neves dos santos pompeu on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var presentation: Bool = false
    
    var body: some View {
        VStack {
            Button("Exibir tela 2") {
                presentation.toggle()
            }
            .sheet(isPresented: $presentation) {
                ZStack {
                    Color.orange
                        .ignoresSafeArea()
                    Text("Oiii mundo")
                        .presentationDetents([.fraction(0.6)])
                        .presentationDragIndicator(.visible)
                        .presentationCornerRadius(30)
                        
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
