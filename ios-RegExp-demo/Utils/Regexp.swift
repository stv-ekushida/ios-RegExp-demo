//
//  Regexp.swift
//  ios-RegExp-demo
//
//  Created by Eiji Kushida on 2016/12/18.
//  Copyright © 2016年 Eiji Kushida. All rights reserved.
//

import UIKit

infix operator =~
infix operator !~

// 正規表現用のラッパー
func =~(lhs: String, rhs: String) -> Bool {
    guard let regex = try? NSRegularExpression(pattern: rhs,
                                               options: NSRegularExpression.Options()) else {
                                                return false
    }

    return regex.numberOfMatches(in: lhs,
                                 options: NSRegularExpression.MatchingOptions(),
                                 range: NSRange(location: 0, length: lhs.characters.count)) > 0
}

func !~(lhs: String, rhs: String) -> Bool {
    return !(lhs=~rhs)
}
