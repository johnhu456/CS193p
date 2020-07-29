//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by 胡翔 on 2020/7/28.
//  Copyright © 2020 john. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching item: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == item.id {
                return index
            }
        }
        return nil
    }
}
