//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame2: View {
    var body: some View {
        ZStack {
                Image("2_2")
                .resizable()
                .scaledToFit()
            VStack {
                Spacer()
                Rectangle()
                    .textField("우리는 결론을 도출하지 못했고, 결국 블랙보드 앞으로 향했다.")
                    .overlay {
                        VStack {
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                NavigationLink {
                                    Episode2Frame3()
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
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
    }
}

struct Episode2Frame2_previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame2()
    }
}
