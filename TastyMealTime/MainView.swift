//
//  ContentView.swift
//  TastyMealTime
//
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("About")
                    }
                }
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "figure.strengthtraining.traditional")
                        Text("The Facility")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                }
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Location")
                    }
                }
            }
        }
    }

#Preview {
    MainView()
}
