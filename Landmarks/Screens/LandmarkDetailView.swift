//
//  ContentView.swift
//  Landmarks
//
//  Created by Hijazi on 4/6/19.
//  Copyright © 2019 iReka Soft. All rights reserved.
//

import SwiftUI

struct LandmarkDetailView : View {
  
  var landmark : Landmark
  
  var body: some View {
    
    VStack {
      
      MapView()
        .edgesIgnoringSafeArea(.top)
        .frame(height: 300).disabled(true)
      
      CircleImage()
        .offset(y: -180)
        .padding(.top, 0)
      
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack(alignment: .top) {
          Text(landmark.park)
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
        }
        .offset(y:-180)
        .padding()
      
      Spacer()
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    
    NavigationView {
      LandmarkDetailView(landmark: landmarkData[0])
    }.navigationBarTitle(Text("Awesome Places"), displayMode: .inline)
    
    
  }
}
#endif
