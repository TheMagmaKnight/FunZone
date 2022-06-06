//
//  UserInfo+CoreDataProperties.swift
//  FunZone
//
//  Created by admin on 6/1/22.
//
//

import Foundation
import CoreData


extension UserInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserInfo> {
        return NSFetchRequest<UserInfo>(entityName: "UserInfo")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?

}

extension UserInfo : Identifiable {

}
