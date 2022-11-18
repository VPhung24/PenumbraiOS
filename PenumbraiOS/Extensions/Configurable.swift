//
//  Configurable.swift
//  PenumbraiOS
//
//  Created by Vivian Phung on 11/16/22.
//

import Foundation

internal protocol Configurable {}

extension Configurable {
    func configured(with: (inout Self) throws -> Void) rethrows -> Self {
        var mutable = self
        try with(&mutable)
        return mutable
    }
}

extension NSObject: Configurable {}
