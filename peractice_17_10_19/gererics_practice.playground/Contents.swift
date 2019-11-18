func swaptwoInt(_ a : inout Int,_ b : inout Int) ->Void
{
    let temp = a
    a = b
    b = temp
}

var var1 = 10
var var2 = 20
swaptwoInt(&var1, &var2)
print(var1)
print(var2)

// swap function using generic
func swap2Int<T>(_ a : inout T,_ b : inout T){
    let temp = a
    a = b
    b = temp
}
var x = "A"
var y = "B"
swap2Int(&x, &y)
print(x)

func add<T : Numeric>(_ a : T,_ b : T)->T{
    
    return a + b
}

print(add(10, 20))
print(add(24.5,21.7))










