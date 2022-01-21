//
//  ContentView.swift
//  Memorize
//
//  Created by Sebastian Pfeufer on 20.01.22.
//

import SwiftUI

struct ContentView: View {
    var testTheme = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎"]
    
    var body: some View {
        
        VStack {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(testTheme, id: \.self) { item in
                    CardView(content: item).aspectRatio(2/3, contentMode: .fit)
                }
            }
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.light)
    }
}
