//
//  secondView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/11.
//

import SwiftUI

struct secondView: View {
    var body: some View {
        firstView{
        }titleView:{
            Image("appcon")
                .shadow(radius: 20)
                .padding(.top, 40.0)
                .frame(height: 374.0)
        }logoView:{
            Text("Heritage Memory")
            
        }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
