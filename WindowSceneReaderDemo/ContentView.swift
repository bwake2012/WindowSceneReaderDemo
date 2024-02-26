// ContentView.swift
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

struct ContentView: View {
    @Environment(\.windowScene) var windowScene

    var windowCount: Int { windowScene?.windows.count ?? 0 }
    var keyWindowFrame: CGRect { windowScene?.keyWindow?.frame ?? .zero }
    var screenBounds: CGRect { windowScene?.screen.bounds ?? .zero }

    var body: some View {
        VStack(spacing: 4) {
            Text("Windows:\(windowCount)")
            Text(
                String(
                    format: "Key window:%4.0f,%4.0f %4.0f,%4.0f",
                    keyWindowFrame.minX, keyWindowFrame.minY,
                    keyWindowFrame.width, keyWindowFrame.height
                )
            )
            Text(
                String(
                    format: "Screen bounds:%4.0f,%4.0f %4.0f,%4.0f",
                    screenBounds.minX, screenBounds.minY,
                    screenBounds.width, screenBounds.height
                )
            )
            Text(windowScene.debugDescription)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
