import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("")
                .navigationBarTitle("nabaecamp", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Menu")
                        }) {
                            Image("Menu")
                        }
                    }
                }
        }
        // UserPic
        HStack(spacing: 28) {
            Image("spa")
                .frame(width: 88, height: 88)
            VStack {
                Text("7")
                Text("post")
            }
            VStack {
                Text("0")
                Text("follower")
            }
            VStack {
                Text("0")
                Text("follwing")
            }
        }
        .offset(y: -470)
        
        // Username
        VStack(alignment: .leading) {
            Text("르탄이")
            Text("iOS Developer")
            Text("spartacodingclub.kr")
            
        }
        .offset(x: -100, y: -456)
        
        // MiddleBar
        HStack(spacing: 8) {
            Button(action: {
                print("follow")
            }, label: {
                Text("Follow")
                .frame(width: 130, height: 20)
            })
            .buttonStyle(.borderedProminent)
            Button(action: {print("message")}, label: {
                Text("Message")
                .frame(width: 130, height: 20)
            })
            .buttonStyle(.bordered)
            Button {
            } label: {
                Image("More")
                    .frame(width: 30, height: 30)
            }
        }
        .offset(y: -440)
        
        //Nav gallry
        HStack {
            Button {
            } label: {
                Image("Grid")
            }
        } .offset(x: -130, y: -420)
        
        // Picture
        
        
        
        
        
        
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

    #Preview {
        ContentView()
    }
