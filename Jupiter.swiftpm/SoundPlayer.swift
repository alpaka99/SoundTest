//
//  File.swift
//  
//
//  Created by user on 2023/03/30.
//

import Foundation
import SwiftUI
import AVFoundation

class SoundSetting: ObservableObject {
    static let soundPlayer = SoundSetting()
    
    var player: AVAudioPlayer?
    
    func play(fileName: String) {
        guard let url = Bundle.main.url(forResource: fileName.lowercased(), withExtension:"mp3") else {
            print("\(fileName) not found")
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func stop() {
        player?.stop()
    }
}
