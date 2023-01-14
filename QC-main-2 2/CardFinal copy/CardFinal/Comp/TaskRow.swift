//
//  TaskRow.swift
//  CardFinal
//
//  Created by Fatoon albogami on 18/06/1444 AH.
//
//صفحة التاسك

import SwiftUI

struct TaskRow: View {
    var task : String
    var complated : Bool
    var body: some View {
//        ZStack{
//
//
//                RoundedRectangle(cornerRadius: 25)
//                .frame(width: 260, height: 150)
//

//                            .background(.linearGradient(colors:[Color.pink , Color.pink.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))


//                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//
//                            .shadow(color: Color.black.opacity(0.9), radius: 8, x: 0, y: 8)
//

            HStack{
               // Image(systemName: complated ? "checkmark.circle.fill" : "circle")
                Text(task)
                
            }}}


struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task : "Do" , complated : true)
    }
}

//struct CardStyle: View {
////    var image: String
////        var title: String
////        var type: String
////        var price: Double
//    var body: some View {
//        HStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//        }
//
//    }
//}
