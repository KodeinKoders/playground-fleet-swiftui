//
//  Fleet_SwiftUI_TutorialApp.swift
//  Fleet SwiftUI Tutorial
//
//  Created by Romain Boisselle on 24/11/2023.
//

import SwiftUI

@main
struct Fleet_SwiftUI_TutorialApp: App {
    init() {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
