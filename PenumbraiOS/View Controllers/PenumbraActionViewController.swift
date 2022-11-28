//
//  PenumbraActionViewController.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/15/22.
//

import UIKit
import VivUIExtensions
import VivBottomSheet

class PenumbraActionViewController: BottomSheetController {
    private var sheetType: PenumbraFormType
    weak var delegate: PenumbraAccessoryViewDelegate?

    private lazy var modalDismissButton = UIButton(type: .custom, primaryAction: UIAction { _ in
        print("tap")
    }).configured {
        $0.setImage(UIImage(systemName: "minus")?.resizeImageToWidth(newWidth: 40).withTintColor(.tertiaryLabel, renderingMode: .alwaysOriginal), for: .normal)
    }

    private lazy var titleLabel = UILabel().configured {
        $0.font = UIFont.preferredFont(forTextStyle: .subheadline)
        $0.text = sheetType.titleLabelString
        $0.adjustsFontForContentSizeCategory = true
        $0.textColor = .label
        $0.numberOfLines = 0
    }

    lazy var accessoryButtonStack = UIStackView(axis: .horizontal, distribution: .fillEqually).configured { stackView in
        sheetType.accessoryButtons.forEach { type in
            stackView.addArrangedSubview(PenumbraAccessoryView(type: type, delegate: delegate))
        }
    }

    lazy var textView = MultilinePlaceholderTextView(type: sheetType)

    lazy var stackView = UIStackView(arrangedSubViews: [modalDismissButton, titleLabel, textView, accessoryButtonStack], axis: .vertical, distribution: .fill).configured {
        $0.alignment = .fill
    }

    init(type: PenumbraFormType, delegate: PenumbraAccessoryViewDelegate?) {
        self.delegate = delegate
        self.sheetType = type
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        view.backgroundColor = .systemBackground

        view.addSubviewWithInsets(stackView)
    }
}
