//
//  CreatePlayerProfile19.swift
//  ThePLAYRNetworkApp
//
//  Created by Mirna Helmy on 12/13/22.
//

import SwiftUI

struct CreatePlayerProfile18: View {
    @Binding var user: User
    
    var body: some View {
        VStack {
            CreatePlayerHeader()
                .ignoresSafeArea()
                .padding(.bottom, -55)
            
            ScrollView {
                VStack {
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("SELECT YOUR ROLE")
                            .font(.system(size: 12, weight: .semibold))
                            .padding(.top, 30)
                            .padding(.leading, -190)
                        
                    }
                    
                    
                    HStack {
                        
                        Button {
                            user.role = .player
                        } label: {
                            
                            VStack {
                                Spacer()
                                Image("player")
                                    .resizable()
                                    .frame(width:105, height: 75)
                                
                                
                                Spacer()
                                Text("Player")
                                    .font(.system(size: 16))
                                    .foregroundColor(user.role == .player ? Color.ui.accentColor : Color.ui.gray959595)
                                    .padding(.top)
                                Spacer()
                            }
                            .frame(width: 122, height: 157)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(user.role == .player ? Color.ui.accentColor : Color.ui.grayC6C6C6)
                            )
                            
                            .overlay(
                                user.role == .player ? Color.clear : Color.ui.grayC6C6C6.opacity(0.4)
                                
                            )
                        }
                        
                        
                        
                        //  Spacer()
                        Button {
                            user.role = .coach
                        } label: {
                            VStack {
                                Spacer()
                                Image("coach")
                                    .resizable()
                                    .frame(width:103, height: 95)
                                
                                Spacer()
                                Text("Coach")
                                    .font(.system(size: 16))
                                    .foregroundColor(user.role == .coach ? Color.ui.accentColor : Color.ui.gray959595)
                                Spacer()
                            }
                            .frame(width: 122, height: 157)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(user.role == .coach ? Color.ui.accentColor : Color.ui.grayC6C6C6)
                            )
                            
                            .overlay(
                                user.role == .coach ? Color.clear : Color.ui.grayC6C6C6.opacity(0.4)
                                
                            )
                        }
                        
                        // Spacer()
                        Button {
                            user.role = .trainer
                        } label: {
                            VStack {
                                Spacer()
                                Image("trainer")
                                    .resizable()
                                    .frame(width: 85, height: 96)
                                
                                Spacer()
                                Text("Trainer")
                                    .font(.system(size: 16))
                                    .foregroundColor(user.role == .trainer ? Color.ui.accentColor : Color.ui.gray959595)
                                Spacer()
                            }
                            .frame(width: 122, height: 157)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(user.role == .trainer ? Color.ui.accentColor : Color.ui.grayC6C6C6)
                            )
                            
                            .overlay(
                                user.role == .trainer ? Color.clear : Color.ui.grayC6C6C6.opacity(0.4)
                            )
                        }
                        
                    }
                    
                    .padding(.horizontal)
                    .padding(.bottom, 15)
                    
                    PlayerProfileOptions(user: $user)
                        .padding(.bottom, 50)
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: OnboardingPosition(user: $user)) {
                        Text("Continue")
                            .foregroundColor(.white)
                            .frame(width:226, height: 48)
                            .background(Color.ui.accentColor)
                            .cornerRadius(34)
                            .padding(.top, 50)
                            .padding(.bottom, 45)
                    }
                }
            }
        }
    }
}

struct CreatePlayerProfile18_Previews: PreviewProvider {
    static var previews: some View {
        CreatePlayerProfile18(user: .constant(User.sampleUsers[0]))
    }
}
