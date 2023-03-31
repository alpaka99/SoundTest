//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame10: View {
    @State var subtitle = "역시 멘토의 질문은 날카로웠다. 난이도 높은 질문으로 \n 우리는 너덜너덜해졌다."
    @State var tag:Int? = nil
    @State var image = ["image_EP2_10_1", "image_EP2_10_2","image_EP2_10_3", "image_EP2_10" ]
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
                                            SoundSetting.soundPlayer.play(fileName: "swoosh10")
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
                    Image("image_EP2_10")
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
                                            destination: Ep2Frame11(), tag : 1, selection: self.$tag){}
                                        
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

struct Ep2Frame10_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame10()
    }
}
