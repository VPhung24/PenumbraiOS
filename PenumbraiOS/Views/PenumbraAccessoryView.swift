//
//  PenumbraAccessoryView.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import UIKit

class PenumbraAccessoryView: UIView {
    let type: PenumbraAccessoryType
    weak var delegate: PenumbraAccessoryViewDelegate?

    private lazy var accessoryView = UIButton().configured {
        $0.setTitle(type.rawValue, for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 5
    }

    init(type: PenumbraAccessoryType, delegate: PenumbraAccessoryViewDelegate?) {
        self.type = type
        self.delegate = delegate
        super.init(frame: .zero)

        addSubviewWithInsets(accessoryView)

        accessoryView.addTarget(self, action: #selector(accessoryTapped), for: .touchDown)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func accessoryTapped() {
        self.delegate?.accessoryTapped(type: type)
    }
}

protocol PenumbraAccessoryViewDelegate: NSObjectProtocol {
    func accessoryTapped(type: PenumbraAccessoryType)
}
