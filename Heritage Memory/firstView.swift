//
//  firstView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/9.
//

import SwiftUI

struct firstView<Content:View,Title:View,logo:View,NavButton:View>: View {
    var content: Content
    var  titleView: Title
    var logoView:logo
    var navButton:NavButton
    
    var imageSize:CGSize
    
    init(imageSize: CGSize,@ViewBuilder content:@escaping()->Content,@ViewBuilder titleView:@escaping()->Title,@ViewBuilder logoView:@escaping()->logo, navButtons:@escaping()->NavButton) {
        self.content = content()
        self.titleView=titleView()
        self.logoView=logoView()
        self.imageSize=imageSize
        self.navButton=navButtons()
    }
    @State var textAnimation=false
    @State var imageAnimation=false
    @State var endAnimation=false
    
    @State var showNavButtons=false
    
    @Namespace var animation
    var body: some View {
        VStack (spacing:0){
            ZStack{
                
                Color("background")
                    .background(Color("background"))
                
                titleView
                    .offset(x:textAnimation ? -30:0,y:textAnimation ? 10:150)
                if !endAnimation{
                    logoView
                        .frame(width: imageSize.width,height: imageSize.height)
                        .matchedGeometryEffect(id: "LOGO", in: animation)
                    
                }
                
                HStack{
                    Spacer()
                    if endAnimation{
                        logoView
                            .matchedGeometryEffect(id: "LOGO", in: animation)
                            .frame(width: 50,height: 50)
                            .padding([.top, .trailing], 25.0)
                    }
                }
            }
            .frame(height:endAnimation ? 60:nil)
            .zIndex(1)
            
            content
                .frame(height:endAnimation ? nil:0)
                .zIndex(0)
            
        }
        .frame(maxHeight:.infinity,alignment:.top)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline:.now()+0.4){
                withAnimation(.spring()){
                    textAnimation.toggle()
                }
                withAnimation(Animation.interactiveSpring(response:0.6,dampingFraction:1,blendDuration:1)){
                    endAnimation.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35)
                {
                    withAnimation{
                        showNavButtons.toggle()
                    }
                }
            }
        }
    }
}
    
    
struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

