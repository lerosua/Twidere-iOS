//
//  NetworkPreferencesController.swift
//  Twidere
//
//  Created by Mariotaku Lee on 16/7/11.
//  Copyright © 2016年 Mariotaku Dev. All rights reserved.
//

import UIKit
import SwiftyUserDefaults

class NetworkPreferencesController: BasePreferencesController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "OpenDefaultAPISettings"?:
            let editor = segue.destination as! APIEditorController
            editor.customAPIConfig.loadDefaults()
            editor.disappearCallback = { config in
                Defaults[.apiUrlFormat] = config.apiUrlFormat
                Defaults[.authType] = config.authType
                Defaults[.sameOAuthSigningUrl] = config.sameOAuthSigningUrl
                Defaults[.noVersionSuffix] = config.noVersionSuffix
                Defaults[.consumerKey] = config.consumerKey
                Defaults[.consumerSecret] = config.consumerSecret
            }
        default:
            break
        }
    }
    
}
