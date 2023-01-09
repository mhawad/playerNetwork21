//
//  GoingCell.swift
//  ThePLAYRNetworkApp
//
//  Created by Timmy Nguyen on 1/8/23.
//

import SwiftUI

struct GoingCell: View {
    var body: some View {
        HStack {
            Circle().fill(Color.ui.placeholders)
                .frame(width: 50)
            
            Text("Kevin J. Adams")
            
            Spacer()
            
            Button("Connected") {
                
            }
            .buttonStyle(CustomButton(color: .black, size: .medium))
        }
    }
}

struct GoingCell_Previews: PreviewProvider {
    static var previews: some View {
        GoingCell()
    }
}
