//
//  GenericService.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 03/01/2023.
//

import Foundation

protocol GenericService: AnyObject {
    
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
    
}
