//
//  AppCoordinator.swift
//  todo
//
//  Created by Rodel Gillera on 7/4/24.
//

import Foundation
import SwiftUI

final class AppCoordinator: ObservableObject {
    @Published var path: NavigationPath

    init(path: NavigationPath) {
        self.path = path
    }

    @ViewBuilder
    func view() -> some View {
        MainView()
    }
}
