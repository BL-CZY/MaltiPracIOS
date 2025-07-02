//
//  AppPage.swift
//  MaltiPrac
//

import Foundation

// MARK: - App Pages Enum
enum AppPage: String, CaseIterable {
    case main = "main"
    case conversation = "conversation"
    case grammar = "grammar"
    case vocab = "vocab"
    case pronunciation = "pronunciation"
    
    var title: String {
        switch self {
        case .main: return "MainTitle"
        case .conversation: return "MainConversation"
        case .grammar: return "MainGrammar"
        case .vocab: return "MainVocab"
        case .pronunciation: return "MainPronunciation"
        }
    }
}
