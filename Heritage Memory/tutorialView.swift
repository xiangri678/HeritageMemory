//
//  tutorialView.swift
//  Heritage Memory
//
//  Created by Chloe Lauren on 6/2/24.
//

import SwiftUI

struct TutorialView: View {
    let images: [String]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(red: 0.1725, green: 0.3412, blue: 0.4863, opacity: 0.8) // 使用纯色背景
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer().frame(height: geometry.size.height * 0) // 将顶部边距设置为屏幕高度的一小部分
                    TabView {
                        ForEach(images, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .frame(height: UIScreen.main.bounds.height * 0.75) // 限制TabView高度
                    Spacer() // 确保indexView在屏幕内
                }
            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(images: ["tut_mainPage", "tut_chooseHead", "tut_chooseCard", "tut_ARCard","tut_share", "tut_settings", "tut_feedback", "tut_about"])
    }
}

