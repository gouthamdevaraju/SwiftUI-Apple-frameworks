//
//  ButtonNew.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 09/07/25.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 250, height: 50)
            .background(Color.red)
            .cornerRadius(5)
            .foregroundStyle(.white)
            .bold()
    }
}
