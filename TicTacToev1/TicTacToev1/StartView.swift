//
//  ContentView.swift
//  TicTacToev1
//
//  Created by Narra, Vishal on 2/19/24.
//

import SwiftUI

struct StartView: View {
    //lets create state properties to keep track of gametype, names of the users playing the game
    @State private var gameType:GameType = .undetermined
    @State private var yourName:String = ""
    @State private var opponentName:String = ""
    
    @FocusState private var focus:Bool
    //for the keyboard focus we want the keyboard to dissapear when the game starts; set it to false in that case
    //this will be set to true when we are within the textview
    @State private var startGame:Bool = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Picker("Select Game", selection: $gameType){
                    Text("Select game type").tag(GameType.undetermined)
                    
                    Text("Two sharing device").tag(GameType.single)
                    
                    Text("Challenge your device").tag(GameType.bot)
                    
                    Text("Challenge a friend").tag(GameType.peer)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(style: StrokeStyle(lineWidth: 2)))
                
                Text(gameType.description)
                    .padding()
                
                VStack{
                    switch gameType {
                    case .single:
                        TextField("Your Name", text:$yourName)
                        TextField("Opponent Name", text:$opponentName)
                        
                    case .bot:
                        TextField("Your Name", text:$yourName)
                        
                    case .peer:
                        EmptyView()
                        
                    case .undetermined:
                        EmptyView()
                    }
                }.padding()
                    .textFieldStyle(.roundedBorder)
                    .focused($focus)
                    .frame(width:350)
                
                if gameType != .peer{
                    Button("Start Game"){
                        focus = false
                        startGame.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                    .disabled(
                        gameType == .undetermined ||
                        (gameType == .bot && yourName.isEmpty) ||
                        gameType == .single && (yourName.isEmpty || opponentName.isEmpty)
                    )
                    
                    Image("LaunchScreen")
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Tic-Tac-Toe")
            .fullScreenCover(isPresented: $startGame){
                GameView()
            }
        }
    }
}

#Preview {
    StartView()
}
