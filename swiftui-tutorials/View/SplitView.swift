import SwiftUI

struct SplitView<Master: View, Detail: View>: View {

    var master: Master
    var detail: Detail
    @State var prefferdDisplayMode: UISplitViewController.DisplayMode

    var body: some View {
        let controllers = [UIHostingController(rootView: master), UIHostingController(rootView: detail)]
        return SplitViewController(controllers: controllers, prefferdDisplayMode: $prefferdDisplayMode)
    }
}

extension SplitView {
    init(master: Master, detail: Detail) {
        self.init(master: master, detail: detail, prefferdDisplayMode: .automatic)
    }

    func prefferdDisplayMode(_ prefferdDisplayMode: UISplitViewController.DisplayMode) -> some View {
        let view = SplitView(master: master, detail: detail, prefferdDisplayMode: prefferdDisplayMode)
        return view
    }
}
