//
//  AccountConfig+SQLite.swift
//  Twidere
//
//  Created by Mariotaku Lee on 16/9/11.
//  Copyright © 2016年 Mariotaku Dev. All rights reserved.
//

import Foundation
import SQLite
import Freddy

extension Account.Config: Value {
    static var declaredDatatype: String {
        return String.declaredDatatype
    }
    
    static func fromDatatypeValue(_ datatypeValue: String) -> Account.Config? {
        return try? Account.Config.fromJSON(json: JSON(jsonString: datatypeValue))
    }
    
    var datatypeValue: String {
        return try! self.toJSON().serializeString()
    }
}
