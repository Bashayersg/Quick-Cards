//
//  AddButton.swift
//  CardFinal
//
//  Created by Fatoon albogami on 18/06/1444 AH.
//
// زر الاضافه
import SwiftUI

struct AddButton: View {
    var body: some View {
        
        ZStack (){
//            Color("Color")
//                .ignoresSafeArea()
//            Text("text1")
//                .font(.title)
//                .foregroundColor(.white)
//                .bold()
//                .padding(.bottom,550)
//                .padding(.leading,-170)
//
//            Text("text2")
//                .font(.title3)
//                .foregroundColor(.gray)
//                .bold()
//                .padding(.bottom,488)
//                .padding(.leading,-85)
            
            
          Image(systemName: "plus.circle")
                .foregroundColor(Color("P"))
                .frame(width: 100 , height: 100)
                .padding(.bottom,760)
                .padding(.leading,-200)
            
           
//            Image("4")
//               .padding(.bottom,50)
//            Image("R")
//            Image("2")
//                .padding(.top,50)
//                .padding(.leading,15)
            
            
            
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
