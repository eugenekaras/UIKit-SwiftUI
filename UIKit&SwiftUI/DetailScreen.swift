//
//  DetailScreen.swift
//  UIKit&SwiftUI
//
//  Created by Евгений Карась on 30.11.22.
//  Copyright © 2022 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct DetailScreen: View {
    var object: Post
    
    var body: some View {
        VStack(spacing: 16.0){
            VStack(spacing: 20.0){
                MainImage(object: object)
                Text(object.text)
                    .lineLimit(nil)
                    .font(.title)
                
            }
//            LittleStack(object: object)
            VStack(alignment: .leading, spacing: 12.0){
                Text("Описание")
                    .font(.title)
                Text(object.descriprion)
                    .lineLimit(nil)
                
            }
            Spacer()
        }.padding()
    }
}

struct LittleStack: View {
    var object: Post
    
    var body: some View {
        HStack(spacing: 30.0){
            VStack{
                Text("\(object.text)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack{
                Text("\(object.descriprion)")
                    .font(.title)
                Text("Students")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
    
    
}

struct MainImage: View {
    var object: Post
    
    var body: some View {
        Image(uiImage:  object.image )
            .resizable()
            .cornerRadius(30)
            .frame(width: 170,height: 170)
//            .border(Color.gray, width: 3).cornerRadius(30)
            .shadow(radius: 10)
    }
    
    
}

//struct DetailScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailScreen(object: materialResponse[2])
//    }
//}
