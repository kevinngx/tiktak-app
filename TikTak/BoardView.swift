//
//  BoardView.swift
//  TikTak
//
//  Created by Kevin Nguyen on 19/2/2024.
//

import SwiftUI

struct BoardView: View {
    @State private var box_color = [Color.gray, Color.gray, Color.gray,
                                    Color.gray, Color.gray, Color.gray,
                                    Color.gray, Color.gray, Color.gray]
    
    @State private var box_state = [" ", " ", " ",
                                    " ", " ", " ",
                                    " ", " ", " "]
    
//    @State private var current_turn = "🟢"
    @Binding var current_turn: String
    
    // "❌", "🟢"
    var body: some View {
        VStack {
            HStack {
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[0])
                    Button(box_state[0]) {
                        play_clicked(square: 0)
                    }
                }
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[1])
                    Button(box_state[1]) {
                        play_clicked(square: 1)
                    }
                }
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[2])
                    Button(box_state[2]) {
                        play_clicked(square: 2)
                    }
                }
            }
            HStack {
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[3])
                    Button(box_state[3]) {
                        play_clicked(square: 3)
                    }
                }
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[4])
                    Button(box_state[4]) {
                        play_clicked(square: 4)
                    }
                }
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[5])
                    Button(box_state[5]) {
                        play_clicked(square: 5)
                    }
                }
            }
            HStack {
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[6])
                    Button(box_state[6]) {
                        play_clicked(square: 6)
                    }
                }
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[7])
                    Button(box_state[7]) {
                        play_clicked(square: 7)
                    }
                }
                ZStack() {
                    Rectangle().cornerRadius(8).aspectRatio(1, contentMode: .fit).foregroundColor(box_color[8])
                    Button(box_state[8]) {
                        play_clicked(square: 8)
                    }
                }
            }
        }
        .padding()
    }
    
    func play_clicked(square: Int) {
        if box_state[square] == " " {
            if current_turn == "🟢" {
                box_color[square] = Color.green
                box_state[square] = "🟢"
                current_turn = "❌"
            } else {
                box_color[square] = Color.red
                box_state[square] = "❌"
                current_turn = "🟢"
            }
            check_game_state()
        }
    
        func check_game_state() {
        }
    }
}

#Preview {
    BoardView(current_turn: .constant("🟢"))
}
