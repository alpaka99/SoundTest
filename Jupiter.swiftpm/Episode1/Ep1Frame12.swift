//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame12: View {
    @State var tag:Int? = nil
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
            Image("1-12")
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink(
                        destination: Ep1Frame13(), tag : 1, selection: self.$tag){}
                    
                    
                    Button("다음"){
                        self.tag = 1
                    }.padding(.bottom, 35)
                    .padding(.trailing,50)
                    
                    
                }       // HStack
                
            }   //vstack
        }           // zstack
        .onAppear(perform: soundPlayEp1Frame12)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)

        
    }   // body
    
    func soundPlayEp1Frame12() {
        SoundSetting.soundPlayer.play(fileName: "taecho12")
    }
}

struct Ep1Frame12_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame12()
    }
}
