//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame6: View {
    let images = ["2_6_1", "2_6_2"]
    @State private var index = 0
    
    var body: some View {
        ZStack {
            Image(index<=0 ? images[0] : images[index-1])
            Image(images[index])
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    if index<images.count-1 {
                        index += 1
                    }
                }
                .animation(.easeIn, value: index)
            
            VStack {
                Spacer()
                Rectangle()
                    .textField("인터뷰로 해결책을 얻게 되어, 우리는 시간과 정신의 블랙보드에서 빠져나오게 되었다.")
                    .overlay {
                        VStack {
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                if index < images.count-1 {
                                    Button {
                                        withAnimation {
                                            index += 1
                                        }
                                    } label: {
                                        Text("장면 \(index+1)/\(images.count)")
                                    }
                                    .padding(.top, 60)
                                    .padding(.trailing,50)
                                } else {
                                    NavigationLink {
                                        Ep2Frame7()
                                    } label: {
                                        Text("다음")
                                    }
                                    .padding(.top, 60)
                                    .padding(.trailing,50)
                                    
                                }
                            }
                        }
                    }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
        .onAppear(perform: playSoundEP2Frame6)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
    }
    
    func playSoundEP2Frame6() {
        SoundSetting.soundPlayer.play(fileName: "celebrate6")
    }
}

struct Episode2Frame6_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame6()
    }
}
