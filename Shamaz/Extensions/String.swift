//
//  String.swift
//  Shamaz
//
//  Created by James Tapping on 24/10/2020.
//

import Foundation

// Pluralize String extension

extension String {
    
    func makePlural(_ n :Int ) -> String {
        
        if n != 1 {
            
            return self + "s"
        }
        
        return self
    }

}
