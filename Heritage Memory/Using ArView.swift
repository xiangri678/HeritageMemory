//
//  Using ArView.swift
//  Heritage Memory
//
//  Created by AeRuVa Leaf on 2023/2/11.
//

import UIKit
import ARKit
import SceneKit
import SwiftUI

struct Using_ArView: View {
    var preView:ContentView
    var body: some View {
        Image("2")
            .padding(.top, 520.0)
            .frame(height: nil)
            .background(Color("background"))
    }
}

struct Using_ArView_Previews: PreviewProvider {
    static var previews: some View {
        Using_ArView(preView:ContentView())
    }
}

//class ViewController: UIViewController, ARSCNViewDelegate {
//
//  var sceneView: ARSCNView!
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//
//    // Create a new ARSCNView
//    sceneView = ARSCNView(frame: self.view.frame)
//
//    // Set the view's delegate
//    sceneView.delegate = self
//
//    // Show statistics such as fps and timing information
//    sceneView.showsStatistics = true
//
//    // Show feature points that the ARKit is tracking
//    sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
//
//    // Create a new scene
//    let scene = SCNScene()
//
//    // Set the scene to the view
//    sceneView.scene = scene
//
//    // Add the view to the view hierarchy
//    self.view.addSubview(sceneView)
//
//      // Add a tap gesture recognizer
//      let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
//      self.view.addGestureRecognizer(tapGesture)
//    }
//
//    @objc func didTap(_ sender: UITapGestureRecognizer) {
//      // Get the 2D screen point of the tap
//      let tapPoint = sender.location(in: sceneView)
//
//      // Convert the 2D screen point to a 3D scene point
//      let hitTestResults = sceneView.hitTest(tapPoint, types: .featurePoint)
//      guard let hitTestResult = hitTestResults.first else { return }
//      let position = hitTestResult.worldTransform.position
//
//      // Set the position of the model node to the 3D scene point
//      modelNode.position = position
//
//      // Add the model node to the scene
//      sceneView.scene.rootNode.addChildNode(modelNode)
//    }
//
//    // Load the 3D model file
//    let modelScene = SCNScene(named: "art.scnassets/your_model_file.scn")!
//
//    // Get the root node of the model scene
//    let modelRootNode = modelScene.rootNode
//
//    // Loop through all child nodes of the root node and add them to the model node
//    for childNode in modelRootNode.childNodes {
//        modelNode.addChildNode(childNode)
//    }
//}


