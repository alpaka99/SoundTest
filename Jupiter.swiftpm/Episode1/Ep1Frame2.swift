//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame2: View {
    @State var subtitle = "눈부신 미래가 그려지는 듯 하다."
    @State var tag:Int? = nil
    @State private var index = 0
    
    var body: some View {
        
        ZStack {
            Image("1-2-2")
            VStack {
                Spacer()
                    ZStack{
                    Rectangle()
                        .textField(subtitle)
                        .multilineTextAlignment(.center)
                        .overlay {
                                HStack{
                                    Spacer()
                                    NavigationLink(
                                        destination: Ep1Frame3(), tag : 1, selection: self.$tag){}
                                    
                                    
                                    Button("다음"){
                                        
                                            self.tag = 1
                                    }.padding(.top, 60)
                                        .padding(.trailing,50)
                                    
                                    
                                }       // HStack
                            }   // overlay
                            
                    
                }       // vstack
            }
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        
    }   // body
}


struct Ep1Frame2_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame2()
    }
}
