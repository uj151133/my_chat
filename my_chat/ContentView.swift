
import SwiftUI

class Friend{
    var name:String
    var imagename:String
    init(name:String, imagename:String){
        self.name = name
        self.imagename = imagename
    }
    
}

struct ContentView: View {
    var friends=[Friend(name: "Cabbage", imagename: "Cabbage"),Friend(name: "Carrot", imagename: "Carrot")]
    var body: some View {
        ZStack{
            Color(.sRGB, red: 240/255, green: 245/255, blue: 249/255, opacity:1).ignoresSafeArea()
        VStack {
            Text("Me")
                .font(.title)
                .fontWeight(.black).frame( maxWidth: .infinity, alignment: .leading)
            MyProfile()
            
            Text("Friend List")
                .font(.title)
                .fontWeight(.black)
                .frame( maxWidth: .infinity, alignment: .leading)
            List(friends, id:\.name){ member in
                FriendCell(friend: member)
            }.listStyle(.plain).background(.clear).listRowSeparator(.hidden)
        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
