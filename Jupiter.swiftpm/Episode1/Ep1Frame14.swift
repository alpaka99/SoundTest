//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame14: View {
    @State var tag:Int? = nil
    @State var transitionView: Double = 0.0
    var body: some View {
    ZStack {
        Color.backgroundColor.ignoresSafeArea()
        Image("1-14")
            .opacity(transitionView)
                        .animation(.easeIn(duration: 1.3))
        
        VStack {
            Spacer()
            HStack{
                Spacer()
                NavigationLink(
                    destination: Ep1Frame15(), tag : 1, selection: self.$tag){}
                
                
                Button("다음"){
                    self.tag = 1
                }.padding(.bottom, 35)
                .padding(.trailing,50)
                
                
            }       // HStack
            
        }   //vstack
        
    }           // zstack
    .onAppear(perform: {
        transitionView = 1.0})
    
}   // body
}

struct Ep1Frame14_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame14()
    }
}
