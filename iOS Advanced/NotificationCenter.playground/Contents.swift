import UIKit

let notificationTest = Notification.Name("TEST_NOTIFICATION")


class CashMachine {
    
    func money() {
        NotificationCenter.default.post(name: notificationTest, object: nil)
    }
}


class Person {
    
    init() {
        
        NotificationCenter.default.addObserver(forName: notificationTest,
                                               object: nil,
                                               queue: .main) { notification in
            print("Notification in forName:object:queue")
        
        NotificationCenter.default.addObserver(self, 
                                               selector: #selector(onNotificationTest),
                                               name: notificationTest,
                                               object: nil)
    
        }
        
        @objc func onNotificationTest(_ notification: Notification) {
            
        }
    }
}
