//
//  IndividualPageViews.swift
//  MaltiPrac
//

import SwiftUI

// MARK: - Individual Page Views
struct ConversationView: View {
    var body: some View {
        PageTemplate(
            title: "Conversation Practice",
            color: .blue,
            content: "Welcome to conversation practice! Here you can improve your Maltese speaking skills."
        )
    }
}

struct GrammarView: View {
    var body: some View {
        PageTemplate(
            title: "Grammar Lessons",
            color: .green,
            content: "Learn Maltese grammar rules and sentence structures with interactive exercises."
        )
    }
}

struct VocabView: View {
    var body: some View {
        PageTemplate(
            title: "Vocabulary Builder",
            color: .orange,
            content: "Expand your Maltese vocabulary with categorized word lists and flashcards."
        )
    }
}

struct PronunciationView: View {
    var body: some View {
        PageTemplate(
            title: "Pronunciation Guide",
            color: .purple,
            content: "Perfect your Maltese pronunciation with audio guides and phonetic exercises."
        )
    }
}
