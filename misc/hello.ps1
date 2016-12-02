param (
  [string]$name = "World"
)

function Say-Hello() {
  "Hello $name!"
}

Say-Hello
