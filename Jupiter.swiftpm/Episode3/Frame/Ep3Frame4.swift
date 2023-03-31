//
//  SwiftUIView.swift
//  
//
//  Created by 한지석 on 2023/03/29.
//

import SwiftUI

struct Ep3Frame4: View {
    @State private var animationValue = 0
    
    var body: some View {
        VStack(spacing: 30) {
//            Color.white
            Spacer()
            Image("Frame5")
                .resizable()
                .frame(height: 275)
                .frame(maxWidth: .infinity)
            Text("The End")
                .font(.system(size: 40))
                .foregroundColor(.white)
            Spacer()
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
        .onAppear(perform: playSoundEp3Frame4)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
    }
    
    func playSoundEp3Frame4() {
        SoundSetting.soundPlayer.play(fileName: "ending4")
    }
}

struct Ep4Frame4_Previews: PreviewProvider {
    static var previews: some View {
        Ep3Frame4()
    }
}
