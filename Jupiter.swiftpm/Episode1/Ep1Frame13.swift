//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame13: View {
    @State var subtitle = "다시 눈부신 미래를 꿈꾸기 위해 MC1에 집중했다\n이젠 끝이겠지.."
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-13")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame14(), tag : 1, selection: self.$tag){}
                                
                                
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
        
    }   // body
}

struct Ep1Frame13_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame13()
    }
}
