//
//  ContentView.swift
//  MaltiPrac
//
//  Created by huang fanhua on 26/06/2025.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            // Title
            Text("MainTitle", bundle: .main)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            // Grid of buttons
            LazyVGrid(columns: [
                GridItem(.fixed(150), spacing: 20),
                GridItem(.fixed(150), spacing: 20)
            ], spacing: 20) {
                
                Button(action: {
                    // Handle conversation button tap
                }) {
                    Text("MainConversation", bundle: .main)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .background(.blue)
                        .cornerRadius(15)
                }
                
                Button(action: {
                    // Handle grammar button tap
                }) {
                    Text("MainGrammar", bundle: .main)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .background(.green)
                        .cornerRadius(15)
                }
                
                Button(action: {
                    // Handle vocab button tap
                }) {
                    Text("MainVocab", bundle: .main)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .background(.orange)
                        .cornerRadius(15)
                }
                
                Button(action: {
                    // Handle pronunciation button tap
                }) {
                    Text("MainPronunciation", bundle: .main)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .background(.purple)
                        .cornerRadius(15)
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    ContentView()
}
