//
//  TyperWriterView.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct TyperWriterView: View {
    @State private var text = ""
    let finalText: String
    
    var body: some View {
        Text(text)
            .onAppear(perform: typeWrite) // 처음에 바로 글자가 다다다닥 찍힘
            .onTapGesture { // TextView 를 다시 누르면 다시 다다다닥 찍힘
                typeWrite()
            }
    }
    
    func typeWrite() {
        text = "" // 이거 안하면 지금 글자 + 새로운 글자들로 찍힘
        finalText.enumerated().forEach { index, character in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 + 0.1 * Double(index)) { // 각 글자를 더하는것마다 의도적으로 딜레이를 줘서 타자기 효과를 줌
                text += String(character)
            }
            
        }
    }
}

// preview, made by Lets 가 찍힘
struct TyperWriterView_Previews: PreviewProvider {
    static var previews: some View {
        TyperWriterView(finalText: "Made by Lets")
    }
}
