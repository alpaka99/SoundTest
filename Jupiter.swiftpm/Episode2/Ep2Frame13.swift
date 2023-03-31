//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame13: View {
    @State var subtitle = "발표가 무사히 마치고, \n 우리는 비로소 팀이 되었다!\n \n - Episode 2 끝 -"
    @State var tag:Int? = nil
    
    var body: some View {
        ZStack {
            Image("image_EP2_13")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)

            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        .onAppear(perform: playSoundEp2Frame13)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
    }
    
    func playSoundEp2Frame13() {
        SoundSetting.soundPlayer.play(fileName: "ending13")
    }
}

struct Ep2Frame13_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame13()
    }
}
