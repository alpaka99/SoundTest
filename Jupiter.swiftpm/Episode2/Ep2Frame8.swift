//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/29.
//

import SwiftUI

struct Ep2Frame8: View {
    @State var subtitle = "발표 순서가 맨 처음이길 바랬지만, \n 가장 마지막 순서로 발표를 하게 되었다..."
    @State var tag:Int? = nil
    
    var body: some View {
        ZStack {
            Image("image_EP2_8")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                        VStack {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep2Frame9(), tag : 1, selection: self.$tag){}
  
                                Button("다음"){
                                    self.tag = 1
                                }.padding(.top, 60)
                                .padding(.trailing,50)
                            }       // HStack
                            
                        }   //vstack
                }       // overlay

            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        .onAppear(perform: playSoundEp2Frame8)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
    }
    func playSoundEp2Frame8() {
        SoundSetting.soundPlayer.play(fileName: "cold8")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.4) {
            SoundSetting.soundPlayer.stop()
        }
    }
}

struct Ep2Frame8_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame8()
    }
}
