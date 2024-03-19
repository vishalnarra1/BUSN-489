//
//  ContentView.swift
//  Exercise1Feb5
//
//  Created by Narra, Vishal on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Click Me"){
                print("button instance with trailing closure")
            }
            .padding(20)
            Button(action: {print("Howdy")}, label: {
                HStack {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            })
        }
        
        
        //Text("Hi")
            //.padding(10)
        //Text("World")
            //.font(.title)
            //.foregroundColor(Color(red: 25, green: 0, blue: 10, opacity: 1.0))
            
    }
}

#Preview {
    ContentView()
}
