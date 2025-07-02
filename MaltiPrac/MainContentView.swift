//
//  MainContentView.swift
//  MaltiPrac
//

import SwiftUI

// MARK: - Main Content View
struct MainContentView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            // Title with scale animation
            Text("MainTitle")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
                .scaleEffect(navigationManager.isAnimating ? 0.95 : 1.0)
                .animation(.easeInOut(duration: 0.2), value: navigationManager.isAnimating)
            
            // Grid of buttons with staggered animation
            LazyVGrid(columns: [
                GridItem(.fixed(150), spacing: 20),
                GridItem(.fixed(150), spacing: 20)
            ], spacing: 20) {
                
                NavigationButton(
                    title: "MainConversation",
                    color: .blue,
                    page: .conversation,
                    delay: 0.0
                )
                
                NavigationButton(
                    title: "MainGrammar",
                    color: .green,
                    page: .grammar,
                    delay: 0.15
                )
                
                NavigationButton(
                    title: "MainVocab",
                    color: .orange,
                    page: .vocab,
                    delay: 0.3
                )
                
                NavigationButton(
                    title: "MainPronunciation",
                    color: .purple,
                    page: .pronunciation,
                    delay: 0.45
                )
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}
