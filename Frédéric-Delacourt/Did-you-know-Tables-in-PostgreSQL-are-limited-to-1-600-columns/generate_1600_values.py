#! /usr/bin/python3.13

def main() -> None:
  '''
  An entry-point function
  '''
  s: str = ''
  for i in range(1,1601,1):
    s += f"{i},"
  print(s)
  return None

if __name__ == '__main__':
  # function call
  main()
