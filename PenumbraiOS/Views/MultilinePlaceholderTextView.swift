//
//  MultilinePlaceholderTextView.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import UIKit

class MultilinePlaceholderTextView: UIView, UITextViewDelegate {
    let type: PenumbraFormType

    private lazy var textView = UITextView().configured {
        $0.font = UIFont.preferredFont(forTextStyle: .body)
        $0.adjustsFontForContentSizeCategory = true
        $0.textColor = .label
        $0.backgroundColor = .clear
        $0.delegate = self
        $0.textContainer.lineFragmentPadding = 0
        $0.textContainerInset = .zero
    }

    private lazy var placeholderLabel = UILabel().configured {
        $0.font = UIFont.preferredFont(forTextStyle: .body)
        $0.adjustsFontForContentSizeCategory = true
        $0.textColor = .label
        $0.backgroundColor = .clear
        $0.textAlignment = .natural
        $0.textColor = .placeholderText
    }

    init(type: PenumbraFormType) {
        self.type = type
        super.init(frame: .zero)

        backgroundColor = .clear

        addSubviewWithInsets(textView, UIEdgeInsets(10))
        textView.addSubviewWithInsets(placeholderLabel)

        textView.isEditable = type.textViewIsEditable
        placeholderLabel.text = type.textViewString

        if type == .onboard {
            placeholderLabel.isHidden = !textView.text.isEmpty
            layer.cornerRadius = 5
            layer.borderWidth = 1
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UITextViewDelegate
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
}
