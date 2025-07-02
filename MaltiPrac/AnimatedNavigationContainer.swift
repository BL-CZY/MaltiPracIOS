//
//  AnimatedNavigationContainer.swift
//  MaltiPrac
//

import SwiftUI

// MARK: - Animated Container View
struct AnimatedNavigationContainer: View {
    @StateObject private var navigationManager = NavigationManager()
    
    var body: some View {
        ZStack {
            // Background
            Color(.systemBackground)
                .ignoresSafeArea()
            
            // Current Page Content
            Group {
                switch navigationManager.currentPage {
                case .main:
                    MainContentView()
                case .conversation:
                    ConversationView()
                case .grammar:
                    GrammarView()
                case .vocab:
                    VocabView()
                case .pronunciation:
                    PronunciationView()
                }
            }
            .transition(.asymmetric(
                insertion: .move(edge: .trailing).combined(with: .opacity),
                removal: .move(edge: .leading).combined(with: .opacity)
            ))
            .id(navigationManager.currentPage.rawValue)
            
            // Custom Navigation Bar
            if navigationManager.canGoBack {
                VStack {
                    HStack {
                        Button(action: {
                            navigationManager.goBack()
                        }) {
                            HStack(spacing: 8) {
                                Image(systemName: "chevron.left")
                                    .font(.title2)
                                Text("Back")
                                    .font(.body)
                            }
                            .foregroundColor(.blue)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color(.systemGray6))
                            .cornerRadius(20)
                        }
                        .disabled(navigationManager.isAnimating)
                        
                        Spacer()
                    }
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                    
                    Spacer()
                }
                .transition(.move(edge: .top).combined(with: .opacity))
                .animation(.easeInOut(duration: 0.3), value: navigationManager.canGoBack)
            }
        }
        .environmentObject(navigationManager)
    }
}
