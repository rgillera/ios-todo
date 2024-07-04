//
//  AddView.swift
//  todo
//
//  Created by Rodel Gillera on 7/3/24.
//

import SwiftUI

struct AddView: View {
    
    struct Output {
        var goToHomeScreen: () -> Void
    }
    
    var output: Output
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AddView(output: .init(goToHomeScreen: {}))
}
