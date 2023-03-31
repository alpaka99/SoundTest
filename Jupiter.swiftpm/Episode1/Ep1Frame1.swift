import SwiftUI

struct Ep1Frame1: View {
    @State var subtitle = "대망의 첫 CBL,\n첫 MC1 시작이다."
    @State var tag:Int? = nil
    @State private var index = 0
    
    let images = ["1-1-1", "1-1-2"]
    
    var body: some View {
        ZStack {
            Image(images[index])
                .animation(.easeIn, value: index)
            
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame2(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음 \(index+1)/\(images.count)"){
                                    if(index == images.count-1){
                                        self.tag = 1
                                    } else {
                                        index += 1
                                    }
                                }.padding(.top, 60)
                                .padding(.trailing,50)
                            }       // HStack
                }       // overlay
            }       // vstack
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        
    }   // body
}   // view


struct Ep1Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame1()
    }
}

