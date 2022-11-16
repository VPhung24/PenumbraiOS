//
//  MultilinePlaceholderTextView.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import UIKit

class MultilinePlaceholderTextView: UIView, UITextViewDelegate {
    var placeholderText: String

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
        $0.text = placeholderText
        $0.textAlignment = .natural
        $0.textColor = .placeholderText
    }

    init(_ placeholderText: String) {
        self.placeholderText = placeholderText
        super.init(frame: .zero)

        backgroundColor = .clear

        addSubviewWithInsets(textView, UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        textView.addSubviewWithInsets(placeholderLabel)

        placeholderLabel.isHidden = !textView.text.isEmpty

        layer.cornerRadius = 5
        layer.borderWidth = 1
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UITextViewDelegate
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
}
