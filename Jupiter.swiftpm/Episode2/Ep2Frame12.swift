//
//  SwiftUIView 2.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame12: View {
    @State var subtitle = "멘토의 질문에 모두가 \n 필사의 디펜스를 펼쳤다."
    @State var tag:Int? = nil
    @State var image = ["image_EP2_12_1", "image_EP2_12_2", "image_EP2_12_3", "image_EP2_12" ]
    @State var count = 0
    
    
    var body: some View {
            if count < 4 {
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
                                        Button("장면 \(count+1)/4"){
                                                self.tag = 1
                                                count += 1
                                            SoundSetting.soundPlayer.play(fileName: "defence12")
                                        }.padding(.top, 60)
                                            .padding(.trailing,50)
                                    }       // HStack
                                }   //vstack
                            }       // overlay
                    }
                }        .ignoresSafeArea(.all)
                    .background(Color.backgroundColor)
            }else{
                ZStack{
                    Image("image_EP2_12")
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
                                            destination: Ep2Frame13(), tag : 1, selection: self.$tag){}
                                        
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

struct Ep2Frame12_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame12()
    }
}
