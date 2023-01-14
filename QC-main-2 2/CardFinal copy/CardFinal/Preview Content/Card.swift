//
//  Card.swift
//  CardFinal
//
//  Created by Bashayer  on 21/06/1444 AH.
//

import Foundation
import RealmSwift


class Card: Object , ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed  = false
}
