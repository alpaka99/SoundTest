//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame3: View {
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-3")
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink(
                        destination: Ep1Frame4(), tag : 1, selection: self.$tag){}
                    
                    
                    Button("다음"){
                        self.tag = 1
                    }.padding(.bottom, 120)
                    .padding(.trailing,50)
                    
                    
                }       // HStack
                
            }   //vstack
               
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        .onAppear(perform: playSoundEp1Frame3)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
        
    }   // body
    func playSoundEp1Frame3() {
        SoundSetting.soundPlayer.play(fileName: "click3")
    }
}

struct Ep1Frame3_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame3()
    }
}
