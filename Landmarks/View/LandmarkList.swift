//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hijazi on 4/6/19.
//  Copyright © 2019 iReka Soft. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
  var body: some View {
    
    //      LandmarkRow(landmark: landmarkData[0])
    //      LandmarkRow(landmark: landmarkData[1])
    
    List(landmarkData.identified(by: \.id)) { landmark in
      LandmarkRow(landmark: landmark)
    }
    
  }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
#endif
