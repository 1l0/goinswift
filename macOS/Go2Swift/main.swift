//import Foundation
import GoEcho

func GoStr(_ s: String) -> GoString {
    print(s.utf8.count) // need for some reasons we don't care
    return GoString(p:s, n:GoInt(s.utf8.count))
}
func SwiStr(_ s: GoString) -> String {
    if let ss = String(validatingUTF8: s.p){
        return ss
    }
    return ""
    //return String(cString: s.p)
}
let s = GoStr("hello")
print(SwiStr(EchoString(s)))
let int = GoInt(1)
print(EchoInt(int))
let fl = GoFloat64(0.1)
print(EchoFloat(fl))

