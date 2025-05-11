//
//  FeedbackView.swift
//  Heritage Memory
//
//  Created by Chloe Lauren on 6/1/24.
//

//import SwiftUI
//import MessageUI
//
//struct FeedbackView: View {
//    @State private var isShowingMailView = false
//    @State private var alertNoMail = false
//
//    var body: some View {
//        ZStack{
//            Image("背景1")
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("用户反馈")
//                    .font(.largeTitle)
//                    .padding()
//                
//                Button(action: {
//                    if MFMailComposeViewController.canSendMail() {
//                        self.isShowingMailView.toggle()
//                    } else {
//                        self.alertNoMail = true
//                    }
//                }) {
//                    Text("给我写信")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(8)
//                }
//                .sheet(isPresented: $isShowingMailView) {
//                    MailView(isShowing: self.$isShowingMailView)
//                }
//                .alert(isPresented: $alertNoMail) {
//                    Alert(title: Text("无法发送邮件"), message: Text("请在您的设备上设置邮件帐户"), dismissButton: .default(Text("确定")))
//                }
//            }
//        }
//    }
//}
//
//struct MailView: UIViewControllerRepresentable {
//    @Binding var isShowing: Bool
//
//    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
//        @Binding var isShowing: Bool
//
//        init(isShowing: Binding<Bool>) {
//            _isShowing = isShowing
//        }
//
//        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
//            isShowing = false
//        }
//    }
//
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(isShowing: $isShowing)
//    }
//
//    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
//        let vc = MFMailComposeViewController()
//        vc.mailComposeDelegate = context.coordinator
//        vc.setToRecipients(["wgd@bupt.edu.cn"])
//        vc.setSubject("Heritage Memory用户反馈")
//        vc.setMessageBody("你好，这是我的反馈：", isHTML: false)
//        return vc
//    }
//
//    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: UIViewControllerRepresentableContext<MailView>) {}
//}
//
//#Preview {
//    FeedbackView()
//}
