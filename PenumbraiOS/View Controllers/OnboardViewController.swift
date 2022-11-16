//
//  OnboardViewController.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/15/22.
//

import UIKit

class OnboardViewController: UIViewController {

    lazy var titleLabel = UILabel().configured {
        $0.font = UIFont.preferredFont(forTextStyle: .subheadline)
        $0.text = "seed phrase:"
        $0.adjustsFontForContentSizeCategory = true
        $0.textColor = .label
        $0.numberOfLines = 0
    }

    lazy var textView = UITextView().configured {
        $0.adjustsFontForContentSizeCategory = true
        $0.textColor = .label
        // UITextView -- multi-line txt fields -- dont have a placeholder. next: subclasses UITextView
        $0.text = "[temp wrappable placeholder] word0 word1 word2 word3 word4 word5..."
        $0.backgroundColor = .clear
        $0.layer.cornerRadius = 5
        $0.layer.borderWidth = 1
    }

    lazy var submitButton = UIButton().configured {
        $0.setTitle("submit", for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 5
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Penumbra Custody Service Starter"
        view.backgroundColor = .systemBackground

        let stackView = UIStackView(arrangedSubviews: [titleLabel, textView, submitButton])
        stackView.preservesSuperviewLayoutMargins = true
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.axis = .vertical
        stackView.spacing = 8

        view.addSubviewWithInsets(stackView)
    }

}
