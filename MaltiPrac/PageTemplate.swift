//
//  PageTemplate.swift
//  MaltiPrac
//

import SwiftUI

// MARK: - Page Template
struct PageTemplate: View {
    let title: String
    let color: Color
    let content: String
    
    @State private var contentAppeared = false
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            // Title
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(color)
                .multilineTextAlignment(.center)
                .scaleEffect(contentAppeared ? 1.0 : 0.8)
                .opacity(contentAppeared ? 1.0 : 0.0)
            
            // Content Card
            VStack(spacing: 20) {
                Image(systemName: getIconForColor(color))
                    .font(.system(size: 60))
                    .foregroundColor(color)
                
                Text(content)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(.secondary)
            }
            .padding(30)
            .background(Color(.systemGray6))
            .cornerRadius(20)
            .shadow(color: color.opacity(0.2), radius: 10, x: 0, y: 5)
            .scaleEffect(contentAppeared ? 1.0 : 0.9)
            .opacity(contentAppeared ? 1.0 : 0.0)
            
            Spacer()
        }
        .padding()
        .onAppear {
            withAnimation(.spring(response: 0.8, dampingFraction: 0.8).delay(0.2)) {
                contentAppeared = true
            }
        }
    }
    
    private func getIconForColor(_ color: Color) -> String {
        switch color {
        case .blue: return "bubble.left.and.bubble.right"
        case .green: return "book.closed"
        case .orange: return "character.book.closed"
        case .purple: return "speaker.wave.3"
        default: return "star"
        }
    }
}
