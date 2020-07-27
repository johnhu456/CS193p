//
//  Grid.swift
//  Memorize
//
//  Created by 胡翔 on 2020/7/27.
//  Copyright © 2020 john. All rights reserved.
//

import SwiftUI

struct Grid<Item,ItemView>: View where Item: Identifiable, ItemView: View {
    var items:[Item]
    var viewForItem:(Item) -> ItemView
     
    init(_ items:[Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items;
        self.viewForItem = viewForItem;
    }
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size:CGSize) -> some View {
        ForEach(items) {item in
            self.body(for: item, in: size)
        }
    }
    
    func body(for item:Item,in size:CGSize) -> some View {
        return viewForItem(item)
    }
}
