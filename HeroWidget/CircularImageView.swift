//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Burak YAZICI on 25/04/2022.
//

import SwiftUI

struct CircularImageView: View {
    
    var image : Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue,lineWidth: 3))
            .shadow(radius: 25)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("batman"))
    }
}
