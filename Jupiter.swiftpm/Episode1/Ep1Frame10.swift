//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame10: View {
    @State var subtitle = "효과는 뛰어났다!"
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-10")
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame11(), tag : 1, selection: self.$tag){}
                                
                                
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
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
        
    }   // body
}

struct Ep1Frame10_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame10()
    }
}
