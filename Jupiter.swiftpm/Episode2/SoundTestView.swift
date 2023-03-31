//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/30.
//

import SwiftUI

struct SoundTestView: View {
    var body: some View {
        VStack {
            Button("Duck") {
                SoundSetting.soundPlayer.play(fileName: "duck")
            }
            
            Button("Birds") {
                SoundSetting.soundPlayer.play(fileName: "birds")
            }
        }
        .onDisappear(perform:SoundSetting.soundPlayer.stop )
    }
}

struct SoundTestView_Previews: PreviewProvider {
    static var previews: some View {
        SoundTestView()
    }
}
