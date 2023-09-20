
import SwiftUI

struct FriendCell: View {
    var friend:Friend
    var body: some View {
        
        HStack {
            Image(friend.name)
                .resizable(resizingMode: .stretch)
                .frame(width: 40, height: 40).cornerRadius(8).shadow(color: Color(.sRGB, red:0, green:0, blue:0, opacity:0.5), radius: 24)
            
            Text(friend.imagename).frame(maxWidth:.infinity ,alignment: .leading)
                .font(.title2)

               
           
                NavigationView {
                    NavigationLink(destination: talking()) {
                        Image(systemName: "message.circle") .padding(.bottom).frame(alignment:.top)
                    }
                    
                    
                }.navigationTitle("HOME").frame(width:40,height: 90)
            
        }.padding(EdgeInsets(.init(top: 20, leading: 10, bottom: 20, trailing: 10))).padding(.leading).background(Color(.sRGB, red: 82/255, green: 97/255, blue: 107/255, opacity: 0.5)).frame( maxWidth: .infinity).cornerRadius(24).shadow(color: Color(.sRGB, red:0,    green:0, blue:0, opacity:0.5), radius: 24)
    }
}

struct FriendCell_Previews: PreviewProvider {
    static var previews: some View {
        FriendCell(friend: Friend(name: "Cabbage", imagename: "Carrot"))
    }
}
