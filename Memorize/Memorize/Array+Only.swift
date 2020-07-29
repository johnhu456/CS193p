//
//  Array+Only.swift
//  Memorize
//
//  Created by 胡翔 on 2020/7/29.
//  Copyright © 2020 john. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
