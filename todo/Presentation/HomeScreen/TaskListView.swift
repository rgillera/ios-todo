//
//  TaskListView.swift
//  todo
//
//  Created by Rodel Gillera on 7/3/24.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        HStack {
            List {
                Text("Study sample")
                Text("test sample")
            }
            .padding(.all, 5.0)
        }
    }
}

#Preview {
    TaskListView()
}
