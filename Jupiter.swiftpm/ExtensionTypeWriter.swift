//
//  ExtensionTypeWriter.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import Foundation
import SwiftUI

// typeWriter 효과를 주고싶으면 코지의 Rectangle... 부분에서 textField 를 typeWriterField 로 바꾸기만 하면 됩니다 :)
extension Rectangle {
    func typeWriterField(_ text: String) -> some View {
        self
           .foregroundColor(.white)
           .frame(height: 230)
           .padding(.bottom, 90)
           .padding(.leading, 20)
           .padding(.trailing, 20)
           .overlay(alignment: .center) {
               Rectangle()
                   .border(.black)
                   .padding(.bottom, 100)
                   .padding(.leading, 30)
                   .padding(.trailing, 30)
                   .padding(.top, 10)
                   .foregroundColor(.white)
                   .overlay(alignment: .center) {
                       TyperWriterView(finalText: text)
                           .font(.system(size: 25))
                           .lineLimit(nil)
                           .multilineTextAlignment(.center)
                           .padding(.bottom, 100)
                           .padding(.leading, 40)
                           .padding(.trailing, 40)
                           .padding(.top, 10)
            }
        }
    }
}
