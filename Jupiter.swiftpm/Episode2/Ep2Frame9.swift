//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame9: View {
    @State var subtitle = "드디어 기다리던 발표 순서가 되었고, 멘토 군단이 우리팀에 관심을 갖고 집중하기 시작했다."
    @State var tag:Int? = nil
    @State var image = ["image_EP2_9_1", "image_EP2_9_2"]
    @State var count = 0
    
    
    var body: some View {
            if count < 2 {
                ZStack{
                    Image(image[count])
                        .animation(.easeIn, value: count)
                    VStack {
                        Spacer()
                        Rectangle()
                            .textField(subtitle)
                            .multilineTextAlignment(.center)
                            .overlay {
                                VStack {
                                    HStack{
                                        Spacer()
                                        Button("장면 \(count+1)/2"){
                                                self.tag = 1
                                                count += 1
                                        }.padding(.top, 60)
                                            .padding(.trailing,50)
                                            .animation(.easeIn, value: count)
                                    }       // HStack
                                }   //vstack
                            }       // overlay
                    }
                }        .ignoresSafeArea(.all)
                    .background(Color.backgroundColor)
            }else{
                ZStack{
                    Image("image_EP2_9_2")
                    VStack {
                        Spacer()
                        Rectangle()
                            .textField(subtitle)
                            .multilineTextAlignment(.center)
                            .overlay {
                                VStack {
                                    HStack{
                                        Spacer()
                                        NavigationLink(
                                            destination: Ep2Frame10(), tag : 1, selection: self.$tag){}
                                        
                                        Button("다음"){
                                            self.tag = 1
                                        }.padding(.top, 60)
                                            .padding(.trailing,50)
                                    }       // HStack
                                    
                                }   //vstack
                            }       // overlay
                    }
                }        .ignoresSafeArea(.all)
                    .background(Color.backgroundColor)
            }
    }
}

struct Ep2Frame9_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame9()
    }
}
