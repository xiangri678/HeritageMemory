//
//  ContentView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/8.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State private var showSettings = false // State variable to show settings view

    //    结构体定义新类型
    var body: some View {
        
        //        计算属性 是一个view类型 某一种view
        firstView(imageSize:CGSize(width:256,height:256)){
            
            HStack{
                
                NavigationView {
                    ZStack {
                        Image("2")
                            .padding(.top, 518.0)
                            .frame(height: 755.0)
                            .background(Color("background"))

                        VStack {
                            ZStack {
                                NavigationLink( destination : ARcameraView(preView: self), isActive: $isPresented) {
                                    ZStack{
                                        Image("资源 2")
                                            .frame(width: /*@START_MENU_TOKEN@*/500.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/)
                                            .scaleEffect(2.2)
                                            .offset(x:0,y:-70)
                                        Text("AR头套")
                                            .font(.headline)
                                            .foregroundColor(Color("gold2"))
                                            .scaleEffect(2.5)
                                            .offset(x: 40, y: -110)
                                    }
                                }
                            }
                                
                            ZStack {
                                NavigationLink( destination : ARCardView(preView: self)) {
                                    ZStack {
                                        Image("资源 3")
                                            .frame(width: /*@START_MENU_TOKEN@*/500.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/)
                                            .scaleEffect(2.1)
                                            .offset(x:0,y:-30)
                                        Text("AR卡片")
                                            .font(.headline)
                                            .foregroundColor(Color("gold2"))
                                          
                                            .scaleEffect(2.6)
                                            .offset(x: 20, y: -40)
                                    }
                                }
                            }
                        }
                        VStack {
                            Spacer()
                            HStack {
                                Button(action: {
                                    showSettings = true
                                }) {
                                    Image(systemName: "gearshape")
                                        .imageScale(.large)
                                        .padding()
                                        .background(Color("gold2"))
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                                }
                                .padding()
                            }
                        }
                    }
                    .navigationTitle(" ")
                                .sheet(isPresented: $showSettings) {
                                    SettingsView()
                                }
                }
            }
            
        }titleView:{
            
            Text("Heritage Memory")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("gold2"))
                .scaleEffect(1)
            
            
        }logoView:{
            
            Image("appcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(radius: 20)
            
            
        } navButtons:{
            Button{
                
            }label:{
                Image("资源 2")
                    .scaleEffect(2.2)
                Text("AR头套")
                    .font(.headline)
                    .foregroundColor(Color("gold2"))
                    .padding([.top, .leading, .bottom], 30.0)
                    .scaleEffect(2.5)
                    .offset(x: -120, y: -40)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    //    遵循一个可以制作出画布的协议
    static var previews: some View {
        //        静态计算属性
        ContentView()
        //        contentview 实例化
    }
}


