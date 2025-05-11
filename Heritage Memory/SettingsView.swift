//
//  SettingsView.swift
//  Heritage Memory
//
//  Created by Chloe Lauren on 6/1/24.
//

import SwiftUI
import MessageUI

struct SettingsView: View {
    @State private var isShowingMailView = false
    @State private var alertNoMail = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("背景1")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Button(action: {
                        if MFMailComposeViewController.canSendMail() {
                            self.isShowingMailView = true
                        } else {
                            self.alertNoMail = true
                        }
                    }) {
                        Text("用户反馈")
                            .padding()
                            .font(.title)
                    }
                    .sheet(isPresented: $isShowingMailView) {
                        MailView(isShowing: self.$isShowingMailView)
                    }
                    .alert(isPresented: $alertNoMail) {
                        Alert(title: Text("无法发送邮件"), message: Text("设备不支持发送邮件，请检查邮件设置并重试。"), dismissButton: .default(Text("确定")))
                    }
                    NavigationLink(destination: VersionInfoView()) {
                        Text("版本信息")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination: TutorialView(images: ["tut_mainPage", "tut_chooseHead", "tut_chooseCard", "tut_ARCard","tut_share", "tut_settings", "tut_feedback", "tut_about"])) {
                        Text("使用教程")
                            .padding()
                            .font(.title)
                    }
                }
                .navigationTitle("设置")
                .foregroundColor(.cyan)
            }
        }
    }
}

struct VersionInfoView: View {
    var body: some View {
        ZStack{
            Image("背景1")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("")
                    .padding()
                Text("关于")
                    .font(.largeTitle)
                    .padding()
                
                Text("开发者")
                    .font(.title2)
                Text("Chloe Lauren 王冠达")
                Text("邮箱: wgd@bupt.edu.cn")
                Text("手机号: 181 5399 0182")
                Text("地址: 北京市海淀区西土城路")
                Text("")
                Text("")
                Text("版本信息")
                    .font(.title2)
                Text("V1.0")
                Text("发布时间：6/1/24")
                
                Spacer()
            }
            .padding()
        }
    }
}

struct MailView: UIViewControllerRepresentable {
    @Binding var isShowing: Bool
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        @Binding var isShowing: Bool
        
        init(isShowing: Binding<Bool>) {
            _isShowing = isShowing
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            isShowing = false
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        vc.setToRecipients(["wgd@bupt.edu.cn"])
        vc.setSubject("Heritage Memory用户反馈")
        vc.setMessageBody("你好，这是我的反馈：", isHTML: false)
        return vc
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: UIViewControllerRepresentableContext<MailView>) {}
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
