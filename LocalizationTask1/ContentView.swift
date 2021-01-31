//
//  ContentView.swift
//  LocalizationTask1
//
//  Created by Зехниддин on 31/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var welcome = "str_welcome".localized()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(welcome).frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack(spacing: 0) {
                    Button(action: {
                        Bundle.setLanguage(lang: "en")
                        welcome = "str_welcome".localized()
                    }) {
                        Text("English").frame(maxWidth: .infinity, maxHeight: 70).background(Color.red)
                    }
                    Button(action: {
                        Bundle.setLanguage(lang: "ru")
                        welcome = "str_welcome".localized()
                    }) {
                        Text("Russian").frame(maxWidth: .infinity, maxHeight: 70).background(Color.blue)
                    }
                    Button(action: {
                        Bundle.setLanguage(lang: "uz")
                        welcome = "str_welcome".localized()
                    }) {
                        Text("Uzbek").frame(maxWidth: .infinity, maxHeight: 70).background(Color.green)
                    }
                    Button(action: {
                        Bundle.setLanguage(lang: "fr")
                        welcome = "str_welcome".localized()
                    }) {
                        Text("French").frame(maxWidth: .infinity, maxHeight: 70).background(Color.orange)
                    }
                }.foregroundColor(.white)
            }.navigationBarTitle("Title".localized(), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
