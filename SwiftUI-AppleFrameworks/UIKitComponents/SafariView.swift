//
//  SafariView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 14/07/25.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
