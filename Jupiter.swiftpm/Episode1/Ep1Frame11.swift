//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame11: View {
    @State var subtitle = "목성 최균함는(은)는\n눈 앞이 깜깜해졌다..."
    @State var transitionView: Double = 1.0
    @State var tag:Int? = nil
    @State private var buttonDisabled = true
    
    var body: some View {
        
        ZStack {
            Image("1-11")
                .opacity(transitionView)
                                    .animation(.easeIn(duration: (1.5)).delay(2.5))

            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame12(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음"){
                                    self.tag = 1
                                }.padding(.top, 60)
                                    .padding(.trailing,50)
                                    .disabled(buttonDisabled)
                                
                                
                            }
                }       // overlay

                
            }       // vstack
            
        }           // zstack
        .onAppear(perform: {
            transitionView = 0.0
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                buttonDisabled.toggle()
                SoundSetting.soundPlayer.play(fileName: "rewind11")
            }
        })
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
        
    }   // body
}

struct Ep1Frame11_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame11()
    }
}
