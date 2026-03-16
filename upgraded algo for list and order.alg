<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="upgrade algo for list and order" courant="//  minimum  "/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="min EST_DU_TYPE NOMBRE" code="1#NOMBRE#min"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="ref EST_DU_TYPE NOMBRE" code="1#NOMBRE#ref"/>
        <item algoitem="list_min EST_DU_TYPE LISTE" code="1#LISTE#list_min"/>
        <item algoitem="list_max EST_DU_TYPE LISTE" code="1#LISTE#list_max"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="l EST_DU_TYPE NOMBRE" code="1#NOMBRE#l"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;combien de donnee voullez vous entrer dans le tableau ?&quot;" code="4#combien de donnee voullez vous entrer dans le tableau ?#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="//insertion du contenu du tableau" code="19#insertion du contenu du tableau"/>
        <item algoitem="POUR i ALLANT_DE 0 A n - 1" code="12#i#0#n - 1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE tab[i]" code="2#tab#i"/>
            <item algoitem="somme PREND_LA_VALEUR somme + tab[i]" code="5#somme#somme + tab[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="// calcul somme " code="19# calcul somme "/>
        <item algoitem="AFFICHER &quot;la somme est : &quot;" code="4#la somme est : #0"/>
        <item algoitem="AFFICHER somme" code="3#somme#1#pasliste"/>
        <item algoitem="// calcul moyenne " code="19# calcul moyenne "/>
        <item algoitem="moyenne PREND_LA_VALEUR somme/n" code="5#moyenne#somme/n#pasliste"/>
        <item algoitem="AFFICHER &quot;la moyenne est : &quot;" code="4#la moyenne est : #0"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#1#pasliste"/>
        <item algoitem="//affichage du contenu du tableu" code="19#affichage du contenu du tableu"/>
        <item algoitem="AFFICHER &quot;le contenu du tableau : &quot;" code="4#le contenu du tableau : #0"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab[i]" code="3#tab#0#i"/>
            <item algoitem="AFFICHER &quot; / &quot;" code="4# / #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER tab[n-1]" code="3#tab#1#n-1"/>
        <item algoitem="//Recherche de max et min" code="19#Recherche de max et min"/>
        <item algoitem="// maximum" code="19# maximum"/>
        <item algoitem="max PREND_LA_VALEUR -999999999" code="5#max#-999999999#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (tab[i]>max) ALORS" code="6#tab[i]>max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR tab[i]" code="5#max#tab[i]#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;la valeur maximum est : &quot;" code="4#la valeur maximum est : #0"/>
        <item algoitem="AFFICHER max" code="3#max#1#pasliste"/>
        <item algoitem="//minimum" code="19#minimum"/>
        <item algoitem="min PREND_LA_VALEUR 999999999" code="5#min#999999999#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (tab[i]&lt;min) ALORS" code="6#tab[i]&lt;min">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="min PREND_LA_VALEUR tab[i]" code="5#min#tab[i]#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;la valeur minimum est : &quot;" code="4#la valeur minimum est : #0"/>
        <item algoitem="AFFICHER min" code="3#min#1#pasliste"/>
        <item algoitem="//rang de min est rang de max" code="19#rang de min est rang de max"/>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="k PREND_LA_VALEUR 0" code="5#k#0#pasliste"/>
        <item algoitem="l PREND_LA_VALEUR 0" code="5#l#0#pasliste"/>
        <item algoitem="TANT_QUE (i&lt;n) FAIRE" code="15#i&lt;n">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (tab[i]==min) ALORS" code="6#tab[i]==min">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="list_min[k] PREND_LA_VALEUR i" code="5#list_min#i#k"/>
                <item algoitem="k PREND_LA_VALEUR k+1" code="5#k#k+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="TANT_QUE (i&lt;n) FAIRE" code="15#i&lt;n">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (tab[i]==max) ALORS" code="6#tab[i]==max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="list_max[l] PREND_LA_VALEUR i" code="5#list_max#i#l"/>
                <item algoitem="l PREND_LA_VALEUR l+1" code="5#l#l+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="//  minimum  " code="19#  minimum  "/>
        <item algoitem="AFFICHER &quot;le(s) minimum se trouve a la case : &quot;" code="4#le(s) minimum se trouve a la case : #0"/>
        <item algoitem="POUR i ALLANT_DE 0 A k-1" code="12#i#0#k-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER list_min[i]" code="3#list_min#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//  maximum " code="19#  maximum "/>
        <item algoitem="AFFICHER &quot;le(s) maximum se trouve a la case : &quot;" code="4#le(s) maximum se trouve a la case : #0"/>
        <item algoitem="POUR i ALLANT_DE 0 A l-1" code="12#i#0#l-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER list_max[i]" code="3#list_max#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="// tri par ordre croissante" code="19# tri par ordre croissante"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR j ALLANT_DE i+1 A n-1" code="12#j#i+1#n-1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (tab[i] > tab[j]) ALORS" code="6#tab[i] > tab[j]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="ref PREND_LA_VALEUR tab[i]" code="5#ref#tab[i]#pasliste"/>
                    <item algoitem="tab[i] PREND_LA_VALEUR tab[j]" code="5#tab#tab[j]#i"/>
                    <item algoitem="tab[j] PREND_LA_VALEUR ref" code="5#tab#ref#j"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;tri par ordre coissante : &quot;" code="4#tri par ordre coissante : #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab[i]" code="3#tab#0#i"/>
            <item algoitem="AFFICHER &quot; / &quot;" code="4# / #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER tab[n-1]" code="3#tab#1#n-1"/>
        <item algoitem="//tri par ordre decroissante" code="19#tri par ordre decroissante"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR j ALLANT_DE i+1 A n-1" code="12#j#i+1#n-1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (tab[i]&lt;tab[j]) ALORS" code="6#tab[i]&lt;tab[j]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="ref PREND_LA_VALEUR tab[i]" code="5#ref#tab[i]#pasliste"/>
                    <item algoitem="tab[i] PREND_LA_VALEUR tab[j]" code="5#tab#tab[j]#i"/>
                    <item algoitem="tab[j] PREND_LA_VALEUR ref" code="5#tab#ref#j"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;tri par ordre decroissnte : &quot;" code="4#tri par ordre decroissnte : #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab[i]" code="3#tab#0#i"/>
            <item algoitem="AFFICHER &quot; / &quot;" code="4# / #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER tab[n-1]" code="3#tab#0#n-1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
