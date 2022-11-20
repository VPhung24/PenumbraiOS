//
//  PenumbraActionView.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/15/22.
//

import UIKit

class PenumbraActionView: UIView {
    private let sheetType: PenumbraFormType
    private weak var delegate: PenumbraAccessoryViewDelegate?

    private lazy var titleLabel = UILabel().configured {
        $0.font = UIFont.preferredFont(forTextStyle: .subheadline)
        $0.text = sheetType.titleLabelString
        $0.adjustsFontForContentSizeCategory = true
        $0.textColor = .label
        $0.numberOfLines = 0
    }

    init(bottomSheetType: PenumbraFormType, delegate: PenumbraAccessoryViewDelegate?) {
        self.sheetType = bottomSheetType
        self.delegate = delegate
        super.init(frame: .zero)

        backgroundColor = .systemBackground

        let textView = MultilinePlaceholderTextView(type: sheetType)
        let buttonStackView = UIStackView(axis: .horizontal, distribution: .fillEqually)

        sheetType.accessoryButtons.forEach { type in
            buttonStackView.addArrangedSubview(PenumbraAccessoryView(type: type, delegate: delegate))
        }

        let stackView = UIStackView(arrangedSubViews: [titleLabel, textView, buttonStackView], axis: .vertical)

        addSubviewWithInsets(stackView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
