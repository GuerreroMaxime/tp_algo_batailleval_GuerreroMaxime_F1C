Program Boutaille_naval;						//nom du programme

Uses crt, math;									//bibliotheque utiliser

Const
		Max=11;	
		Maxbato=5;						

Type
	Cases = record
	abs, ord	:integer;					//permettra de creer les cases
end;

Type
	flotte = record
	 tabato: array[1..Maxbato] of integer;		//Pour l'ensemble des bateaux
end;

Procedure genplateau(abs,ord:integer);

	Var
		i, j :integer;

	Begin
			For i:=1 to max do
			Begin
					For j:=1 to max do				//decalera automatiquement, pour afficher bien
					If (i=1) and (j>1) then
        			Begin
					Write(j-1);					//Tout les if permettrons d'afficher les bord de 
        			End     						//tableau
        			else If (j=1) and (i>1) then
        			Begin
					Write(chr(63+i));
        			End
        			else If (j=1) and (i=1) then
        			Begin
        			write(' ');
        			end
        			Else
        			begin
        			write(' ');
        			end;
        		Writeln;
			End;
    Readln;
	End;


Procedure bateau(abs,ord:char);				//Pour placer les bateau

Var i, j, i2, j2, i3, j3, i4, j4, i5, j5		 :integer;
	compteur, bouclei, bouclej, sens			 :integer;

 Begin
 	compteur:=1;
 	GotoXY(1,15);
 		Repeat
 		Writeln('Entrer le bateau ', compteur,' entre 1 et 10');
  			If  (compteur=1)  then
  			Begin
 			Writeln('Le bateau actuelle est le porte avion (5 cases)');
  			Writeln('Entrer la case en X');
  			Readln(i);
  			Writeln('Entrer la case en Y');
  			Readln(j);


   			If (i>0) and (i<10) and (j>0) and (j<10) then
  				 Begin
   					 Repeat
   					 Writeln('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour horizontale)');
    			   	 Readln(sens);
    				 Until (sens=1) or (sens=2);
     		 If sens=1 then
     		 Begin
       			If i>5 then
       			Begin
     				Repeat 
      				Writeln('La valeur est tros grand pour les cases en X, entrer une nouvelle valeur');
     				Readln(i);
      				Until (i<6);
     				End;
      			i:=i+1;
      			j:=j+1;
      				for bouclei:=i to i+4 do
      				Begin
      				GotoXY(i,j);
       				Write('O');
        			i:=i+1;
        			End;
    			GotoXY(1,15);
    			End;
    				If sens=2 then
    				Begin
       				 If j>5 then
     					Repeat 
     					Writeln('La valeur est tros grand pour les cases en Y, entrer une nouvelle valeur');
     					Readln(j);
     					Until (j<6);
     				i:=i+1;
      				j:=j+1;
       				 for bouclej:=j to j+4 do
      					Begin
     				 	GotoXY(i,j);
       				 	Write('O');
       					j:=j+1;
       			 		End;
       			 compteur:=compteur+1;
     		End;
   		End;
  End;

	If (compteur=2) then
		Begin
		GotoXY(1,16);
		Writeln('Le bateau actuelle est le croiseur (4 cases)');
		Writeln('Entrer la case en X');
		Readln(i2);
		Writeln('Entrer la case en Y');
		Readln(j2);


			If (i2>0) and (i2<10) and (j2>0) and (j2<10) then
			Begin
				Repeat
				Writeln('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour horizontale');
				Readln(sens);
				Until (sens=1) or (sens=2);

				 If (sens=1) then
				  Begin
				  	If (i2>6) or (i2=i) then
				  	Begin
						Repeat 
						Writeln('La valeur est tros grand pour les cases en X, entrer une nouvelle valeur');
						Readln(i2);
						Until (i2<6);
					End;
				  i2:=i2+1;
				  j2:=j2+1;
				  	for bouclei:=i2 to i2+3 do

				 	Begin
				 	GotoXY(i2,j2);
				    Write('O');
				    i2:=i2+1;
				    End;
				GotoXY(1,15);
				End;

 				If (sens=2) then
				 Begin
				  	If (j2>6) or (j2=j) then
					Repeat 
					Writeln('La valeur est tros grand pour les cases en Y, entrer une nouvelle valeur');
					Readln(j2);
					Until (j2<6);
				  i2:=i2+1;
				  j2:=j2+1;
				  	for bouclej:=j2 to j2+3 do
				 	Begin
				 	GotoXY(i2,j2);
				    Write('O');
				    j2:=j2+1;
				    End;
				    compteur:=compteur+1;
				 End;
			End;
		End;


	If (compteur=3) then
		Begin
		GotoXY(1,16);
		Writeln('Le bateau actuelle est le contre-torpilleur (3 cases)');
		Writeln('Entrer la case en X');
		Readln(i3);
		Writeln('Entrer la case en Y');
		Readln(j3);


			If (i3>0) and (i3<10) and (j3>0) and (j3<10) then
			Begin
				Repeat
				Writeln('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour horizontale');
				Readln(sens);
				Until (sens=1) or (sens=2);

				 If (sens=1) then
				  Begin
				  	If (i3>6) or (i3=i) or (i3=i2) then
				  	Begin
						Repeat 
						Writeln('La valeur est tros grand pour les cases en X, entrer une nouvelle valeur');
						Readln(i3);
						Until (i3<6);
					End;
				  i3:=i3+1;
				  j3:=j3+1;
				  	for bouclei:=i3 to i3+3 do

				 	Begin
				 	GotoXY(i3,j3);
				    Write('O');
				    i3:=i3+1;
				    End;
				GotoXY(1,15);
				End;

 				If (sens=2) then
				 Begin
				  	If (j3>6)  or (j3=j) or (j3=j2)  then
					Repeat 
					Writeln('La valeur est tros grand pour les cases en Y, entrer une nouvelle valeur');
					Readln(j3);
					Until (j3<6);
				  i3:=i3+1;
				  j3:=j3+1;
				  	for bouclej:=j3 to j3+3 do
				 	Begin
				 	GotoXY(i3,j3);
				    Write('O');
				    j3:=j3+1;
				    End;
				    compteur:=compteur+1;
				 end;
			end;
		End;


	If (compteur=4) then
		Begin
		GotoXY(1,16);
		Writeln('Le bateau actuelle est le contre-torpilleur (3 cases)');
		Writeln('Entrer la case en X');
		Readln(i4);
		Writeln('Entrer la case en Y');
		Readln(j4);


			If (i4>0) and (i4<10) and (j4>0) and (j4<10) then
			Begin
				Repeat
				Writeln('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour horizontale');
				Readln(sens);
				Until (sens=1) or (sens=2);

				 If (sens=1) then
				  Begin
				  	If (i4>6) or (i4=i) or (i4=i2) or (i4=i3) then
				  	Begin
						Repeat 
						Writeln('La valeur est tros grand pour les cases en X, entrer une nouvelle valeur');
						Readln(i4);
						Until (i4<6);
					End;
				  i4:=i4+1;
				  j4:=j4+1;
				  	for bouclei:=i4 to i4+3 do

				 	Begin
				 	GotoXY(i4,j4);
				    Write('O');
				    i4:=i4+1;
				    End;
				GotoXY(1,15);
				End;

 				If (sens=2) then
				 Begin
				  	If (j4>6) or (j4=j) or (j4=j2) or (i4=j3) then
					Repeat 
					Writeln('La valeur est tros grand pour les cases en Y, entrer une nouvelle valeur');
					Readln(j4);
					Until (j4<6);
				  i4:=i4+1;
				  j4:=j4+1;
				  	for bouclej:=j4 to j4+3 do
				 	Begin
				 	GotoXY(i4,j4);
				    Write('O');
				    j4:=j4+1;
				    End;
				    compteur:=compteur+1;
				 End;
			End;
		End;


	If (compteur=5) then
		Begin
		GotoXY(1,16);
		Writeln('Le bateau actuelle est le contre-torpilleur (3 cases)');
		Writeln('Entrer la case en X');
		Readln(i5);
		Writeln('Entrer la case en Y');
		Readln(j5);


			If (i5>0) and (i5<10) and (j5>0) and (j5<10) then
			Begin
				Repeat
				Writeln('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour horizontale');
				Readln(sens);
				Until (sens=1) or (sens=2);

				 If (sens=1) then
				  Begin
				  	If (i5>7) or (i5=i) or (i5=i2) or (i5=i3) or (i5=i4) then
				  	Begin
						Repeat 
						Writeln('La valeur est tros grand pour les cases en X, entrer une nouvelle valeur');
						Readln(i5);
						Until (i5<7);
					End;
				  i5:=i5+1;
				  j5:=j5+1;
				  	for bouclei:=i5 to i5+2 do

				 	Begin
				 	GotoXY(i5,j5);
				    Write('O');
				    i5:=i5+1;
				    End;
				GotoXY(1,15);
				End;

 				If (sens=2) then
				 Begin
				  	If (j5>7) or (j5=j) or (j5=j2) or (j5=j3) or (j5=j4) then
					Repeat 
					Writeln('La valeur est tros grand pour les cases en Y, entrer une nouvelle valeur');
					Readln(j5);
					Until (j5<7);
				  i5:=i5+1;
				  j5:=j5+1;
				  	for bouclej:=j5 to j5+2 do
				 	Begin
				 	GotoXY(i5,j5);
				    Write('O');
				    j5:=j5+1;
				    End;
				    compteur:=compteur+1;
				 End;
			End;
		End;

	Until (compteur=5);

