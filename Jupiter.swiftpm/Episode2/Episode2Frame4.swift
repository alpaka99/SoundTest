//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame4: View {
    var body: some View {
        ZStack {
                Image("2_4")
                .resizable()
                .scaledToFit()
                
            VStack {
                Spacer()
                Rectangle()
                    .textField("코지는 이 상황을 참지 못 하고, 문제를 해결하기 위해 게릴라 인터뷰를 진행한다.")
                    .overlay {
                        VStack {
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                NavigationLink {
                                    Episode2Frame5()
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

struct Episode2Frame4_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame4()
    }
}
