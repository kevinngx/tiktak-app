//
//  AdvancedGameBoardView.swift
//  TikTak
//
//  Created by Kevin Nguyen on 19/2/2024.
//

import SwiftUI

struct UltimateGameView: View {
    @State private var current_turn = "🟢"
    var body: some View {
        VStack {
            HStack {
                BoardView(current_turn: $current_turn)
                Spacer()
                BoardView(current_turn: $current_turn)
                Spacer()
                BoardView(current_turn: $current_turn)
            }
            Spacer()
            HStack {
                BoardView(current_turn: $current_turn)
                Spacer()
                BoardView(current_turn: $current_turn)
                Spacer()
                BoardView(current_turn: $current_turn)
            }
            Spacer()
            HStack {
                BoardView(current_turn: $current_turn)
                Spacer()
                BoardView(current_turn: $current_turn)
                Spacer()
                BoardView(current_turn: $current_turn)
            }
        }
        .padding()
    }
}

#Preview {
    UltimateGameView()
}
