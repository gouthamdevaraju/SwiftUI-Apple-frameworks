//
//  FrameworkGridViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Goutham Devaraju on 14/07/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isFrameworkSelected = true
        }
    }
    
    @Published var isFrameworkSelected = false
    
    var coloumns: [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
}
