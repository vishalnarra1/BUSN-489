//
//  GameView.swift
//  TicTacToev1
//
//  Created by Narra, Vishal on 2/26/24.
//

import SwiftUI

struct GameView: View {
    
@Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Hello, World!")
            }.toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("End Game"){
                        dismiss()
                    }.buttonStyle(.bordered)
                }
            }//end of toolbar
            .navigationTitle("Tic Tac Toe")
        }//end of navigation stack
    }
}

#Preview {
    GameView()
}
