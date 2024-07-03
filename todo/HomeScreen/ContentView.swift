//
//  ContentView.swift
//  todo
//
//  Created by Rodel Gillera on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            ActionView()
            Spacer()
            TaskListView()
          
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
