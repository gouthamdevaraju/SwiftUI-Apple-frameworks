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
            ScrollView {
                LazyVGrid(columns: gridViewModel.coloumns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTileView(framework: framework)
                            .onTapGesture {
                                gridViewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .fullScreenCover(isPresented: $gridViewModel.isFrameworkSelected) {
                FrameworkDetailedView(
                    framework: gridViewModel.selectedFramework ?? MockData.sampleFramework,
                    isFrameworkSelected: $gridViewModel.isFrameworkSelected)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


