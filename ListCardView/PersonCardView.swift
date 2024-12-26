//
//  PersonCardView.swift
//  ListCardView
//
//  Created by mac on 21/12/2567 BE.
//

import SwiftUI

struct PersonCardView:View {
    let person:Person
    var body: some View {
        VStack{
            ZStack{
                Image(person.headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height:80)
                    .clipped()
                Image(person.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:80,height:80)
                    .clipShape(Circle())
                    .offset(y:40)
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .padding(.horizontal)
            }
            .overlay(alignment: .topTrailing){
                Button{
                    
                }label:{
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .padding(6)
                }
            }
            VStack{
                Button{
                    
                }label:{
                    Text("Follow")
                        .padding(.vertical,4)
                        .padding(.horizontal)
                        .overlay{
                            Capsule()
                                .stroke(lineWidth:2)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                HStack{
                    Text(person.name)
                        .fontWeight(.bold)
                    Text(". 1000")
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth:.infinity, alignment: .leading)
                .padding(.leading)
                Text(person.JobTitle)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.leading)

            }
        }
        .background(Color(.tertiarySystemFill))
        .cornerRadius(10)
    }
}


#Preview {
    PersonCardView(person:person1)
}
