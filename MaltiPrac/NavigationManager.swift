//
//  NavigationManager.swift
//  MaltiPrac
//

import SwiftUI

// MARK: - Navigation Manager
class NavigationManager: ObservableObject {
    @Published var currentPage: AppPage = .main
    @Published var navigationStack: [AppPage] = [.main]
    @Published var isAnimating = false
    
    func navigate(to page: AppPage) {
        withAnimation(.easeInOut(duration: 0.4)) {
            isAnimating = true
            currentPage = page
            navigationStack.append(page)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.isAnimating = false
        }
    }
    
    func goBack() {
        guard navigationStack.count > 1 else { return }
        
        withAnimation(.easeInOut(duration: 0.4)) {
            isAnimating = true
            navigationStack.removeLast()
            currentPage = navigationStack.last ?? .main
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.isAnimating = false
        }
    }
    
    var canGoBack: Bool {
        navigationStack.count > 1
    }
}
