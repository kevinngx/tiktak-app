//
//  MenuView.swift
//  TikTak
//
//  Created by Kevin Nguyen on 18/2/2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack{
                // Game Title
                Text("TikTakToe")
                
                // Game Image
                Image("3d_board")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(8)
                
                Spacer()
                
                // Normal Game
                NavigationLink {
                    NormalGameView()
                } label: {
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                        HStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.white)
                            Text("Normal Game")
                                .foregroundColor(.white)
                        }
                    }
                    .frame(height: 50)
                }
                
                // Advanced Game
                NavigationLink {
                    UltimateGameView()
                } label: {
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                        HStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.white)
                            Text("Ultimate Game")
                                .foregroundColor(.white)
                        }
                    }
                    .frame(height: 50)
                }
                
                // How To Play
                HStack{
                    NavigationLink {
                        TutorialView()
                    } label: {
                        ZStack {
                            Rectangle()
                                .cornerRadius(8)
                            HStack {
                                Image(systemName: "globe")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                Text("How To Play")
                                    .foregroundColor(.white)
                            }
                        }
                        .frame(height: 50)
                    }
                    NavigationLink {
                        TutorialView()
                    } label: {
                        ZStack {
                            Rectangle()
                                .cornerRadius(8)
                            HStack {
                                Image(systemName: "globe")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                Text("Mute")
                                    .foregroundColor(.white)
                            }
                        }
                        .frame(height: 50)
                    }
                }
                
                
            }
            .padding()
        }
        
    }
}

#Preview {
    MenuView()
}
