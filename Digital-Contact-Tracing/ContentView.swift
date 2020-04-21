//
//  ContentView.swift
//  Digital-Contact-Tracing
//
//  Created by Digital Contact Tracing on 4/20/20.
//  Copyright © 2020 Digital Contact Tracing. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Digital Contact Tracing")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Text("User location application to track the spread of COVID-19.")
                .font(.system(size: 18))
                    .fontWeight(.light)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Left")
                    Text("Center")
                    Text("Right")
                }.pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
