//
//  CatalogView.swift
//  Approval Matrix
//
//  Created by Anh Tú on 10/05/2023.
//

import SwiftUI

struct CatalogView: View {
    var title : String
    var icon_btn : String
    var color_btn : String
    var color_tt : String
    var body: some View {
        VStack{
            HStack(){
                HStack{
                    Text(title)
                        .font(.system(size: 15))
                    Spacer()
                }
                .frame(width: 135)
                Spacer()
                Divider()
                    .frame(height: 40)
                    .background(Color(color_btn))
                HStack{
                    Text(title)
                        .font(.system(size: 15))
                    Spacer()
                    Image(systemName: icon_btn)
                }
            }
            .padding()
            .padding(.horizontal,5)
            .foregroundColor(Color(color_tt))
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .foregroundColor(Color(color_btn)))
        }
        .padding(.bottom,20)
    }
}

//struct CatalogView_Previews: PreviewProvider {
//    static var previews: some View {
//        CatalogView()
//    }
//}
