//
//  ListView.swift
//  swiftui-tutorials
//
//  Created by 문성주 on 25/06/2019.
//  Copyright © 2019 seongju. All rights reserved.
//

import SwiftUI

struct ListView: View {

    var models: [Place]
    var body: some View {
        NavigationView {
            List(models.identified(by: \.id)) {
                model in

                NavigationButton(destination: DetailView(model: model), onTrigger: ({
                    print(model.name)
                    return true
                })) {
                    Text(model.name)
                }
            }
        }.navigationBarTitle(Text("Title").color(.black), displayMode: .large)

    }
}
