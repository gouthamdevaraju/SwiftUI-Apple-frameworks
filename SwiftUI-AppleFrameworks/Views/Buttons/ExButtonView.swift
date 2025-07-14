//
//  ExButtonView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 14/07/25.
//

import SwiftUI

struct ExButtonView: View {
    
    @Binding var isShowingBindingView: Bool
    
    var body: some View {
        
        HStack {
            Spacer()
            
            Button {
                isShowingBindingView = false
            } label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .frame(width: 60, height: 60)
            }
            
        }.padding()
    }
}

#Preview {
    ExButtonView(isShowingBindingView: .constant(false))
}


