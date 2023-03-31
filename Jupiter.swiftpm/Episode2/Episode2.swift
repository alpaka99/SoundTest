//
//  Episode2.swift
//  
//
//  Created by 한지석 on 2023/03/27.
//

import SwiftUI

struct Episode2: View {
    @State var tag:Int? = nil
    
    var body: some View {
    ZStack(alignment: .bottom){
        VStack {
            Spacer()
            Rectangle()
                .textField("에피소드 2")
                .overlay {
                    NavigationLink(
                        destination: Episode2Frame1(),
                        tag : 1, selection: self.$tag ){
                            EmptyView()
                        }
                        .background(Color.backgroundColor)
                        .ignoresSafeArea()
                    HStack {
                        Spacer()
                        VStack {
                            Spacer()
                            Button("다음"){
                                self.tag = 1
                            }.padding()
                                .foregroundColor(.white)
                                .background(.black)
                                .padding(.all, 40)
                                .padding(.bottom,70)
                            }
                        }
                    }
                    
                }
            }
    .background(Color.backgroundColor)

    }
}


struct Episode2_Previews: PreviewProvider {
    static var previews: some View {
        Episode2()
    }
}
