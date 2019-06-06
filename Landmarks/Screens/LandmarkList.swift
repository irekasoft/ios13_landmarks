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
        
        NavigationButton(destination: LandmarkDetailView(landmark: landmark)) {
          
          LandmarkRow(landmark: landmark)          
          
        }
        }
        .navigationBarTitle(Text("Awesome Places"), displayMode: .inline)
    }
    
  }
  
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
  static var previews: some View {
    
    Group {
      LandmarkList()
    }
  }
}
#endif
