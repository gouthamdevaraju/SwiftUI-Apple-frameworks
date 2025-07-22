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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridViewModel.coloumns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTileView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailedView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