End;



Var
        abs, ord    :integer;
        abs1, ord1	:char;

Begin
clrscr;
genplateau(abs,ord);
bateau(abs1,ord1);
Readln;	
End.

{Programe: Boutaille_naval;						
But: Faire une partie de bataille

Constante
		Max<-11;	
		Maxbatow-<-5;						

Type
	Cases = enrengistrment
	abs, ord	=entier;					
Fin;

Type
	flotte = enrengistrement
	 tabato= tableau[1..Maxbato] de entier;		
end;

Procedure genplateau(abs,ord:entier);

	Var
		i, j :entier;

	Begin
			Pour i:=1 a max faire
			Debut
					Pour j:=1 a max faire			
					Si (i=1) et (j>1) faire
        			Debut
					Ecrire(j-1);					 
        			Finsi    						
        			Sinon si (j=1) et (i>1) faire
        			Debut
					Ecrire(chr(63+i));
        			Fin
        			Sinon si (j=1) et (i=1) faire
        			Debut
        			Ecrire(' ');
        			Finsi
        			Sinon
        			Debut
        			Ecrire(' ');
        			Finsi;
			Finsi;
	Finsi;


Procedure bateau(abs,ord:char);				

Variable i, j, i2, j2, i3, j3, i4, j4, i5, j5		 :entier;
		 compteur, bouclei, bouclej, sens			 :entier;

 Debut
 	compteur<-1;
 	GoàXY(1,15);
 		repeter
 		ecrire('Entrer le bateau ', compteur,' entre 1 et 10');
  			Si  (compteur=1)  faire
  			debut
 			ecrire('Le bateau actuelle est le poute avion (5 cases)');
  			ecrire('Entrer la case en X');
  			Lire(i);
  			ecrire('Entrer la case en Y');
  			Lire(j);


   			Si (i>0) et (i<10) et (j>0) et (j<10) faire
  				 debut
   					 repeter
   					 ecrire('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour houizontale)');
    			   	 Lire(sens);
    				 Jusqu'a (sens=1) ou (sens=2);
     		 Si sens=1 faire
     		 debut
       			Si i>5 faire
       			debut
     				repeter 
      				ecrire('La valeur est tros gret pour les cases en X, entrer une nouvelle valeur');
     				Lire(i);
      				Jusqu'a (i<6);
     				fin;
      			i:=i+1;
      			j:=j+1;
      				pour bouclei:=i à i+4 faire
      				debut
      				GoàXY(i,j);
       				ecrire('O');
        			i:=i+1;
        			fin;
    			GoàXY(1,15);
    			fin;
    				Si sens=2 faire
    				debut
       				 Si j>5 faire
     					repeter 
     					ecrire('La valeur est tros gret pour les cases en Y, entrer une nouvelle valeur');
     					Lire(j);
     					Jusqu'a (j<6);
     				i:=i+1;
      				j:=j+1;
       				 pour bouclej:=j à j+4 faire
      					debut
     				 	GoàXY(i,j);
       				 	ecrire('O');
       					j:=j+1;
       			 		fin;
       			 compteur:=compteur+1;
     		fin;
   		fin;
  fin;

	Si (compteur=2) faire
		debut
		GoàXY(1,16);
		ecrire('Le bateau actuelle est le croiseur (4 cases)');
		ecrire('Entrer la case en X');
		Lire(i2);
		ecrire('Entrer la case en Y');
		Lire(j2);


			Si (i2>0) et (i2<10) et (j2>0) et (j2<10) faire
			debut
				repeter
				ecrire('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour houizontale');
				Lire(sens);
				Jusqu'a (sens=1) ou (sens=2);

				 Si (sens=1) faire
				  debut
				  	Si (i2>6) ou (i2=i) faire
				  	debut
						repeter 
						ecrire('La valeur est tros gret pour les cases en X, entrer une nouvelle valeur');
						Lire(i2);
						Jusqu'a (i2<6);
					fin;
				  i2:=i2+1;
				  j2:=j2+1;
				  	pour bouclei:=i2 à i2+3 faire

				 	debut
				 	GoàXY(i2,j2);
				    ecrire('O');
				    i2:=i2+1;
				    fin;
				GoàXY(1,15);
				fin;

 				Si (sens=2) faire
				 debut
				  	Si (j2>6) ou (j2=j) faire
					repeter 
					ecrire('La valeur est tros gret pour les cases en Y, entrer une nouvelle valeur');
					Lire(j2);
					Jusqu'a (j2<6);
				  i2:=i2+1;
				  j2:=j2+1;
				  	pour bouclej:=j2 à j2+3 faire
				 	debut
				 	GoàXY(i2,j2);
				    ecrire('O');
				    j2:=j2+1;
				    fin;
				    compteur:=compteur+1;
				 fin;
			fin;
		fin;


	Si (compteur=3) faire
		debut
		GoàXY(1,16);
		ecrire('Le bateau actuelle est le contre-àrpilleur (3 cases)');
		ecrire('Entrer la case en X');
		Lire(i3);
		ecrire('Entrer la case en Y');
		Lire(j3);


			Si (i3>0) et (i3<10) et (j3>0) et (j3<10) faire
			debut
				repeter
				ecrire('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour houizontale');
				Lire(sens);
				Jusqu'a (sens=1) ou (sens=2);

				 Si (sens=1) faire
				  debut
				  	Si (i3>6) ou (i3=i) ou (i3=i2) faire
				  	debut
						repeter 
						ecrire('La valeur est tros gret pour les cases en X, entrer une nouvelle valeur');
						Lire(i3);
						Jusqu'a (i3<6);
					fin;
				  i3:=i3+1;
				  j3:=j3+1;
				  	pour bouclei:=i3 à i3+3 faire

				 	debut
				 	GoàXY(i3,j3);
				    ecrire('O');
				    i3:=i3+1;
				    fin;
				GoàXY(1,15);
				fin;

 				Si (sens=2) faire
				 debut
				  	Si (j3>6)  ou (j3=j) ou (j3=j2)  faire
					repeter 
					ecrire('La valeur est tros gret pour les cases en Y, entrer une nouvelle valeur');
					Lire(j3);
					Jusqu'a (j3<6);
				  i3:=i3+1;
				  j3:=j3+1;
				  	pour bouclej:=j3 à j3+3 faire
				 	debut
				 	GoàXY(i3,j3);
				    ecrire('O');
				    j3:=j3+1;
				    fin;
				    compteur:=compteur+1;
				 fin;
			fin;
		fin;


	Si (compteur=4) faire
		debut
		GoàXY(1,16);
		ecrire('Le bateau actuelle est le contre-àrpilleur (3 cases)');
		ecrire('Entrer la case en X');
		Lire(i4);
		ecrire('Entrer la case en Y');
		Lire(j4);


			Si (i4>0) et (i4<10) et (j4>0) et (j4<10) faire
			debut
				repeter
				ecrire('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour houizontale');
				Lire(sens);
				Jusqu'a (sens=1) ou (sens=2);

				 Si (sens=1) faire
				  debut
				  	Si (i4>6) ou (i4=i) ou (i4=i2) ou (i4=i3) faire
				  	debut
						repeter 
						ecrire('La valeur est tros gret pour les cases en X, entrer une nouvelle valeur');
						Lire(i4);
						Jusqu'a (i4<6);
					fin;
				  i4:=i4+1;
				  j4:=j4+1;
				  	pour bouclei:=i4 à i4+3 faire

				 	debut
				 	GoàXY(i4,j4);
				    ecrire('O');
				    i4:=i4+1;
				    fin;
				GoàXY(1,15);
				fin;

 				Si (sens=2) faire
				 debut
				  	Si (j4>6) ou (j4=j) ou (j4=j2) ou (i4=j3) faire
					repeter 
					ecrire('La valeur est tros gret pour les cases en Y, entrer une nouvelle valeur');
					Lire(j4);
					Jusqu'a (j4<6);
				  i4:=i4+1;
				  j4:=j4+1;
				  	pour bouclej:=j4 à j4+3 faire
				 	debut
				 	GoàXY(i4,j4);
				    ecrire('O');
				    j4:=j4+1;
				    fin;
				    compteur:=compteur+1;
				 fin;
			fin;
		fin;


	Si (compteur=5) faire
		debut
		GoàXY(1,16);
		ecrire('Le bateau actuelle est le contre-àrpilleur (3 cases)');
		ecrire('Entrer la case en X');
		Lire(i5);
		ecrire('Entrer la case en Y');
		Lire(j5);


			Si (i5>0) et (i5<10) et (j5>0) et (j5<10) faire
			debut
				repeter
				ecrire('Choisisser votre sens de placement du bateau (1 pour vertical, 2 pour houizontale');
				Lire(sens);
				Jusqu'a (sens=1) ou (sens=2);

				 Si (sens=1) faire
				  debut
				  	Si (i5>7) ou (i5=i) ou (i5=i2) ou (i5=i3) ou (i5=i4) faire
				  	debut
						repeter 
						ecrire('La valeur est tros gret pour les cases en X, entrer une nouvelle valeur');
						Lire(i5);
						Jusqu'a (i5<7);
					fin;
				  i5:=i5+1;
				  j5:=j5+1;
				  	pour bouclei:=i5 à i5+2 faire

				 	debut
				 	GoàXY(i5,j5);
				    ecrire('O');
				    i5:=i5+1;
				    fin;
				GoàXY(1,15);
				fin;

 				Si (sens=2) faire
				 debut
				  	Si (j5>7) ou (j5=j) ou (j5=j2) ou (j5=j3) ou (j5=j4) faire
					repeter 
					ecrire('La valeur est tros gret pour les cases en Y, entrer une nouvelle valeur');
					Lire(j5);
					Jusqu'a (j5<7);
				  i5:=i5+1;
				  j5:=j5+1;
				  	pour bouclej:=j5 à j5+2 faire
				 	debut
				 	GoàXY(i5,j5);
				    ecrire('O');
				    j5:=j5+1;
				    fin;
				    compteur:=compteur+1;
				 fin;
			fin;
		fin;

	Jusqu'a (compteur=5);

fin;



Var
        abs, oud    :integer;
        abs1, oud1	:char;

debut
clrscr;
genplateau(abs,oud);
bateau(abs1,oud1);
Lire;	
fin.

