//
//  MainView.swift
//  todo
//
//  Created by Rodel Gillera on 7/4/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var appCoordinator: AppCoordinator

       var body: some View {
           Group {
               HomeCoordinator(
                   page: .home,
                   navigationPath: $appCoordinator.path,
                   output: .init(
                       goToMainScreen: {
                           print("Go to main screen (MainTabView)")
                       }
                   )
               ).view()
           }
       }
}

#Preview {
    MainView()
}
