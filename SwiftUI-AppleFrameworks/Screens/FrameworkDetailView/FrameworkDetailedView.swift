//
//  FrameworkDetailedView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 09/07/25.
//

import SwiftUI

struct FrameworkDetailedView: View {
    
    var framework: Framework
    @Binding var isFrameworkSelected: Bool
    @State private var isLearnMoreTapped = false
    
    var body: some View {
        VStack {
            
//            ExButtonView(isShowingBindingView: $isFrameworkSelected)
            
            Spacer()
            
            FrameworkTileView(framework: framework)
            
            ScrollView {
                Text(framework.description)
                    .font(.headline)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
            
            Spacer()
            
            Button{
                isLearnMoreTapped = true
            } label: {
                AFButton(title: "Learn more")
            }
        }
        .fullScreenCover(isPresented: $isLearnMoreTapped) {
            SafariView(url: URL(string: framework.urlString)!)
        }
//        .background(
//            LinearGradient(
//                gradient: Gradient(colors: [.greyBottom, .greyTop]),
//                startPoint: .topLeading,
//                endPoint: .bottomTrailing
//            )
//        )
    }
}

struct FrameworkDetailedView_Preview: PreviewProvider {
    static var previews: some View {
        FrameworkDetailedView(framework: MockData.sampleFramework, isFrameworkSelected: .constant(true))
    }
}
