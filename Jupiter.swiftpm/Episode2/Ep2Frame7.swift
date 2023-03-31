//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/29.
//

import SwiftUI

struct Ep2Frame7: View {
    
    @State var subtitle = "발표날 아침, \n 우리는 어제의 고군분투로 성장해 자신만만하게 입장했다."
    @State var tag:Int? = nil
    @State var image = ["image_EP2_7_1", "image_EP2_7"]
    @State var count = 0
//    @State var transitionView : Double = 0.0
    
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
                                        Button("장면 \(count+1) / 2"){
                                                self.tag = 1
                                                count += 1
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
                    Image("image_EP2_7")
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
                                            destination: Ep2Frame8(), tag : 1, selection: self.$tag){}
                                        
                                        Button("다음"){
                                            self.tag = 1
                                        }.padding(.top, 60)
                                            .padding(.trailing,50)
                                    }       // HStack

                                
                            }   //vstack
                        }       // overlay
                }
            }
                .ignoresSafeArea(.all)
                .background(Color.backgroundColor)
                
                
        }
    }
    func playSoundEp2Frame7() {
        SoundSetting.soundPlayer.play(fileName: "letsgo7")
    }
}
    
    struct Ep2Frame7_Previews: PreviewProvider {
        static var previews: some View {
            Ep2Frame7()
        }
    }
    
