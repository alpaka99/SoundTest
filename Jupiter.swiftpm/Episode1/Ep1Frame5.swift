//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame5: View {
    @State var subtitle = "CBL을 쌓아가던 중\n'리(이)오' 등장"
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-5")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame6(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음"){
                                    self.tag = 1
                                }.padding(.top, 60)
                                .padding(.trailing,50)
                                
                                
                            }       // HStack
                }       // overlay

                
            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        .onAppear(perform: playSoundEP1Frame5)
        
    }   // body
    
    func playSoundEP1Frame5() {
        SoundSetting.soundPlayer.play(fileName: "reeo5")
    }
}

struct Ep1Frame5_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame5()
    }
}
