// Главный протокол с действием, которое разделяется на два вида
protocol Swim {
    func swim()
}
// Главный протокол с действием, который разделяется на два вида
protocol Diver {
    func dive()
}
// Первый вид
class ProfessionalDiver: Diver {
    func dive() {
        print("I am a proffesional diver")
    }
}
// Второй вид
class NewbieDiver: Diver {
    func dive() {
        print("I can not dive")
    }
}
// Первый вид
class ProfessionalSwimmer: Swim {
    func swim() {
        print("I am a professional swimmer")
    }
}
// Второй вид
class NewbieSwimmer: Swim {
    func swim() {
        print("I can not swim!!!")
    }
}

// Челавек, который может плавать и нырять
class Human {
    var swimmingStatus: Swim!
    var divingStatus: Diver!
    
    func doings() {
        swimmingStatus.swim()
        divingStatus.dive()
    }
}


var human = Human()
human.swimmingStatus = NewbieSwimmer()
human.divingStatus = ProfessionalDiver()
human.doings()
