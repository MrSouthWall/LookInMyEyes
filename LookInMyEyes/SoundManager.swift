//
//  SoundManager.swift
//  LookInMyEyes
//
//  Created by MrSouthWall on 2025/7/19.
//

import Foundation
import AVFoundation


class SoundManager {
    static let shared = SoundManager()
    
    private var player: AVAudioPlayer?
    
    func playSound(name: String, ext: String = "m4a") {
        guard let url = Bundle.main.url(forResource: name, withExtension: ext) else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("播放失败: \(error)")
        }
    }
}
