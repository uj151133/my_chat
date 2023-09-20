
import SwiftUI

struct talking: View {
    
    var body: some View {
        GeometryReader{ monitorsize in
            VStack {
                HStack {
                    Image("Banana").resizable().scaledToFill()
                        .frame(width: monitorsize.size.width / 4 , height: monitorsize.size.width / 4
                        ).cornerRadius(24).shadow(color: Color(.sRGB, red:0,    green:0, blue:0, opacity:0.5), radius: 24)
                    VStack{
                        HStack{
                            Text("Banana").bold()
                                .font(.title2).frame(maxWidth: monitorsize.size.width / 2, alignment: .leading)
                            
                            
                            Image(systemName: "pencil")
                                .foregroundColor(Color.white)
                                .padding(.trailing)
                                .frame(width: 25.0, height: 25.0)
                        }
                        Divider().frame(height:1.5).background(.black)
                    }
                    
                }.frame( maxWidth: .infinity).padding([.top, .leading])
                VStack{
                    HStack{
                        Text("Profile")
                            .font(.body)
                            .padding(.leading)
                            .frame(maxWidth:monitorsize.size.width, maxHeight:monitorsize.size.height / 8, alignment: .leading)
                        Image(systemName: "pencil")
                            .foregroundColor(Color.white)
                            .padding(.trailing)
                            .frame(width: 25.0, height: 25.0)
                        
                    }
                    Divider().frame(height:1.5).background(.black).padding(.bottom)
                }
            }.background(Color(.sRGB, red: 82/255, green: 97/255, blue: 107/255, opacity: 0.5)).cornerRadius(24).shadow(color: Color(.sRGB, red:0,    green:0, blue:0, opacity:0.5), radius: 24)
        }
    }
}
        


struct talking_Previews: PreviewProvider {
    static var previews: some View {
        talking()
    }
}
