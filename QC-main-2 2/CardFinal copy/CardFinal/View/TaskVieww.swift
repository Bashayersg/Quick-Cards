//
//  TaskVieww.swift
//  CardFinal
//
//  Created by Fatoon albogami on 19/06/1444 AH.
//

import SwiftUI

struct TaskVieww: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        ZStack{
            //            VStack{
            //                Text("text1")
            //                    .font(.title3)
            //                    .bold()
            //                    .padding(.bottom,600)
            //                    .padding(.leading,-150)
            //                    .background(Color(.black))
            //                .ignoresSafeArea() }
         
                
                ForEach(realmManager.cards,id: \.id){
                    Card in
                    
                    TaskRow(task: Card.title, complated: Card.completed)
                        .frame(maxWidth: 170, alignment: .leading)
                            .padding(30)
                            .frame(width: 260, height: 150)
                            .background(.linearGradient(colors:[Color.pink , Color.pink.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            
                            
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))

                            .shadow(color: Color.black.opacity(0.9), radius: 8, x: 0, y: 8)

                    
                } 
                
                    .swipeActions(edge: .trailing){
                        Button(role: .destructive){
                            realmManager.deleteCard(id:Card.ID())
                        } label: {
                            Label("Delete" , systemImage: "trash")
                        }
                    }
                
                
                
                
         
        } }
    
    
    struct TaskVieww_Previews: PreviewProvider {
        static var previews: some View {
            TaskVieww().environmentObject(RealmManager())
        }
    }
}
