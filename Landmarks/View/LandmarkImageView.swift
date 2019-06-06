//
//  LandmarkImageView.swift
//  Landmarks
//
//  Created by hijazi on 06/06/2019.
//  Copyright © 2019 iReka Soft. All rights reserved.
//

import SwiftUI

struct LandmarkImageView : View {
  
  @State private var zoomed = false
  
  var body: some View {
    
    ZStack(alignment: .topLeading) {
      
      Image("image1")
        .resizable()
        .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
        .navigationBarTitle(Text("ABC"),displayMode: .inline)
        .tapAction {
          withAnimation(.basic(duration:2)){
            self.zoomed.toggle()
          }
        }.frame(minWidth:0, maxWidth: .infinity, minHeight:0, maxHeight: .infinity)
      
      if true {
        if self.zoomed == false {
          Image(systemName:"video.fill")
            .font(.title)
            .padding(.all)
            .transition(.move(edge:.leading))
          
        }

      }

      
    }
    
  }
  
}

#if DEBUG
struct LandmarkImageView_Previews : PreviewProvider {
  static var previews: some View {
    
    NavigationView {
      LandmarkImageView()
    }
    
  }
}
#endif
