//
//  FineDiningApp.swift
//  FineDining
//
//  Created by 진호정 on 2024/01/07.
//

import SwiftUI

@main
struct FineDiningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(.light)
        }
        .windowStyle(.hiddenTitleBar)
    }
}
