import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    var coordinate: CLLocationCoordinate2D

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {

        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
