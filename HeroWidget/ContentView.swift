//
//  ContentView.swift
//  HeroWidget
//
//  Created by Burak YAZICI on 25/04/2022.
//

import SwiftUI
import WidgetKit

let superHeroArray = [superman, batman, spiderman]

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.buyasoft.HeroWidget"))
    
    var heroData : Data = Data()
    
    var body: some View {
        VStack{
            ForEach(superHeroArray){ hero in
                HeroView(hero: hero)
                    .onTapGesture {
                        saveToDefaults(hero: hero)
                    }
            }
        }
    }
    func saveToDefaults(hero: SuperHero) {
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
