//
//  ARView1.swift
//  Heritage Memory
//
//  Created by Chloe Lauren on 5/4/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ARViewContainer: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        let config = ARWorldTrackingConfiguration()
        if ARWorldTrackingConfiguration.isSupported {
            config.planeDetection = .horizontal
            arView.session.run(config)
        }
        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {
        // Update the view here if needed.
    }
}

struct ForARView: View {
    var body: some View {
        VStack {
            Text("Add your other views here")
            ARViewContainer()
                .frame(width: 300, height: 300)
                .cornerRadius(10)
                .padding()
        }
    }
}
