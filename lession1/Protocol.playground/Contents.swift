class Animal {
    func canMakeSound() {
        
    }
}

protocol makeSoundProtocol {
    var foodType: String{get}
    init(foodType: String)
    func sound()
    func eat()
}

class Cat:Animal, makeSoundProtocol {
    override func canMakeSound() {
        print("Cat can make sound")
    }
    
    var foodType: String = "fish"
    required init(foodType: String) {
        self.foodType = foodType
    }
    func sound() {
        print("Meo Meo")
    }
    func eat() {
        
    }
}

class People:makeSoundProtocol {
    var foodType: String = "rice"
    required init(foodType: String) {
        self.foodType = foodType
    }
    func sound() {
        print("hihi")
    }
    func eat() {
        print(self.foodType)
    }
}

var people = People(foodType: "rice")
people.sound()
people.eat()

