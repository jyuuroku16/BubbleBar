// Created By Jared Davidson

import SwiftUI

internal struct ExampleComplex: View {
    @State private var selectedTab = 0
    
    var body: some View {
        BubbleBarView(selectedTab: $selectedTab) {
            Text("Home View")
                .tabBarItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            Text("Focus View")
                .tabBarItem {
                    Label("Focus", systemImage: "timer")
                }
            
            Text("Spatial View")
                .tabBarItem {
                    Label("Spatial", systemImage: "square.grid.2x2")
                }
        }
        .bubbleBarAnimation(.smooth)
        .bubbleBarStyle(.nightOwl)
        .showBubbleBarLabels(true)
        .bubbleBarSize(CGSize(width: 350, height: 60))
        .bubbleBarShape(Rectangle())
        .bubbleBarItemShape(Rectangle())
        .bubbleBarItemEqualSizing(false)
        .bubbleBarPadding(.zero)
    }
}

#Preview {
    ExampleComplex()
}
