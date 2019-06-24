import SwiftUI

struct ContentView : View {

    @State var isInvisable = false

    var body: some View {

        VStack {
            Text("Learning Animation")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .color(.pink)
                .padding(3)
                .animation(.basic(duration: 0.3, curve: .easeOut))

            Image("reva")
                .frame(width: isInvisable ? 414 : 300, height: isInvisable ? 600 : 300)
                .clipped()
                .cornerRadius(isInvisable ? 0 : 30)
                .blur(radius: isInvisable ? 0 : 30)
                .animation(.spring())
                .aspectRatio(contentMode: .fill)

            Text("focus on UI")
            .font(.subheadline)
            .color(.gray)
            .padding(4)
            .animation(.basic(duration: 0.3, curve: .easeIn))

            Button(action: {
                withAnimation {
                    self.isInvisable.toggle()
                }
            }) {
                Text("Animate!")
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
