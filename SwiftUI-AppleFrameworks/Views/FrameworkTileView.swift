//
//  FrameworkTileView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 14/07/25.
//

import SwiftUI

struct FrameworkTileView: View {
    
    var framework: Framework
    
    var body: some View {
        
        HStack {
            
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
                .padding()
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameworkTileView(framework: MockData.sampleFramework)
}
