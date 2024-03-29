//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Hijazi on 4/6/19.
//  Copyright © 2019 iReka Soft. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
  
  var landmark: Landmark
  
  var body: some View {
    HStack {
      landmark.image(forSize: 50).cornerRadius(25)
      Text(landmark.name)
      Spacer()
    }
  }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
  static var previews: some View {
    LandmarkRow(landmark: landmarkData[0])
    .previewLayout(.sizeThatFits)
  }
  
}
#endif
