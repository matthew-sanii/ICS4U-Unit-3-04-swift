public class MrCoxallStacks {
  private var aStack: [Int] = Array()

  func push(pushValue: Int) {
    print("Adding ", pushValue, " to stack.")
    aStack.append(pushValue)
  }

  func showStack() {
    aStack.reverse()
    print("The stacklist.")
    for value in aStack {
      print(value)
    }
    print("End of stacklist.")
  }

  func pop() {
    print("Removing top element from stack.")
    if aStack.count == 0 {
      print("Stack is empty.")
    } else {
      aStack.remove(at: 0)
    }
  }

  func peek() {
    print("Getting value of top element.")
    if aStack.count == 0 {
      print("Stack is empty.")
    } else {
      let val = aStack.first ?? 0
      print("Top element is: ", val)
    }
  }
}

let stacks = MrCoxallStacks()
  for _ in 1...3 {
    stacks.push(pushValue: Int.random(in: 1..<100))
  }
print("Input int you want to add to stack: ")
let value = readLine()!
do {
  let input = Int(value) ?? 0
  if input == 0 {
    print("Input was not an int.")
  } else {
    stacks.push(pushValue: input)
  }
}
stacks.showStack()
stacks.pop()
stacks.showStack()
stacks.pop()
stacks.peek()
stacks.pop()
stacks.pop()
stacks.peek()
