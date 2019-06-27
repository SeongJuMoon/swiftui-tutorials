import SwiftUI

struct SplitViewController: UIViewControllerRepresentable {

    var controllers: [UIViewController]
    @Binding public var prefferdDisplayMode: UISplitViewController.DisplayMode

    func makeUIViewController(context: Context) -> UISplitViewController {
        let splitViewController = UISplitViewController()
        splitViewController.preferredDisplayMode = prefferdDisplayMode
        splitViewController.viewControllers = controllers
        return splitViewController
    }

    func updateUIViewController(_ uiViewController: UISplitViewController, context: Context) {
        uiViewController.preferredDisplayMode = prefferdDisplayMode
        uiViewController.viewControllers = controllers
    }


}
