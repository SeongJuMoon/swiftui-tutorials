//
//  DetailView.swift
//  swiftui-tutorials
//
//  Created by 문성주 on 25/06/2019.
//  Copyright © 2019 seongju. All rights reserved.
//

import SwiftUI

struct DetailView : View {

    @Environment(\.isPresented) var isPresented: Binding<Bool>?

    var model: Place
    var body: some View {

        Text(model.review)

    }
}
