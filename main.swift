//
//  main.swift
//  kiosk
//
//  Created by Bae on 12/5/23.
//

let firstscreen = String()
print("[SHAKESHACK MENU]")
print("1. Burgers | 앵거스 비프 통살을 다져만들 버거")
print("2. Frozen Custard | 매장에서 신선하게 만드는 아이스크림")
print("3. Drinks | 매장에서 직접 만드는 음료")
print("4. Beer | 뉴욕 브루클린 브루어리에서 양조한 맥주")
print("0. 종료 | 프로그램 종료")

//let input = readLine()
//print(input!)

let order : String = readLine()!
    if order == "1" {
        print("[Burgers MENU]")
        print("1. ShackBurger | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거")
        print("2. SmokeShack | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
        print("3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
        print("4. CheeseBurger | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
        print("Hamburger | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거")
        print("0. 뒤로가기 | 뒤로가기")
    }
    else if order == "0" {
        print("[SHAKESHACK MENU]")
        print("1. Burgers | 앵거스 비프 통살을 다져만들 버거")
        print("2. Frozen Custard | 매장에서 신선하게 만드는 아이스크림")
        print("3. Drinks | 매장에서 직접 만드는 음료")
        print("4. Beer | 뉴욕 브루클린 브루어리에서 양조한 맥주")
        print("0. 종료 | 프로그램 종료")
    }

//    print(order)

//let input = readLine()
//print(input!)


//class Menu {
//    var name: String
//    var num: Int
//    
//    init(name: String, num: Int) {
//        self.name = name
//        self.num = num
//    }
//
//func greet() {
//    print("Hello \(name).")
//    }
//}
//
//class Burgers: Menu {
//    var numID: Int
//    
//    init(name: String, num: Int, numID: Int) {
//        self.numID = numID
//        super.init(name: name, num: num)
//    }
//}
//
//func explan() {
//    print("\(name) is .")
//}
//
//let menu = Burgers(name: "ShackBurger", num: 1, numID: 1)
//menu.greet()
//menu.Burgers
//
//
