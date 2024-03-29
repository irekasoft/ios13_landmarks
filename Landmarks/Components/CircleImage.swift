//
//  CircleImage.swift
//  Landmarks
//
//  Created by Hijazi on 4/6/19.
//  Copyright © 2019 iReka Soft. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
  
  var body: some View {
  
    Image("turtlerock")
      .clipShape(Circle())
      .overlay(
        Circle().stroke(Color.white, lineWidth: 4))
      .shadow(color:.init(.sRGB, white: 0, opacity: 0.1),radius: 10)
  }
  
  
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
