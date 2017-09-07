//import Foundation
import GoEcho

func GoStr(s: String) -> GoString {
    return GoString(p:s, n:GoInt(s.characters.count))
}
func GoStrVal(s: GoString) -> String {
    if let ss = String(validatingUTF8: s.p){
        return ss
    }
    return ""
}
let s = GoStr(s:"hello")
print(GoStrVal(s:EchoString(s)))
let int = GoInt(1)
print(EchoInt(int))
let fl = GoFloat64(0.1)
print(EchoFloat(fl))

