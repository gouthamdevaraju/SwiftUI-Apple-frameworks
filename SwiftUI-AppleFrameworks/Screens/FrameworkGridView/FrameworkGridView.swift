//
//  FrameworkGridView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 08/07/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var gridViewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    
                    NavigationLink(destination:
                                    FrameworkDetailedView(
                                        framework: framework,
                                        isFrameworkSelected: $gridViewModel.isFrameworkSelected))
                    {
                        FrameworkTileView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}


