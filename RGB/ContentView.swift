//
//  ContentView.swift
//  RGB
//
//  Created by Tatevik Khunoyan on 13.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $redComponent)
                .colorMultiply(.red)
            Slider(value: $greenComponent)
                .colorMultiply(.green)
            Slider(value: $blueComponent)
                .colorMultiply(.blue)
            Color(red: redComponent, green: greenComponent, blue: blueComponent)
        }
        .padding(.all, 10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

