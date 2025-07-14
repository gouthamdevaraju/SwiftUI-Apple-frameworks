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
        
        VStack {
            
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTileView(framework: MockData.sampleFramework)
}
