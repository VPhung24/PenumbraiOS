//
//  PenumbraFormType.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import Foundation

enum PenumbraFormType {
    case onboard, request

    var titleLabelString: String {
        switch self {
        case .onboard:
            return "seed phrase:"
        case .request:
            return "approve"
        }
    }

    var textViewIsEditable: Bool {
        switch self {
        case .onboard:
            return true
        case .request:
            return false
        }
    }

    var textViewString: String {
        switch self {
        case .onboard:
            return "word0 word1 word2 word3..."
        default:
            return "transaction info"
        }
    }

    var accessoryButtons: [PenumbraAccessoryType] {
        switch self {
        case .onboard:
            return [.submit]
        case .request:
            return [.approve, .decline]
        }
    }
}

enum PenumbraAccessoryType: String {
    case submit, approve, decline
}
