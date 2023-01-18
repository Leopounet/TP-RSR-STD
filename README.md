# TP-RSR

Exécutables pour le TP de RSR du 17/01/23.

# I - Démo de GDB sur easy.32

## Exercice 1

En vous basant sur la démonstration précédente, trouvez le mot de passe du crackme 'easy_bis.32".

Pour ce faire, vous aurez peut être besoin des commandes suivantes :

```sh
b main      -> "breakpoint main"
r           -> "run l'exécutable"
ni          -> "instruction suivante"
layout asm  -> "affiche les instructions x86"
x /s <reg>  -> "affiche la valeur pointée par celle dans 'reg' sous forme de chaîne de caractères"
p /c <reg>  -> "affiche la valeur contenue dans 'reg' en ascii"
```

## Exercice 2

1.  Essayez de faire de même pour l'exécutable 'medium.32'.

# II - Binsec

## Exercice 3

Utilisez Binsec pour trouver les mots de passe des exécutable 'easy_bis.32' et 'medium.32'.

Vous aurez potentiellement des commandes suivantes :

**Lancer binsec sur un exécutable :**

```sh
binsec -isa x86 -sse -sse-load-ro-sections -sse-alternative-engine -sse-script <path/to/script> <path/to/exec>
```

Dans l'ordre les options représentent l'architecture (x86), l'activation de l'exécution symbolique, le chargement des valeurs des sections .text, .bss, ..., l'utilisation d'un moteur spécifique de Binsec, le script Binsec à utiliser et l'exécutable à analyser. Vous n'avez qu'à vous soucier des deux derniers paramètres.

**Script binsec :**

```txt
starting from <address>
reach <address> then print model

esp<32> := <valeur>

replace <address> by
    esp<32> := esp<32> + 4
    jump at @[esp<32> - 4, 4]

cut at <address>
```

## Exercice 4

1. Faites de même pour l'exécutable 'difficult.32'.
2. Vous avez peut être constaté que la résolution n'est pas aussi rapide que précédemment, testez différentes heuristiques (utilisez `binsec -sse-help` pour trouver comment faire).
3. Si vous êtes beaucoup en avance, vous pouvez essayez de trouver quelles contraintes doit respecter un mot de passe valide pour cet exécutable.

## Exercice 5

Binsec ne peut pas exécuter des fonctions de la libc (printf, puts, strnlen, ...). Cependant, ces fonctions sont parfois inévitables dans le code. Il faut alors les simuler.

Dans les faits, dans le script, le bloc `replace <address> by` permet d'écrire du code (pour l'instant nous avons juste vu le cas où le code que nous écrivons correspond à `ret`).

Dans l'exécutable 'replace.32', la fonction `strnlen` est appelée via la libc, Binsec ne va donc pas réussir à l'exécuter et donc aucune solution ne sera trouvée.

Remplacez l'exécution de cette fonction dans le script par un code équivalent. Pour ce faire, voici un exemple de boucle et d'exécution condition dans un script :

```
replace 0x1100 by
    res<32> := 0
    for i<32> in 0 to 100 do
        if i<32> ^ 0x10101 = 0 then
            res<32> := res<32> + i<32>
        else
            res<32> := res<32> + 1
        end
    end
```

Rappelez-vous qu'un bloc `replace by` doit toujours se terminer par un saut, et que le résultat d'une fonction est toujours stockée dans le registre `eax`.

## Exercice 6

Utilisez Binsec ou GDB au choix afin de trouver le message caché de l'exécutable 'impossible.32'.
