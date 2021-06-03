import UIKit

struct SomeStructure {
    var familia = ""
    var name = ""
    var ochestvo = ""
    var login = ""
    var password = ""
    
}
class ProfileClass {
    var Structure = SomeStructure (familia: "Filimonova", name: "Anastasia", ochestvo: "Uyrevna", login: "Anastasia_F", password: "qwery")

    func check(login: String, password: String) -> String {
        if self.Structure.login == login && self.Structure.password == password {
        return "Пользователь авторизован"
    } else {
        return "Пользователь не авторизован"
    }
}



    func registration (familia: String, name: String, ochestvo: String, login: String, password: String, password2: String) -> String{
        Structure = SomeStructure (familia: familia, name: name, ochestvo: ochestvo, login: login, password: password)
    
        if Structure.password == password2{
        
        return "Пользователь зарегистрирован"
        
        }else {
            return "Пользователь не зарегистрирован"
        }
}
}
let PC = ProfileClass ()
print (PC.registration (familia: "Filimonova", name: "Anastasia", ochestvo: "Uyrevna", login: "Anastasia_F", password: "qwery", password2: "qwery"))
print (PC.check(login: "Anastasia_F", password: "qwery"))

