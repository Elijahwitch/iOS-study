import UIKit

// Batch is the view obxerving an instance of it render again when temperature is mutated.
//class Batch {
//    var name: String
//    var temperature: Double
//    var specificGravity: Double
//    
//    init(name: String, temp: Double, gravity: Double) {
//        self.name = name
//        self.temperature = temp
//        self.specificGravity = gravity
//    }
//}

// updated
// ObservableObject includes a publisher that emits BEFORE any of its @Published properties changes
class Batch : ObservableObject {
    var name: String
    @Published var temperature: Double //
    var specificGravity: Double
    
    init(name: String, temp: Double, gravity: Double) {
        self.name = name
        self.temperature = temp
        self.specificGravity = gravity
    }
}
