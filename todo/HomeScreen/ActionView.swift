//
//  ActionView.swift
//  todo
//
//  Created by Rodel Gillera on 7/3/24.
//

import SwiftUI

struct ActionView: View {
    var body: some View {
        HStack(content: {
            Text("Today's Tasks").bold()
            Spacer()
            Button("Add Task") {
                
            }
        })
        .padding(.vertical, 10.0)
    }
}

#Preview {
    ActionView()
}
