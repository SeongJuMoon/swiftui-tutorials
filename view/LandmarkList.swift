//
//  LandmarkList.swift
//  swiftui-tutorials
//
//  Created by 문성주 on 11/06/2019.
//  Copyright © 2019 seongju. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                     LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) {
            deviceName in
             LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
