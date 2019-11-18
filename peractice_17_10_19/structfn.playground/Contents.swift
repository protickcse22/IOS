struct Point{
    var x = 0.0, y = 0.0
    mutating func updateVal(x deltaX : Double, y DeltaY : Double) {
        x += deltaX
        y += DeltaY
    }
}
var sonePoint = Point(x: 1.0, y: 2.0)
sonePoint.updateVal(x: 3.2, y: 4.5)
print(sonePoint.x)
print(sonePoint.y)


struct Stack<T>{
    var stack = [T]()
    mutating func push(_ item : T){
        stack.append(item)
    }
    mutating func pop()->T{
        return stack.removeLast()
    }
    mutating func top()->T{
        if isEmpty(){
            print("Stack is empty")
            return Int(0) as! T
        }
        let size = stack.count
        return stack[size-1]
    }
    mutating func isEmpty()->Bool{
        return stack.count == 0
    }
}
var s = Stack<Int>()
s.push(10)
s.push(20)
s.push(30)
print(s.pop())
print(s.top())
s.push(22)
print(s.top())
s.pop()
s.pop()
s.pop()
print(s.top())

/*
class ReadOnly{
    private (set) var name : String = "hello world"
}

let obj = ReadOnly()
print(obj.name)
obj.name = "hello BD"
print(obj.name)
*/
