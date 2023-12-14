//
//  ContentView.swift
//  SwiftUI Dealing with data
//
//  Created by Tyler May on 12/14/23.
//

import SwiftUI

import SwiftUI

struct Sport {
    var golf: String
    var footBall: String
    var soccer: String
    var baseBall: String
}

struct FavoriteSport: View {
    
    @State var sport: Sport = Sport(golf: "Golf", footBall: "Football", soccer: "Soccer", baseBall: "BaseBall")
    @State var selectedButton: String = ""
    @State var submitted = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Favorite Sport")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)
                Spacer()
                HStack {
                    Button {
                        selectedButton = sport.golf
                        submitted = false
                    } label: {
                        Text(sport.golf)
                            .padding()
                            .frame(width: 115, height: 115)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.green)
                            )
                            .opacity(selectedButton == sport.golf ? 1 : 0.6)
                    }
                    Button {
                        selectedButton = sport.footBall
                        submitted = false
                    } label: {
                        Text(sport.footBall)
                            .padding()
                            .frame(width: 115, height: 115)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.green)
                            )
                            .opacity(selectedButton == sport.footBall ? 1 : 0.6)
                    }
                }
                .foregroundColor(.white)
                HStack {
                    Button {
                        selectedButton = sport.soccer
                        submitted = false
                    } label: {
                        Text(sport.soccer)
                            .padding()
                            .frame(width: 115, height: 115)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.green)
                            )
                            .opacity(selectedButton == sport.soccer ? 1 : 0.6)
                    }
                    Button {
                        selectedButton = sport.baseBall
                        submitted = false
                    } label: {
                        Text(sport.baseBall)
                            .padding()
                            .frame(width: 115, height: 115)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.green)
                            )
                            .opacity(selectedButton == sport.baseBall ? 1 : 0.6)
                    }
                }
                .foregroundColor(.white)
                Spacer()
                Button {
                    submitted = true
                } label: {
                    Text("Submit")
                        .padding()
                        .frame(width: 300)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.blue))
                }
                .foregroundColor(.white)
                Spacer()
                if submitted {
                    Text("You choose \(selectedButton)!")
                        .foregroundColor(.white)
                }
                Spacer()
            }
            
        }
    }
}

struct FavortieSport_Preview: PreviewProvider {
    static var previews: some View {
        FavoriteSport()
    }
}

