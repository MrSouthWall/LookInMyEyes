//
//  ContentView.swift
//  LookInMyEyes
//
//  Created by MrSouthWall on 2025/7/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    SoundManager.shared.playSound(name: "回答我")
                } label: {
                    Text("回答我 !")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .glassEffect(.regular.tint(.orange).interactive(), in: .rect(cornerRadius: 32.0))
                .aspectRatio(1, contentMode: .fit)
                Button {
                    SoundManager.shared.playSound(name: "LookInMyEyes")
                } label: {
                    Text("Look In My Eyes !")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                }
                .glassEffect(.regular.tint(.yellow).interactive(), in: .rect(cornerRadius: 32.0))
                .aspectRatio(1, contentMode: .fit)
            }
            HStack {
                Button {
                    SoundManager.shared.playSound(name: "TellMeWhy")
                } label: {
                    Text("Tell Me Why !")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .glassEffect(.regular.tint(.yellow).interactive(), in: .rect(cornerRadius: 32.0))
                .aspectRatio(1, contentMode: .fit)
                Button {
                    SoundManager.shared.playSound(name: "啊能能")
                } label: {
                    Text("啊能能 !")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .glassEffect(.regular.tint(.orange).interactive(), in: .rect(cornerRadius: 32.0))
                .aspectRatio(1, contentMode: .fit)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(.orange.opacity(0.1))
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
