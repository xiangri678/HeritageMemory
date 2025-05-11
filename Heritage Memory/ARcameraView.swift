//
//  ARcameraView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/10.
//

import SwiftUI
import ARKit
import RealityKit

struct ARcameraView: View {
    @State var showingPreview = false
    var preView:ContentView
    var body: some View {
        
        ZStack {
            VStack {
                Image("2")
                    .padding(.top, 520.0)
                    .frame(height: nil)
                    .background(Color("background"))
            }
            VStack{
                HStack {
                    NavigationLink(destination: ARView04()) {
                        Image("龙2")
                            .frame(width: 200.0, height: 200.0)
                            .scaleEffect(0.105)
                        
                        
                    }
                    
                    NavigationLink(destination: ARView_Sheep()) {
                        Image("羊")
                            .frame(width: 200.0, height: 200.0)
                            .scaleEffect(0.105)
                    }
                }
                HStack {
                    NavigationLink(destination: ARView_Monkey()) {
                        Image("猴")
                            .frame(width: 200.0, height: 200.0)
                            .scaleEffect(0.105)
                        
                        
                    }
                    
                    NavigationLink(destination: ARView_Pig()) {
                        Image("猪")
                            .frame(width: 200.0, height: 200.0)
                            .scaleEffect(0.105)
                    }
                }
                HStack {
                    NavigationLink(destination: ARView_Ox()) {
                        Image("牛")
                            .frame(width: 200.0, height: 200.0)
                            .scaleEffect(0.105)
                    }
                }
            }
        }
    }
    
#if DEBUG
    struct ARcameraView_Previews : PreviewProvider {
        static var previews: some View {
            ARcameraView(preView:ContentView())
        }
    }
#endif
}

