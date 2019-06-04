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
    NavigationView{
      List(landmarkData) { landmark in
//        LandmarkRow(landmark: landmark)
        NavigationButton(destination: LandmarkDetailView()) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationBarTitle(Text("Landmarks"))
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
