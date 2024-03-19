//
//  GameService.swift
//  TicTacToev1
//
//  Created by Narra, Vishal on 2/26/24.
//

import Foundation

class GameService: ObservableObject{
    @Published var player1 = player(gamePiece: .x, name: "Player 1")
    @Published var player2 = player(gamePiece: .o, name: "Player 2")
    @Published var possibleMoves = Moves.all
    
    @Published var gameOver = false
    
    var gameType = GameType.single
    
    var currentPlayer:player{
        if player1.isCurrent{
            return player1
        }
        else{
            return player2
        }
    }
    
    var gameStarted:Bool{
        player1.isCurrent || player2.isCurrent
    }
    
    var boardDisabled:Bool{
        !gameStarted || gameOver
    }
    
}
