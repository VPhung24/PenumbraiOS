//
//  MainViewController.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Account 1 Name"
        view.backgroundColor = .systemBackground

        // TODO: animation and custom bottom sheet
        let mockBottomSheet = UIView(frame: .zero)
        let bottomSheetTest = PenumbraActionView(bottomSheetType: .request, delegate: self)

        mockBottomSheet.addSubviewWithInsets(bottomSheetTest)
        view.addSubviewWithConstraints(mockBottomSheet, [
            mockBottomSheet.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mockBottomSheet.heightAnchor.constraint(equalToConstant: view.bounds.height / 2),
            mockBottomSheet.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mockBottomSheet.widthAnchor.constraint(equalToConstant: view.bounds.width - 20)
        ])
    }
}

extension MainViewController: PenumbraAccessoryViewDelegate {
    func accessoryTapped(type: PenumbraAccessoryType) {
        // switch action
        print(type.rawValue, "tapped")
    }
}
