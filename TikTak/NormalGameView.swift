//
//  GameBoardView.swift
//  TikTak
//
//  Created by Kevin Nguyen on 18/2/2024.
//

import SwiftUI
let CIRCLE_TURN = -1
let CROSS_TURN = 1
struct NormalGameView: View {
    @State private var current_turn = "🟢"
 
    var body: some View {
        VStack {
            Text("Player Turn")
            BoardView(current_turn: $current_turn)
        }
    }
}

#Preview {
    NormalGameView()
}
