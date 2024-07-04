//
//  todoApp.swift
//  todo
//
//  Created by Rodel Gillera on 7/4/24.
//

import Foundation

import SwiftUI

@main
struct todoApp: App {
    @StateObject private var appCoordinator = AppCoordinator(path: NavigationPath())

      var body: some Scene {
          WindowGroup {
              NavigationStack(path: $appCoordinator.path) {
                  appCoordinator.view()
                      .navigationDestination(
                          for: HomeCoordinator.self
                      ) { coordinator in
                          coordinator.view()
                      }
              }
              .environmentObject(appCoordinator)
          }
      }

}



