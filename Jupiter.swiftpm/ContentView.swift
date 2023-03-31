import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            TabView {
                Introduce().tabItem {
                    Image(systemName: "person.fill")
                    Text("Introduce")
                }
                Episode1().tabItem {
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                    Text("Episode 1")
                }
                Episode2Frame0().tabItem {
                    Image(systemName: "person.fill")
                    Text("Episode 2")
                }
                
                Episode3().tabItem {
                    Image(systemName: "person.fill")
                    Text("Episode 3")
                }
            }
        }
    }
}

