//
//  SwiftUIView.swift
//  Heritage Memory
//
//  Created by Chloe Lauren on 2/13/23.
//

import SwiftUI
import QuickLook
import ARKit

struct ARQuickLookView: UIViewControllerRepresentable {
    var fileName: String
    var allowScaling: Bool
    func makeCoordinator () -> ARQuickLookView.Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> QLPreviewController {
        let controller = QLPreviewController()
        controller.dataSource = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ controller: QLPreviewController, context: Context) {}
    
    class Coordinator: NSObject, QLPreviewControllerDataSource {
        let parent: ARQuickLookView
        private lazy var fileURL: URL = Bundle.main.url(forResource: parent.fileName, withExtension: "usdz")!
        init(_ parent: ARQuickLookView) {
            self.parent = parent
            super.init ()
        }
        //返回浏览的模型数目
        func numberOfPreviewItems ( in controller: QLPreviewController) -> Int {
            return 1
        }
        //提供具体需要展示的模型
        func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
            guard let filePath = Bundle.main.url (forResource: parent.fileName, withExtension: "usdz") else { fatalError("无法加载模型") }
            let item = ARQuickLookPreviewItem(fileAt: filePath)
            item.allowsContentScaling = parent.allowScaling
            //下面一行是分享模型时提供的网址，如果不提供则直接分享模型源文件usdz或reality。
            item.canonicalWebPageURL = URL(string: "https: //www.example.com/example.usdz")
            return item
        }
    }
}



//struct ARQuickLookView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        ARQuickLookView()
//    }
//}
