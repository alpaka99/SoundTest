//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame4: View {
    @State var subtitle = "열심히 Our Challenge로\n접근 중"
    @State var tag:Int? = nil
    @State private var index = 0
    
    let images = ["1-4-1", "1-4-2", "1-4-3"]
    var body: some View {
        
        ZStack {
            Image(images[index])
                .animation(.easeIn, value: index)
            
            
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame5(), tag : 1, selection: self.$tag){}
                                
                                
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
        
    }   // body
}

struct Ep1Frame4_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame4()
    }
}
