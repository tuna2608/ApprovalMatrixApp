//
//  FeatureView.swift
//  Approval Matrix
//
//  Created by Anh Tú on 11/05/2023.
//

import SwiftUI
struct FeatureView: View {
    var title : String
    var color_bg : String
    @State private var isTap = false
    var color_icon : String
    var name_icon : String
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            Image(systemName: name_icon)
                .foregroundColor(Color(color_icon))
        }
        .padding()
        .padding(.horizontal)
        .background(Color(color_bg))
    }
}

//struct FeatureView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeatureView()
//    }
//}
