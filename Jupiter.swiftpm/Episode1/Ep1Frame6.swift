//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame6: View {
    @State var subtitle = "'잘하고 있네?ㅎ\n무너트려볼까?ㅎ'"
    @State var tag:Int? = nil
    @State private var index = 0
    
    let images = ["1-6-1", "1-6-2"]
    var body: some View {
        
        ZStack {
            Image(images[index])
                .animation(.easeIn, value: index)
            
            
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame7(), tag : 1, selection: self.$tag){}
                                ZStack{
                                    Image("lio")
                                        .resizable()
                                        .frame(width: 240, height: 130)
                                        .padding(.bottom,300)
                                        .padding(.leading,30)
                                    Image("leeo")
                                        .resizable()
                                        .frame(width:130,height: 160)
                                        .padding(.bottom,300)
                                        .padding(.leading,56)
                                }
                                Button("다음\(index+1)/\(images.count)"){
                                    if(index == images.count-1){
                                        self.tag = 1
                                    } else {
                                        index += 1
                                    }
                                }.padding(.top, 60)
                                .padding(.trailing,50)
                                
                                
                            }       // HStack
                }       // overlay

                
            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        .onAppear(perform: playSoundEp1Frame6)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
        
    }   // body
    func playSoundEp1Frame6() {
        SoundSetting.soundPlayer.play(fileName: "voice3")
    }
}

struct Ep1Frame6_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame6()
    }
}
