def Addition(a,b):
	return a+b

def Subtraction(a,b):
	return a-b

def Multiplication(a,b):
	return a*b

def Division(a,b):
	if b==0:
		return "Error"
	else:
		return a/b
add="Addition"
sub="Subtraction"
mul="Multiplication"
div="Division"

print("==================CALCULATOR==================\n")

print("We have the following options: \n")
print("1. Addition!")
print("2. Subtraction!")
print("3. Multiplication!")
print("4. Division!")

while True:
	try:
		while True:
			while True:
				num1=int(input(f'\nChoose a number above for what operation you want to do: '))
				if num1==1:
					print(f"\nYou selected {add}!")
					break
				elif num1==2:
					print(f"\nYou selected {sub}!")
					break
				elif num1==3:
					print(f"\nYou selected {mul}!")
					break
				elif num1==4:
					print(f"\nYou selected {div}!")
					break
				else:
					print("\nYou did not select correct operations!")

			num2=float(input(f'\nSelect your first number: '))
			num3=float(input(f'Select your second number: '))

			if num1==1:
				print(f"{num2} + {num3} = {Addition(num2, num3)} .")
			elif num1==2:
				print(f"{num2} - {num3} = {Subtraction(num2, num3)} .")
			elif num1==3:
				print(f"{num2} * {num3} = {Multiplication(num2, num3)} .")
			elif num1==4:
				print(f"{num2} / {num3} = {Division(num2, num3)} .")
			else:
				print('Calculation Error!')

			again=input(f'Choose with Yes/No if you want to continue or not: ').lower()
			if again != 'yes':
				print('Calculator Closed!')
				exit()

	except ValueError:
		print('Input Error')
		again2=input(f'\nChoose with Yes/No if you want to closed the calculator after your little mistake: ').lower()
		if again2!='no':
			print('Calculator Closed!')
			break
