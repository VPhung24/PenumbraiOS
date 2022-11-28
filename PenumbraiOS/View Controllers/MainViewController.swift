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

        navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .add, primaryAction: UIAction { _ in
            let bottomSheetTest = PenumbraActionViewController(type: .onboard, delegate: self)

            bottomSheetTest.preferredSheetSizing = .medium
            bottomSheetTest.panToDismissEnabled = false
            self.present(bottomSheetTest, animated: true)
        })

        navigationItem.leftBarButtonItem = UIBarButtonItem(systemItem: .refresh, primaryAction: UIAction { _ in
            let bottomSheetTest = PenumbraActionViewController(type: .request, delegate: self)

            bottomSheetTest.preferredSheetSizing = .medium
            bottomSheetTest.panToDismissEnabled = false
            self.present(bottomSheetTest, animated: true)
        })
    }
}

extension MainViewController: PenumbraAccessoryViewDelegate {
    func accessoryTapped(type: PenumbraAccessoryType) {
        // switch action
        print(type.rawValue, "tapped")
    }
}
