import SwiftUI

struct ContentView : View {
    var body: some View {

        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text("Seongju moon")
                    .font(.largeTitle)
                Text("location: seongbukgu, Seoul Asia")
                    .font(.caption)
                Text("email: arcuer.dev@gmail.com")
                    .font(.subheadline)
                Text("tel: +82 10-****-****")
                    .font(.caption)

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
