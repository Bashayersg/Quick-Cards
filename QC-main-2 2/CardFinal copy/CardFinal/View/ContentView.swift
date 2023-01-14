//
//  ContentView.swift
//  CardFinal
//
//  Created by Fatoon albogami on 18/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddTaskView = false
    @StateObject var realmManager = RealmManager()
    var body: some View {
        
            ZStack{
               
                VStack{
                    Text("text1")
                        .font(.title)
                        //.foregroundColor(.white)
                        .bold()
                        //.padding(.bottom,500)
                      //  .padding(.leading,-150)
                        .background(Color(.black))
                    .ignoresSafeArea()
                    
                    Taskview().environmentObject(realmManager)
                    
                }
               

//                    .environmentObject(realmManager)
                
//                List{
//                    ForEach(realmManager.cards,id: \.id){
//                        Card in
//                        TaskRow(task: Card.title, complated: Card.completed)
//                    }
//                    }
                
//
//                 Image("4")
//                    .padding(.bottom,50)
//                 Image("R")
//                 Image("2")
//                    .padding(.top,50)
//                                 .padding(.leading,15)
                   
                AddButton()
                    .onTapGesture {
                        showAddTaskView.toggle()
                    }
                
            } .sheet(isPresented: $showAddTaskView ){
                
                Add()
                    .environmentObject(realmManager)
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.hidden)
                
            }
            
            
            
           .frame (maxWidth: .infinity , maxHeight: .infinity)
          .background(Color("Color"))
           .ignoresSafeArea()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
