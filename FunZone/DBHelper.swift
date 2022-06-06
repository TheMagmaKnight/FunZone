//
//  DBHelper.swift
//  FunZone
//
//  Created by admin on 6/1/22.
//

import Foundation
import UIKit
import CoreData

class DBHelper {
    static var dbHelper = DBHelper()
    

    let context  = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addData(userValue:String,passValue:String){
        let userInfo = NSEntityDescription.insertNewObject(forEntityName: "UserInfo", into: context!) as! UserInfo
        userInfo.username = userValue
        userInfo.password = passValue
        do {
            try context?.save()
            print("UserData Saved")
        }
        catch{
            print("Error in Saving UserData")
        }
    }
    func existingUser(userValue:String)->UserInfo{
        var userInfo = UserInfo()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "UserInfo")
        fetchRequest.predicate = NSPredicate(format: "username == %@", userValue)
        fetchRequest.fetchLimit = 1
        do{
            let request =  try context?.fetch(fetchRequest) as! [UserInfo]
            if(request.count != 0){
                userInfo = request.first!
            }
            else {
                print("Data not found")
                return userInfo
            }
        }
        catch{
            print("Error in pulling UserData")
        }
        return userInfo
    }
}
