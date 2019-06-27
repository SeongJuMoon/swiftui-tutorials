import Foundation

@propertyWrapper struct Clamping<V: Comparable> {
    var value: V
    var min: V
    let max: V

    init(intialValue: V, min: V, max: V) {
        value = intialValue
        self.min = min
        self.max = max
        assert(value >= min && value <= max)
    }

    var wrappedValue: V {
        get { return value }
        set {
            if newValue < min {
                value = min
            } else if newValue > max {
                value = max
            } else {
                value = newValue
            }
        }
    }
}


struct Colors{
    @Clamping(min: 0, max: 255) var red: Int = 127
    @Clamping(min: 0, max: 255) var green: Int = 127
    @Clamping(min: 0, max: 255) var blue: Int = 127
    @Clamping(min: 0, max: 255) var alpha: Int = 255
}
