//
//  HomeCoordinator.swift
//  todo
//
//  Created by Rodel Gillera on 7/3/24.
//

import Foundation
import SwiftUI

enum HomeScreen {
    case home, add
}

final class HomeCoordinator: Hashable {
    @Binding var navigationPath: NavigationPath

    private var id: UUID
    private var output: Output?
    private var page: HomeScreen

    struct Output {
        var goToMainScreen: () -> Void
    }

    init(
        page: HomeScreen,
        navigationPath: Binding<NavigationPath>,
        output: Output? = nil
    ) {
        id = UUID()
        self.page = page
        self.output = output
        self._navigationPath = navigationPath
    }

    @ViewBuilder
    func view() -> some View {
        switch self.page {
            case .home:
                homeView()
            case .add:
                addView()
        }
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (
        lhs: HomeCoordinator,
        rhs: HomeCoordinator
    ) -> Bool {
        lhs.id == rhs.id
    }

    private func homeView() -> some View {
           let homeView = HomeView(
               output:
                   .init(
                    goToAddScreen: {
                           self.output?.goToMainScreen()
                       }
                   )
           )
           return homeView
       }

       private func addView() -> some View {
           let addView = AddView(output:
                   .init(
                    goToHomeScreen: {
                           self.output?.goToMainScreen()
                       }
                   )
           )
           return addView
       }


    func push<V>(_ value: V) where V : Hashable {
        navigationPath.append(value)
    }
}
