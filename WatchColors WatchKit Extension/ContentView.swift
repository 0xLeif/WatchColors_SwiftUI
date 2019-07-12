//
//  ContentView.swift
//  WatchColors WatchKit Extension
//
//  Created by Zach Eriksen on 7/12/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    var color: Color
    var levels: [Double] = stride(from: 0.1, to: 1, by: 0.1).reversed()
    
    var body: some View {
        List(levels.identified(by: \.self)) { i in
            self.color.opacity(i)
        }
    }
}

struct ContentView : View {
    var colors: [Color] = [.red, .pink, .orange, .yellow, .green, .blue, .purple, .gray, .white]
    
    var body: some View {
        List(colors.identified(by: \.self)) { color in
            NavigationLink(destination: ColorView(color: color)) {
                color
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
