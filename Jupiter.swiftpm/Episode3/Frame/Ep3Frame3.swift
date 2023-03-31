//
//  SwiftUIView.swift
//  
//
//  Created by 한지석 on 2023/03/29.
//

import SwiftUI

struct Ep3Frame3: View {
    
    @State var design: [Design] = [
        Design(image: "joon2", subtitle: "모두가 뒤집어졌다."),
        Design(image: "Frame1", subtitle: "목성 최균함은(는)\n플러팅 기술\n'아버지가 잘생기셨나봐요.'\n을(를) 획득했다.")
    ]
    
    @State var index = 0
    
    var body: some View {
        ZStack {
            Button {
                if index != 0 {
                    withAnimation(.easeOut) {
                        index -= 1
                    }
                }
            } label: {
                Image(design[index].image)
            }
                VStack {
                    Spacer()
                    Rectangle()
                        .textField(design[index].subtitle)
                        .overlay {
                            VStack {
                                HiddenNavigationLink(destinationView: Ep3Frame4())
                                Spacer()
                                HStack {
                                    Spacer()
                                    Button("NEXT") {
                                        withAnimation(.easeIn) {
                                            if index < design.count - 1{
                                                index += 1
                                            }
                                            SoundSetting.soundPlayer.play(fileName: "levelup")
                                        }
                                    }
                                    .frame(width: 50, height: 30)
                                    .padding(.bottom, 100)
                                    .padding(.trailing, 35)
                        }
                    }
                }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
    }
}

struct Ep3Frame3_Previews: PreviewProvider {
    static var previews: some View {
        Ep3Frame3()
    }
}
