//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame11: View {
    @State var subtitle = "하지만 우리는 어제의 비상대책회의를 통해 \'정신적 블루투스\'로 연결되어 있었고, "
    @State var tag:Int? = nil
    @State var image = ["image_EP2_11_1", "image_EP2_11" ]
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
                                    }       // HStack
                                }   //vstack
                            }       // overlay
                    }
                }        .ignoresSafeArea(.all)
                    .background(Color.backgroundColor)
            }else{
                ZStack{
                    Image("image_EP2_11")
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
                                            destination: Ep2Frame12(), tag : 1, selection: self.$tag){}
                                        
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


struct Ep2Frame11_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame11()
    }
}
