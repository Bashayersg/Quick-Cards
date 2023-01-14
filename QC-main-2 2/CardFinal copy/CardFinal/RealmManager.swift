//
//  RealmManager.swift
//  CardFinal
//
//  Created by Bashayer  on 21/06/1444 AH.
//
import Foundation
import RealmSwift


class RealmManager: ObservableObject {
    
    private(set) var localRealm: Realm?
    @Published private(set) var  cards:[Card] = []
    init(){
        openRealm()
        getCard()
        
    }
    func openRealm() {
        do {
            let config = Realm.Configuration(schemaVersion: 1 , migrationBlock: { Migration , oldSchemaVersion in
                if oldSchemaVersion > 1 {
                    
                }
            })
            Realm.Configuration.defaultConfiguration=config
            
            localRealm = try Realm()
        }catch {
            print("Error opening Realm \(error)")
            
        }
        
        
    }
    
    func Addcard(CardTitle:String ){
        if let localRealm = localRealm {
            
            do{
                try localRealm.write {
                    let newCard = Card(value: ["title": CardTitle, "completed":false])
                    localRealm.add(newCard)
                    getCard ()
                    print("Added new Card\(newCard)")
                }
            } catch {
                
                print("Error adding \(error)")
            }
            
        }
    }
    
    func getCard (){
        if let localRealm = localRealm {
            let allCard = localRealm.objects(Card.self).sorted(byKeyPath: "completed")
            cards = []
            allCard.forEach{ card in
                cards.append(card)
            }
            
        }
        
    }
    
    func updateCard(id: ObjectId , completed:Bool){
        if let localRealm = localRealm {
            do{
               let cardToUpdate = localRealm.objects(Card.self).filter(NSPredicate(format: "id==%@",id))
                guard !cardToUpdate
                    .isEmpty else {return}
                try localRealm.write {
                    cardToUpdate[0].completed = completed
                    getCard()
                    print("Updated task with id \(id)")
                }
                
            } catch {
                print("error \(id) ")
                
            }
        }
        
    }
    func deleteCard(id: ObjectId){
        if let localRealm = localRealm {
            do{
                let deleteCard = localRealm.objects(Card.self).filter(NSPredicate(format: "id==%@",id))
                 guard !deleteCard.isEmpty else {return}
                try localRealm.write{
                    localRealm.delete(deleteCard)
                    getCard()
                    print("Delet\(id)")
                }
            }
            catch{
               print("Error\(id) from realm:\(error)")
            }
        }
    }
}

