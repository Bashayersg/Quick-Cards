//
//  Add.swift
//  CardFinal
//
//  Created by Fatoon albogami on 18/06/1444 AH.
//
// صفحة الشيت 
import SwiftUI

struct Add: View {
    @State private var title: String = ""
    @EnvironmentObject var realManager: RealmManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color("Color")
                .ignoresSafeArea()
               
            Image("pink")
            Text("text3")
                .font(.title3)
                .bold()
                .padding(.top,-30)
                .padding(.leading,-130)
            TextField("Enter your subject name",text : $title)
                .clipShape(Capsule(style: .continuous))
                
                .padding(.top,30)
                .padding(.leading,66)
            
            
            Button {
                if title != ""{
                    realManager.Addcard(CardTitle: title)
                   //Taskview()
//                    dismiss()
                }}
              
            
        label: {
            
            Image(systemName: "checkmark.circle.fill")
                .padding(.top,150)
                .padding(.leading,180)
                
        }
        }
    }
    
    struct Add_Previews: PreviewProvider {
        static var previews: some View {
            Add()
                .environmentObject(RealmManager())
        }
    }
}
