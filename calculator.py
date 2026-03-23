def adunare(a,b):
	return a+b
def scadere(a,b):
	return a-b
def inmultire(a,b):
	return a*b
def impartire(a,b):
	if b==0:
		return 'Eroare impartire la 0'
	return a/b

print(f'|-------------------------Calculator-------------------------|')
print(f' Press "Q/q" to exit the application!)\n')

print(f'We have the following options: ')
print(f'1. Addition ')
print(f'2. Subtraction ')
print(f'3. Multiplication ')
print(f'4. Division \n')

sun='Addition'
sup='Subtraction'
suc='Multiplication'
sud='Division'

while True:
	try:
		puf=input(f'Choose the number of the operation you want to perform: ')

		if puf.lower()=='q':
			print('Have a nice day!')
			break

		puf=int(puf)

		if puf==1:
			print(f'The selected operation is: {sun}')
		elif puf==2:
			print(f'The selected operation is: {sup}')
		elif puf==3:
			print(f'THe selected operation is: {suc}')
		elif puf==4:
			print(f'The selected operation is: {sud}')
		else:
			break
		a=input(f'Please choose your first number: ')
		if a=='q':
			break
		a1=float(a)
		b=input(f'Please choose your second number: ')
		if b=='q':
			break
		b1=float(b)
		if puf==1:
			print(f'Rezultat: {Addiction(a1,b1)}')
		elif puf==2:
			print(f'Rezultat: {Subtraction(a1,b1)}')
		elif puf==3:
			print(f'Rezultat: {Multiplication(a1,b1)}')
		elif puf==4:
			print(f'Rezultat: {Division(a1,b1)}')
		else:
			print('Error')
		break
	except ValueError:
		print('!!!Enter numbers only!!!')
	break
