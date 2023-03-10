//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by itst on 21/11/2022.
//

import SwiftUI



struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 60)
                .cornerRadius(5)
            Text(landmark.name)

            Spacer()


        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 170))
    }
}
