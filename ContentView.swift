import SwiftUI

struct ContentView: View {
    @State var red : Double = 0
    @State var green : Double = 0
    @State var blue : Double = 0
    
    var body: some View {
        ZStack {
            Color(red: red, green: green, blue: blue)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Color Mixer")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 2)
                    .padding(.vertical)
                
                VStack {
                    HStack {
                        Slider(value: $red, in: 0...1)
                            .padding(.trailing)
                        
                        Text("Red: \(Int(red*255))")
                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                            .frame(width: UIScreen.main.bounds.width/3)
                    }
                    
                    HStack {
                        Slider(value: $green, in: 0...1)
                            .padding(.trailing)
                        
                        Text("Green: \(Int(green*255))")
                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                            .frame(width: UIScreen.main.bounds.width/3)
                    }
                    
                    HStack {
                        Slider(value: $blue, in: 0...1)
                            .padding(.trailing)
                        
                        Text("Blue: \(Int(blue*255))")
                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                            .frame(width: UIScreen.main.bounds.width/3)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 2)
                .padding()
                
                Spacer()
            }
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
