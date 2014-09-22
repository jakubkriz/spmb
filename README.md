Seznamovací podnik města Brna
=============================

Láska prochází šalinóóó
-----------------------

Američtí vědci zjistili, že:

```
l = 1/p
kde:

  l - láska
  p - počet přestupú z bodu A a B do bodu C
```

Naše jedinečná služba Vám řekne, jestli se k sobe hodíte (kam se
hrabou pražské seznamovací vagóny).

Usage
-----

```
./spmb.rb X Y

# kde X a Y jsou linky které mají zastávku u bydlište našich klientů
# Vrací ANO nebo NE, podle toho, jestli mají tyto linky společnou
# zastávku (místo zaslíbené C)
```

Notes:
------

Data jsou stažené z http://www.jrbrno.cz

Úkoly:
------

V repozitáři je kód ve stavu, v jakém jsme ho měli na konci cvičení.
Několik námětů k domácímu cvičení, které vám múže pomoct k lepšímu
osvojení si základú Ruby:

1. současná implementace vrací následné hodnoty

  |   | 1 | 2 | 36 |
  |---|---|---|----|
  | 1 |ANO|ANO| NE |
  | 2 |ANO|ANO| NE |
  |36 |NE |NE |ANO |

  Správně by ale pravivostní tabulka měla vypadat takto (1 a 36 mají
  společnou zastávku "Svratecká"):

  |   | 1 | 2 | 36 |
  |---|---|---|----|
  | 1 |ANO|ANO|ANO |
  | 2 |ANO|ANO| NE |
  |36 |ANO|NE |ANO |

  Upravte kód taky, aby byl správne pokrytý tenhle případ.

2. Jak naznačuje
   [tahle odpověď](http://stackoverflow.com/questions/1732348/regex-match-open-tags-except-xhtml-self-contained-tags/1732454#1732454)
   na StackOverflow, používání regulárních výrazú nad HTML není to
   pravé. Přepište kód tak, aby místo regulárních výrazů používal
   nejakou technologii kolem XML/HTML, jako XPath nebo CSS selektory.
   Doporučuji knihovnu [Nokogiri](http://nokogiri.org/). Přímo v
   std-lib je dostupná knohovne
   [REXML](http://www.germane-software.com/software/rexml), ale
   Nokogiri má většinou lepší výsledky a je použitelnější.

3. Upravte kód tak, aby byli soubory načítané z internetu, a ne
   lokálního úložiště.

4. Která linka je z pohledu naší seznamovací agentury nejvýhodnejší?
