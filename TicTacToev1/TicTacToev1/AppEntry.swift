//
//  TicTacToev1App.swift
//  TicTacToev1
//
//  Created by Narra, Vishal on 2/19/24.
//

import SwiftUI

@main//primary thread
//a thread decides what kind of memory processing is going to happen
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
