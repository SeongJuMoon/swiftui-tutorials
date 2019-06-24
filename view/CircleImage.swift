import SwiftUI

struct CircleImage: View{

    var Image: Image

    var body: some View {
        Image
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}


struct CircleImage_Preview {
    static var previews: some View {
        CircleImage(Image: Image("asdasd"))
    }
}
