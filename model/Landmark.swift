import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: imageName, size: size)
    }

    enum category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lake = "Lakes"
        case rivers = "Rivers"
    }
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}
