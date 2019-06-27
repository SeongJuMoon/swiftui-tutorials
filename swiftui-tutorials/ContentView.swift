import SwiftUI

struct ContentView : View {

    @State var isInvisable = false
    var models = [
        Place(id: "1", name: "a1", review: "c"),
        Place(id: "2", name: "a2", review: "d"),
        Place(id: "3", name: "a3", review: "c"),
        Place(id: "4", name: "a4", review: "d"),
        Place(id: "5", name: "a5", review: "c")
    ]

    var body: some View {
        SplitView(master: ListView(models: models), detail: DetailView(model: models[0]))
        .edgesIgnoringSafeArea(.all)

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
