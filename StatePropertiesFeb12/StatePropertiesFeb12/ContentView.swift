//
//  ContentView.swift
//  StatePropertiesFeb12
//
//  Created by Narra, Vishal on 2/12/24.

//State Properties
//@state
//allows Swift UI to track the value of a data within a structure
//Swift can internally do memory management to maintain the states of the values you are using
//@ObservedObject
//@EnvironmentObject
//These state properties are used to track data across pages


import SwiftUI

struct ContentView: View {
    @State private var name:String = "Jack and Jill"
    var body: some View {
        VStack {
            Image(systemName: "square")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, \(name)!")
            TextField("Name", text: $name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
