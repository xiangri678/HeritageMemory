//
//  ARView03.swift
//  Heritage Memory
//
//  Created by Chloe Lauren on 5/6/23.
//
//  龙头套
//  该模型做了面部检测

import SwiftUI
import RealityKit
import ARKit

struct ARView04 : View {
    @State private var showingSAlert = false

    var body: some View {
        ZStack{
            ARViewContainer04().edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Button(action: {
                                    takeScreenshotAndShare()
                                }) {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 70, height: 70)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth: 4)
                                                .frame(width: 60, height: 60)
                                        )
                                }
                                .padding(.bottom, 30)
                                .alert(isPresented: $showingSAlert) {
                                    Alert(title: Text("无法打开分享页面"), message: Text("请在您的设备上检查分享设置"), dismissButton: .default(Text("确定")))
                                }
            }
        }
    }
    func takeScreenshotAndShare() {
        guard let window = UIApplication.shared.windows.first else { return }
        
        if let rootViewController = window.rootViewController {
            let arView = findARView(in: rootViewController.view)
            
            if let arView = arView {
                let renderer = UIGraphicsImageRenderer(size: arView.bounds.size)
                let image = renderer.image { ctx in
                    arView.drawHierarchy(in: arView.bounds, afterScreenUpdates: true)
                }
                
                let activityVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
                rootViewController.present(activityVC, animated: true, completion: nil)
            }
        }
    }
    
    func findARView(in view: UIView) -> ARView? {
        if let arView = view as? ARView {
            return arView
        }
        for subview in view.subviews {
            if let found = findARView(in: subview) {
                return found
            }
        }
        self.showingSAlert = true
        return nil
    }
}

struct ARViewContainer04: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Create a session configuration
        let configuration = ARFaceTrackingConfiguration()
        // or use ARImageTrackingConfiguration() for image tracking
                               
        // Run the session with the configuration
        arView.session.run(configuration)
        
        // Load the "Box" scene from the "Experience" Reality File
        let sceneOneAnchor = try! DragonV1.load场景()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(sceneOneAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ARView04_Previews : PreviewProvider {
    static var previews: some View {
        ARView02()
    }
}
#endif

