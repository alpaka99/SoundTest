//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI
import AVKit

struct Ep1Frame9: View {
    @State var subtitle = "야생의 링고-사야(이)가\n피드백을 걸어왔다!"
    @State var tag:Int? = nil
    @State private var index = 0
    
    let images = ["1-9-1", "1-9-2"]
    var body: some View {
        
        ZStack {
            Image(images[index])
                .animation(.easeIn, value: index)
            
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame10(), tag : 1, selection: self.$tag){}
                                
                                
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
        .onAppear(perform: playSoundEp1Frame9)
    }   // body
    func playSoundEp1Frame9() {
        SoundSetting.soundPlayer.play(fileName: "battlesound9_11")
    }
}

struct Ep1Frame9_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame9()
    }
}
