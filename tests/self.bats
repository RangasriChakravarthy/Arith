load harness

@test "self-1" {
  check '30 % 5' '0'
}

@test "self-2" {
  check '30 + 40 % 7' '35'
}

@test "self-3" {
  check '77 - 11 % 6' '72'
}

@test "self-4" {
  check '4 + 5 % 2 + 1' '6'
}

@test "self-5" {
  check '100 * 45 % 9 -10' '-10'
}

@test "self-6" {
  check '100 / 25 % 3 + 7' '8'
}

@test "self-7" {
  check '500     /5 +1%9' '101'
}

@test "self-8" {
  check '5 % -3' '2'
}

@test "self-9" {
  check '-5 % 3' '-2'
}

@test "self-10" {
  check '-5 % -3' '-2'
}