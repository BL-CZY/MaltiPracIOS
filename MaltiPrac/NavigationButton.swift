//
//  NavigationButton.swift
//  MaltiPrac
//

import SwiftUI

// MARK: - Navigation Button Component
struct NavigationButton: View {
    let title: LocalizedStringKey
    let color: Color
    let page: AppPage
    let delay: Double
    
    @EnvironmentObject private var navigationManager: NavigationManager
    @State private var isPressed = false
    @State private var hasAppeared = false
    
    var body: some View {
        Button(action: {
            navigationManager.navigate(to: page)
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 150, height: 150)
                .background(color)
                .cornerRadius(15)
                .scaleEffect(getScaleEffect())
                .opacity(hasAppeared ? 1.0 : 0.0)
                .shadow(color: color.opacity(0.3), radius: isPressed ? 2 : 8, x: 0, y: isPressed ? 2 : 4)
        }
        .disabled(navigationManager.isAnimating)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.8).delay(delay)) {
                hasAppeared = true
            }
        }
        .onLongPressGesture(minimumDuration: 0, maximumDistance: .infinity, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = pressing
            }
        }, perform: {})
    }
    
    private func getScaleEffect() -> CGFloat {
        if !hasAppeared {
            return 0.3
        } else if navigationManager.isAnimating {
            return 0.9
        } else if isPressed {
            return 0.95
        } else {
            return 1.0
        }
    }
}
