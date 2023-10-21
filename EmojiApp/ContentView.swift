//
//  ContentView.swift
//  EmojiApp
//
//  Created by Prakhar Agarwal on 22/10/23.
//

import SwiftUI

enum Emoji: String,CaseIterable {
    
    case 🤑, 🚀, 🎉, 🎁, 🪐
}

struct ContentView: View {
    @State var selection: Emoji = .🚀
 
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases,id: \.self){ emoji in Text(emoji.rawValue)
                    }
                }
                
                .pickerStyle(.palette).padding().navigationTitle("Emoji Lovers!")
            }
        }

    }
}

#Preview {
    ContentView()
}
