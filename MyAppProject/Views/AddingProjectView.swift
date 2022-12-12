//
//  AddingProjectView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 5/29/22.
//


// 프로젝트를 추가할 수 있는 화면
import SwiftUI

struct AddingProjectView: View {
    @State var nameInput : String
    
    var body: some View {
        Spacer()
        VStack{
            Text("Name of your project").padding()
            
            TextField("PlaceHolder",text: $nameInput).padding()
            
        }.multilineTextAlignment(.center)
        
        Spacer()
        
        Button(action: {
           //store in the userDefault
        })
        {
            Text("Add").padding()
        }
    }
}

struct AddingProjectView_Previews: PreviewProvider {
    static var previews: some View {
        AddingProjectView(nameInput:"")
    }
}
