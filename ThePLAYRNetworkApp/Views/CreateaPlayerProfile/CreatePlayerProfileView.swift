//
//  CreatePlayerProfileView.swift
//  ThePLAYRNetworkApp
//
//  Created by Mirna Helmy on 12/13/22.
//
// ***** THIS VIEW IS NOT USED YET, AND MIGHT NOT BE
import SwiftUI
import _PhotosUI_SwiftUI

struct CreatePlayerProfileView: View {
    @EnvironmentObject var ckUserViewModel: CloudKitUserViewModel
    
    
    @State var user = User()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("onboardingLogo")
                        .resizable()
                        .frame(width: 83, height: 68)
                        .padding(.top, 20)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 60)
                
                
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(Color.ui.grayD9D9D9)
                
                
            }
            .padding(.bottom)
            .frame(height: 281)
            .background(Color.ui.black)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            .clipShape(RoundedShape(corners: [.bottomLeft]))
            
            
            
            HStack{
                VStack(alignment: .leading){
                    Text("FIRST NAME")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.black)
                    
                    TextField(
                        "John", text: $user.firstName
                    )
                    .padding()
                    .frame(width:184, height: 50)
                    .background(Color.ui.grayF6F6F6)
                    .cornerRadius(10)
                }
                
                
                VStack(alignment: .leading){
                    Text("LAST NAME")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.black)
                    
                    TextField(
                        "Doe", text: $user.lastName
                    )
                    .padding()
                    .frame(width:184, height: 50)
                    .background(Color.ui.grayF6F6F6)
                    .cornerRadius(10)
                }
                
            }
            .padding(.top,20)
            .padding(.bottom, 20)
            
            
            
            VStack(alignment: .leading){
                Text("EMAIL")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.black)
                
                TextField(
                    "example@gmail.com", text: $user.email
                )
                .padding()
                .frame(width:378, height: 50)
                .background(Color.ui.grayF6F6F6)
                .cornerRadius(10)
                
            }
            .padding(.bottom, 20)
            
            
            VStack(alignment: .leading){
                Text("PHONE NUMBER")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.black)
                
                TextField(
                    "(   )  -", text: $user.phoneNumber
                )
                .padding()
                .frame(width:378, height: 50)
                .background(Color.ui.grayF6F6F6)
                .cornerRadius(10)
              //  .padding(.bottom, 15)
                
            }
            .padding(.bottom, 20)
            
            Spacer()
            
            NavigationLink(destination: CreatePlayerProfile18(user: $user)) {
                Text("Continue")
                    .foregroundColor(.white)
                    .frame(width:226, height: 48)
                    .background(Color.ui.accentColor)
                    .cornerRadius(34)
                    .padding(.bottom, 45)
            }
        }
        .ignoresSafeArea()
       }
}

//struct CreatePlayerProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreatePlayerProfileView(user: User.sampleUsers[0])
//    }
//}





