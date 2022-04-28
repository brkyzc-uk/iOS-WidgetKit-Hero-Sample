//
//  HeroView.swift
//  HeroWidget
//
//  Created by Burak YAZICI on 25/04/2022.
//

import SwiftUI

struct HeroView: View {
    
    let hero : SuperHero
    
    var body: some View {
       
        HStack{
            CircularImageView(image: Image(hero.image))
                .frame(width: 125, height: 125, alignment: .center).padding()
            Spacer()
            VStack{
                Text(hero.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Text(hero.realName)
                    .fontWeight(.semibold)
                
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
        

    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: batman)
    }
}
