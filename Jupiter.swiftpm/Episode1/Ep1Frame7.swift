//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame7: View {
    @State var subtitle = "우리의 CBL은 무너졌다!"
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-7")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame8(), tag : 1, selection: self.$tag){}
                                
                                
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

struct Ep1Frame7_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame7()
    }
}
