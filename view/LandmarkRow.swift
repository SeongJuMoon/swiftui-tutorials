//
//  LandmarkRow.swift
//  swiftui-tutorials
//
//  Created by 문성주 on 11/06/2019.
//  Copyright © 2019 seongju. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {

    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
        }
    }
}



struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkdata[0])

            LandmarkRow(landmark: landmarkdata[1])
             }
            .previewLayout(.fixed(width: 300, height: 70))

    }
}
