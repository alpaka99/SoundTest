//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI
import AVKit

struct Episode1: View {
    var body: some View {
        NavigationView(){
            ZStack{
                Image("1-main")
                    .background(Color.black)
                    .ignoresSafeArea(.all)
                HStack{
                    Spacer()
                    NavigationLink(destination: Ep1Frame1(),
                                   label: {
                        Text("다음")
                            .padding(.top,610)
                            .padding(.trailing,50)
                    })
                    
                }
            }   //ZStack
            
        }   // navigationview
        
    }   // body
}   // ep1 view

struct Episode1_Previews: PreviewProvider {
    static var previews: some View {
        Episode1()
    }
}
