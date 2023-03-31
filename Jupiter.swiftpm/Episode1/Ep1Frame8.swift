//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame8: View {
    @State var subtitle = "뚝딱뚝딱 다시 CBL 탑 쌓는 중"
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-8")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame9(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음"){
                                    self.tag = 1
                                }
                                .padding(.top, 60)
                                .padding(.trailing,50)
                                
                                
                            }       // HStack
                }       // overlay

                
            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        
    }   // body
}

struct Ep1Frame8_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame8()
    }
}
