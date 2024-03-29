// WindowSceneReaderDemoApp.swift
//
// Created by Bob Wakefield on 2/26/24.
// for WindowSceneReaderDemo
//
// Using Swift 5.0
// Running on macOS 14.3
//
// 
//

import SwiftUI
import WindowSceneReader

@main
struct WindowSceneReaderDemoApp: App {
    var body: some Scene {
        WindowGroup {
            WindowSceneReader { windowScene in
                ContentView()
                    .windowScene()
            }
        }
    }
}
