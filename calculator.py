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
print(f'!!!Pentru a iesi din aplicatie, va rugam sa apasati tasta Q/q!!!)\n')

print(f'Avem urmatoarele variante: ')
print(f'1. Adunare ')
print(f'2. Scadere ')
print(f'3. Inmultire ')
print(f'4. Impartire \n')

sun='Adunare'
sup='Scadere'
suc='Inmultire'
sud='Impartire'

while True:
	try:
		puf=input(f'Alegeti cifra carei operatiuni doriti sa efectuati: ')

		if puf.lower()=='q':
			print('La revedere')
			break

		puf=int(puf)

		if puf==1:
			print(f'Operatiunea selectata este: {sun}')
		elif puf==2:
			print(f'Operatia selectata este: {sup}')
		elif puf==3:
			print(f'Operatia selectata este: {suc}')
		elif puf==4:
			print(f'Operatia selectata este: {sud}')
		else:
			break
		a=input(f'Va rugam sa adaugati prima cifra: ')
		if a=='q':
			break
		a1=float(a)
		b=input(f'Va rugam sa adaugati a doua cifra: ')
		if b=='q':
			break
		b1=float(b)
		if puf==1:
			print(f'Rezultat: {adunare(a1,b1)}')
		elif puf==2:
			print(f'Rezultat: {scadere(a1,b1)}')
		elif puf==3:
			print(f'Rezultat: {inmultire(a1,b1)}')
		elif puf==4:
			print(f'Rezultat: {impartire(a1,b1)}')
		else:
			print('Eroare calcul')
		break
	except ValueError:
		print('!!!Introduceti doar numere!!!')
	break
