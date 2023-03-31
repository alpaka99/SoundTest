//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame5: View {
    let images = ["2_5_1", "2_5_2", "2_5_3"]
    @State private var index = 0
    var body: some View {
        ZStack {
            Image(index<=0 ? images[0] : images[index])
            Image(images[index])
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
                    .textField("인터뷰 하는 중...")
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
                                        Episode2Frame6()
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
    }
}

struct Episode2Frame5_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame5()
    }
}
