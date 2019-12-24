//
//  ContentView.swift
//  CreateASimpleNotificationAnimation
//
//  Created by Ramill Ibragimov on 24.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var notifyMe = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.black, Color.black]), center: .center, startRadius: 5, endRadius: 500)
                .scaleEffect(1.2)
            VStack {
                Text("Wake up")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.995, green: 0.822, blue: 0.044))
                Text("6:30")
                    .font(.title)
                    .foregroundColor(Color.white)
                Image(systemName: "bell.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.995, green: 0.822, blue: 0.044))
                    .rotationEffect(.degrees(notifyMe ? -15 : 45), anchor: .top)
                    .animation(Animation.interpolatingSpring(stiffness: 200, damping: 10).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.notifyMe.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
