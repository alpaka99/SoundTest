//
//  Episode2Frame1.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame1: View {
    let images = ["2_1_1", "2_1_2"]
    
    @State private var index = 0
    
    var body: some View {
        ZStack {
            Image(index<=0 ? images[0] : images[index-1])
            Image("\(images[index])")
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    if index < images.count-1 {
                        index += 1
                    }
                }
                .animation(.easeIn, value: index)
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField("시작은 아직 이안이 \n 쌩쌩했던 23시,\n목성 최균함의 \n비상대책회의가 열린다.")
                    .overlay {
                        VStack {
                            //                            Spacer()
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                if index < images.count-1 {
                                    Button {
                                        withAnimation {
                                            index += 1
                                        }
                                        SoundSetting.soundPlayer.stop()
                                    } label: {
                                        Text("장면 \(index+1)/\(images.count)")
                                    }
                                    .padding(.top, 60)
                                    .padding(.trailing,50)
                                } else {
                                    NavigationLink {
                                        Episode2Frame2()
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
        .onAppear(perform: playSoundEp2Frame1)
        .onDisappear(perform: SoundSetting.soundPlayer.stop)
    }
    
    func playSoundEp2Frame1() {
        SoundSetting.soundPlayer.play(fileName: "typewriter1")
    }
}
struct Episode2Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame1()
    }
}
