//
//  PenumbraActionViewController.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/15/22.
//

import UIKit
import VivUIExtensions
import PanModal

class PenumbraActionViewController: UIViewController, PanModalPresentable {
    private var sheetType: PenumbraFormType
    private var isKeyboardShown: Bool = false
    private var keyboardHeight: CGFloat = 0
    weak var delegate: PenumbraAccessoryViewDelegate?

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

    lazy var stackView = UIStackView(arrangedSubViews: [titleLabel, textView, accessoryButtonStack], axis: .vertical)

    init(type: PenumbraFormType, delegate: PenumbraAccessoryViewDelegate?) {
        self.delegate = delegate
        self.sheetType = type
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviewWithConstraints(stackView, [
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            stackView.heightAnchor.constraint(equalToConstant: 280),
            stackView.widthAnchor.constraint(equalToConstant: self.view.bounds.width)
        ])
        view.backgroundColor = .systemBackground
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @objc func keyboardWillAppear(_ notification: Notification) {
        isKeyboardShown = true

        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeightX = keyboardRectangle.height

            keyboardHeight = keyboardHeightX
        }

        panModalSetNeedsLayoutUpdate()
        panModalTransition(to: .longForm)
    }

    @objc func keyboardWillDisappear() {
        isKeyboardShown = false

        panModalSetNeedsLayoutUpdate()
        panModalTransition(to: .shortForm)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    var panScrollable: UIScrollView? {
        return nil
    }

    var shortFormHeight: PanModalHeight {
        if isKeyboardShown {
            return .contentHeight(300 + keyboardHeight)
        }
        return .contentHeight(300)
    }

    var longFormHeight: PanModalHeight {
        return .contentHeight(300 + keyboardHeight)
    }
}
