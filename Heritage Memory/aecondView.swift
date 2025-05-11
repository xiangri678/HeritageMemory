//
//  aecondView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/9.
//

import SwiftUI

struct aecondView: View {
    @State var show = false
    @State var vieState=CGSize.zero
    var body: some View {
        
        ZStack{
            
            
            VStack {
                
                
                Image("2")
                    .padding(.top, 524.0)
                    .frame(height: 762.0)
            }
            .background(Color("background"))
            VStack {
                Text("AR")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color("gold"))
                    .multilineTextAlignment(.center)
                    .padding(0.0)
                
                Card1View()
                    .onTapGesture {
                        self.show.toggle()
                    }
                
                
                
                Card2View()
            }
            
          
        }
        
    }
}

struct aecondView_Previews: PreviewProvider {
    static var previews: some View {
        aecondView()
    }
}

struct Card1View: View {
    var body: some View {
        
        ZStack {
          
            VStack {
                Image("资源 2")
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 64.0)
                    .background(Color("background"))
                    .cornerRadius(10)
                    .scaleEffect(1.1)
                    .blendMode(.sourceAtop)
            }
            Text("AR头套")
                .font(.headline)
                .foregroundColor(Color("gold"))
                .padding(.all, 30.0)
                .scaleEffect(2.5)
                .offset(x: 40, y: -60)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .blendMode(.normal)
            
        }
        
    }
}

struct Card2View: View {
    var body: some View {
        ZStack {
            VStack {
                Image("资源 3")
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.top, -57.0)
                    .frame(height: 356.0)
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    .scaleEffect(1.05)
            }
            Text("AR贺卡")
                .font(.headline)
                .foregroundColor(Color("gold"))
                .padding(.all, 30.0)
                .scaleEffect(2.5)
                .offset(x: 10, y: -25)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .blendMode(.normal)
        }
        
       
    }
    
}
