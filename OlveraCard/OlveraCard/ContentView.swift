//
//  ContentView.swift
//  OlveraCard
//
//  Created by Gonzalo Olvera Monroy on 28/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.green)
                .edgesIgnoringSafeArea(.all)
            
            Text("Hello, world!")
                .padding()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
