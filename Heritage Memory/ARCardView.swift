//
//  ARCardView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/15.
//

import SwiftUI

struct ARCardView: View {
    var preView:ContentView
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        ZStack{
            Image("2")
                .padding(.top, 520.0)
                .frame(height: nil)
                .background(Color("background"))
            VStack{
                HStack {
                    NavigationLink(destination: ARView03()) {
                        Image("立春")
                            .scaleEffect(0.15)
                            .padding(EdgeInsets(top: 300, leading: 280, bottom: 100, trailing:100))
                        
                            .frame(width: 203.0, height: 180.0)
                            .offset(x:-90,y:-100)
                    }
                    NavigationLink(destination: ARView02()) {
                        Image("春分").scaleEffect(0.15)
                            .offset(x:90,y:-310)
                            .padding(EdgeInsets(top: 300, leading: 280, bottom: 100, trailing:100))
                        
                            .frame(width: 180.0, height: 180.0)
                            .offset(x:-180,y:210)
                    }
                }
                
                HStack {
                    NavigationLink(destination: ARView_RainWater()) {
                        Image("雨水")
                            .scaleEffect(0.15)
                            .offset(x:90,y:-310)
                            .padding(EdgeInsets(top: 300, leading: 280, bottom: 100, trailing:100))
                        
                            .frame(width: 180.0, height: 180.0)
                            .offset(x:-180,y:210)
                    }
                    NavigationLink(destination: ARView_WakingOfInsects()) {
                        Image("惊蛰")
                            .scaleEffect(0.15)
                            .offset(x:90,y:-310)
                            .padding(EdgeInsets(top: 300, leading: 280, bottom: 100, trailing:100))
                        
                            .frame(width: 180.0, height: 180.0)
                            .offset(x:-180,y:210)
                    }
                }
                HStack {
                    NavigationLink(destination: ARView_PureBrightness()) {
                        Image("清明")
                            .scaleEffect(0.15)
                            .offset(x:90,y:-310)
                            .padding(EdgeInsets(top: 300, leading: 280, bottom: 100, trailing:100))
                        
                            .frame(width: 180.0, height: 180.0)
                            .offset(x:-180,y:210)
                    }
                    NavigationLink(destination: ARView_GrainRain()) {
                        Image("谷雨")
                            .scaleEffect(0.15)
                            .offset(x:90,y:-310)
                            .padding(EdgeInsets(top: 300, leading: 280, bottom: 100, trailing:100))
                        
                            .frame(width: 180.0, height: 180.0)
                            .offset(x:-180,y:210)
                    }
                }
            }
            
        }
        .padding(.all)
        .frame(width: 400.0, height: 300.0)
        .edgesIgnoringSafeArea(.leading)

    }
    
    
    
    
    
    
    struct ARCardView_Previews: PreviewProvider {
        static var previews: some View {
            ARCardView(preView:ContentView())
            
        }
        
    }
    
}
