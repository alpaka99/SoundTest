//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/30.
//

import SwiftUI

struct Episode2Frame0: View {
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink {
                    Episode2Frame1()
                } label: {
                    Image("2_0")
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                    }
                }
            }
            .ignoresSafeArea(.all)
            .background(Color.backgroundColor)
        }
    }
}

struct Episode2Frame0_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame0()
    }
}
