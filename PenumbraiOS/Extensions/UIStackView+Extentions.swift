//
//  UIStackView+Extentions.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubViews: [UIView], axis: NSLayoutConstraint.Axis = .horizontal, distribution: UIStackView.Distribution = .fill) {
        self.init(arrangedSubviews: arrangedSubViews)
        self.preservesSuperviewLayoutMargins = true
        self.isLayoutMarginsRelativeArrangement = true
        self.distribution = distribution
        self.axis = axis
        self.spacing = 10
    }
}
