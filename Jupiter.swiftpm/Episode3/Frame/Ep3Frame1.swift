//
//  SwiftUIView.swift
//  
//
//  Created by 한지석 on 2023/03/29.
//

import SwiftUI

struct Ep3Frame1: View {
    
    @State var design: [Design] = [
        Design(image: "Frame1", subtitle: "우리는 전투를 끝내고, 회식을 진행했다.\n 1차는 맘스터치였다."),
        Design(image: "Frame2", subtitle: "서로 고생했다며\n이야기를 이어가는 중에, 우리는 평소처럼\n유사과학 이야기를 했다."),
        Design(image: "Frame3", subtitle: "섀넌은\n\"딸은 아버지를 닮고,\n아들은 어머니를 닮는대요.\n제가 그 증거에요!\" 라고 했다.")
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
                                HiddenNavigationLink(destinationView: Ep3Frame2())
                                Spacer()
                                HStack {
                                    Spacer()
                                    Button("NEXT") {
                                        withAnimation(.easeIn) {
                                            if index < design.count - 1{
                                                index += 1
                                            }
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


struct Ep3Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Ep3Frame1()
    }
}

struct Design: Identifiable {
    let id = UUID().uuidString
    let image: String
    let subtitle: String
}

struct HiddenNavigationLink<Desination: View>: View {
    
    let destinationView: Desination
    
    var body: some View {
        HStack {
            Spacer()
            NavigationLink {
                destinationView
            } label: {
                Text("   ")
                    .background(.black)
                    .opacity(0)
            }
            .frame(width: 65, height: 50)
        }
    }
}
