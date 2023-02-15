<TeXmacs|2.1.2>

<style|<tuple|tmbook|german|doc>>

<\body>
  \;

  <doc-data|<doc-title|Logik für Lehramt Mathematik>|<doc-author|<author-data|<author-name|Zoltán
  Kovács>|<\author-affiliation>
    PHDL
  </author-affiliation>>>>

  <chapter|Vorwort>

  Es gehört eine Menge Mut dazu, ein Buch über \RLogik\P zu schreiben, vor
  allem, wenn man kein Spezialist auf diesem Gebiet ist. Aber das ist die
  eigentliche Herausforderung, und dem Leser gebührt besondere Anerkennung
  dafür, dass er sich ohne Widerwillen auf dieses mutige Experiment
  eingelassen hat.

  Logiklehrbücher gibt es in vielen Varianten, einige davon sind sehr gut. Um
  ehrlich zu sein, habe ich persönlich jedoch kein
  <with|font-shape|italic|aktuelles> Werk für zukünftige
  <with|font-shape|italic|Mathematiklehrer> gefunden. Für mich bedeuten diese
  beiden Kriterien, dass das Buch so lesbar sein sollte, dass der Leser Lust
  hat, es mit modernen Methoden weiterzugeben.

  Falls es jemand nicht weiÿ: Der Beruf des Logikers ist, das muss ich im
  Voraus zugeben, eine äuÿerst trockene, mechanische Angelegenheit. Es ist
  anstrengend, weil man viele Fälle genau durchdenken muss. Die moderne Logik
  ist auch deshalb so mechanisch, weil ein guter Logiker alles mit dem
  Computer macht: <with|font-shape|italic|Fragen> werden mit Hilfe von
  Computeraufgaben gestellt, <with|font-shape|italic|Vermutungen> werden mit
  Hilfe des Computers aufgestellt, Computerprogramme werden zur
  <with|font-shape|italic|Überprüfung> geschrieben, und sogar
  <with|font-shape|italic|Beweise> werden manchmal mit Hilfe des Computers
  erbracht. Was bleibt hier bitte etwas menschliches? Nicht viel.

  Deshalb wird in diesem Buch irgendwie versucht, weniger Zeit einzuplanen.
  Anstelle einer ausführlichen, akribischen Einführung beschränken wir uns
  auf das Wesentliche. Und was Sie in der Zwischenzeit brauchen werden,
  werden wir nach und nach erfahren. Ich werde versuchen, einige konkrete,
  detaillierte Beispiele zu geben, um wichtige Zusammenhänge zu
  veranschaulichen, anstatt tiefgründige Theorie zu präsentieren. Im Groÿen
  und Ganzen versuche ich, einen relativ kurzen roten Faden zu weben, und
  zwar in Bezug auf die Frage, was Logik für <with|font-shape|italic|mich>
  bedeutet, was ich als ihren Nutzen betrachte, oder genauer gesagt, was ich
  als ihren <with|font-shape|italic|Zweck> ansehe.

  Ich erwarte nicht, dass mein Buch auf groÿe Resonanz stöÿt. Sicherlich ist
  es nicht nach dem Geschmack eines Jeden, aber vielleicht nach dem meiner
  Studenten. Ich kann nicht versprechen, dass ein Praktiker auf den folgenden
  Seiten viel Neues finden wird, denn im Grunde ist alles, was ich
  beschreibe, bekannt, nur vielleicht nicht in dieser Form oder Aufmachung.
  In jedem Fall freue ich mich über Verbesserungsvorschläge und verspreche,
  sie in künftigen Versionen des Buches zu berücksichtigen.

  Danksagungen: finden Sie am Ende des Buches! Deshalb sollten wir nicht
  zögern, mit dem Lesen zu beginnen, damit wir rechtzeitig zum Ende kommen.
  Fangen wir gleich damit an!

  <\padded-right-aligned>
    Der Autor, September 2022, Jänner 2023
  </padded-right-aligned>

  <chapter|Was bedeutet \RLogik\P?>

  Wie im Vorwort erläutert, ist \RLogik\P ein allgemeines
  <with|font-shape|italic|Problemlösungswissen>. Das Lösen von Problemen ist
  so alt wie die Menschheit. Einerseits kommen wir vor allem im Rahmen
  praktischer Aufgabenstellungen (Entwurf, Konstruktion) zu rechnerischen
  Problemen. Andererseits müssen wir bei unserer neugierigen Erkundung der
  Welt auch Elemente des logischen Denkens anwenden. Drittens, und vielleicht
  am wenigsten offensichtlich, schafft der Mensch selbst Rätsel, deren Lösung
  ihm Spaÿ macht. Im Folgenden werden wir \U vielleicht überraschend \U einen
  besonderen Schwerpunkt auf Rätsel legen.

  Unterschätzen Sie Logikrätsel nicht! Das Training durch Rätsel ist ein
  gutes Training und macht überraschend viel Spaÿ. Das Lösen von Rätseln kann
  Sie von den Herausforderungen des Alltags ablenken, aber die erlernten
  Techniken werden Ihnen helfen, sowohl etwas über die Welt zu lernen als
  auch rechnerische Probleme zu lösen.

  Bevor sich jemand einmischt: Diese Idee stammt nicht von mir, sondern \U
  zumindest soweit ich weiÿ \U von Raymond M.<abbr|> Smullyan. Sein bekanntes
  Werk <cite|RS-DT> macht keinen Hehl daraus, dass der weit verbreiteten
  \RMathe-Angst\P durch gute Rätselbücher begegnet werden kann:

  <\quotation>
    Ich habe mich manchmal gefragt, was passiert wäre, wenn Euklid seine
    klassichen \RElemente\P in einer solchen Form geschrieben hätte. Anstatt
    nach Art eines Lehrsatzes festzustellen, dass die Basiswinkel eines
    gleichschenkligen Dreiecks gleich sind, um alsdann den Beweis dafür
    anzutreten, könnte er etwa geschrieben haben:
    \R<with|font-shape|italic|Aufgabe><with|font-shape|italic|:> Gegeben ist
    ein Dreieck mit zwei gleichen Seiten. Sind zwei Winkel notwendigerweise
    gleich? Warum bzw.<abbr|> warum nicht? (Auflösung siehe Seite
    soundsoviel)\P und in ähnlicher Weise alle übrigen Lehrsätze abhandeln.
    Ein solches Buch hätte sehr gut eines der bekanntesten Knobelbücher der
    Geschichte werden können.
  </quotation>

  In der heutigen schnelllebigen Zeit, so höre ich von den Lesern immer
  wieder, bleibt keine Zeit für eine solche Aufarbeitung des Lehrplans! Das
  kann man immer sagen, und man kann immer auf die obligatorische Vermittlung
  groÿer Stoffmengen, auf die Anforderungen der Schulabschlussprüfungen
  verweisen. Ich denke aber ganz anders! Wenn wir nicht in der Lage sind, die
  Freude an der Mathematik an unsere Schüler weiterzugeben, sollten wir
  besser sofort aufhören, was wir tun, und etwas anderes mit unserem Leben
  anfangen. Ich gehe aber davon aus, dass der Leser zumindest
  <with|font-shape|italic|versuchen> wird, Mathematik anders zu unterrichten,
  als es der Zeitgeist suggeriert und tut, und deshalb \U hören Sie auch mir
  ein wenig zu \U lieber in die Rolle des
  <with|font-shape|italic|geheimnisvollen Zauberers> schlüpfen wird als in
  die des <with|font-shape|italic|peitschenknallenden Griesgrams>.

  Letztendlich werden wir dasselbe tun wie andere Lehrbücher: Probleme lösen,
  aber auf eine andere Art und Weise. Bei der Lösung der Probleme kommt es
  nicht so sehr auf das Ergebnis an, sondern auf den Weg dorthin. Eine
  ehemalige Schülerin von mir (inzwischen erwachsen und mit Kindern) war sehr
  schlecht in Mathe, also schrieb sie als Motto auf den Umschlag ihres
  Schulheftes: \RWarum wollen wir immer Probleme lösen? Können wir sie nicht
  ein wenig früher genieÿen?\P Erst Jahre später verstand ich, dass sie Recht
  hatte: Wenn man keinen Spaÿ am Problem selbst hat, wird man auch keinen
  Spaÿ daran haben, es zu lösen.

  Aber was bedeutet dieses \RVergnügen\P? Wir werden das Problem untersuchen,
  bevor wir es beantworten. Es ist so, wie wenn wir das Essen vom
  Sonntagstisch nicht in einer Sekunde verschlingen wollen, sondern uns erst
  darüber freuen, beim Essen reden und dann langsam und mit Genuss essen.
  Problemlösung ist eine Kunst! Wir wollen den Prozess nicht beschleunigen,
  weil wir dann vielleicht schlecht schlucken oder wegen Verdauungsproblemen
  mit Bauchschmerzen ins Bett gehen.

  <section|Welche Themen werden vorkommen?>

  Ich beabsichtige, Smullyans Rezept für den Kurs zu befolgen, sowohl
  methodisch als auch thematisch. Dementsprechend werden wir mit einigen
  Logikrätseln beginnen, die gröÿtenteils von ihm und zu einem geringeren
  Teil aus anderen Quellen stammen. Ich versuche, diese Quellen anzugeben,
  obwohl dies auch bedeutet, dass der Leser die Lösungen leicht durch eine
  Suche in Bibliotheken oder oft auch durch eine gezielte Internetsuche
  finden kann. Das kann ich natürlich nicht vermeiden, aber ich möchte den
  Leser warnen: Wenn Sie zu wenig Zeit damit verbringen, sich an dem Problem
  zu erfreuen, werden Sie auch keine Freude an der Lösung haben. Auch wenn
  Sie über die nötige Literatur verfügen, sollten Sie nur dann nach einer
  Lösung suchen, wenn Sie wirklich keine Ideen aus Ihrem eigenen geistigen
  Brunnen schöpfen können! Und selbst wenn Sie schon dabei sind, lesen Sie am
  besten nur ein paar Ideen und nicht die ganze Lösung.

  Manchmal hat man \Rzufällig\P die komplette Lösung<text-dots> ich habe sie
  gelesen, ich habe sie gesehen, ich habe sie verstanden. Angekreuzt. In
  diesem Fall würde ich den Leser ermutigen, eine zweite Lösung zu finden,
  die ganz aus seinem eigenen Brunnen kommt. Oder versuchen Sie, die
  \Roffizielle\P Lösung, auf die Sie gestoÿen sind, zu vereinfachen, fügen
  Sie der Lösung etwas Eigenes hinzu, sei es eine eigene Skizze, eine bunte
  Zeichnung, oder eine persönliche Erklärung \Rfür die Mama\P.

  Wir beginnen also mit beliebten Rätseln, von denen einige bekannt sind,
  andere nicht. Generell gilt: Wenn Sie ein Rätsel kennen, verraten Sie den
  anderen nicht die Lösung! Das ist unsportlich und hilft der anderen Person
  nicht. Versuchen Sie in solchen Fällen, das Rätsel zu verallgemeinern oder
  abzuändern und überraschen Sie den Autor oder die KollegInnen!

  Es ist kein Geheimnis, dass hinter Rätseln ein strenger Formalismus stehen
  kann. Dies wird unseren Kurs modern machen. Die groÿe Errungenschaft der
  Mathematik des 20.<strong|> Jahrhunderts besteht darin, dass alles
  formalisiert werden kann, und so wird die Mathematik zu einer universellen
  Wissenschaft, die über Sprachen und Nationen hinausgeht. Denn alle
  mathematischen Begriffe und Aussagen lassen sich formal ausdrücken, und für
  beweisbare Aussagen können -- vielleicht -- Herleitungen gegeben werden.
  Wenn das so ist, dann kann die menschliche Subjektivität ausgeschaltet
  werden, und die Frage lautet nicht mehr: \Rdenkst du oder denke ich, dass
  es so ist?\P, sondern: \Rist es wahr oder nicht?\P.

  Wenn sich zwei Menschen darüber streiten, wer Recht hat, kann man -- nach
  dem heutigen Stand der Wissenschaft -- eine Maschine einschalten, die mit
  den grundlegenden Wahrheiten programmiert wird, über die sich beide
  Menschen einig sind, und dann entscheidet die Maschine anhand strenger
  Inferenzregeln, welche Antwort auf das betreffende Problem die richtige
  ist. In der heutigen Welt, in der Fake News über den Ausgang von Wahlen
  oder Kriegen entscheiden können, lautet die dramatische Frage: \RWas ist
  die Wahrheit?\P

  Ich will den Leser nicht täuschen: Auch Computer haben endliche
  Fähigkeiten. Dafür gibt es sowohl theoretische als auch technische Gründe.
  Darüber werden wir im Kurs sprechen. Die endgültige Antwort auf die
  schwierigsten Fragen des Lebens wird nicht von Computern entschieden,
  sondern vom menschlichen Herzen, das, auch wenn dies noch umstritten ist,
  mit freiem Willen entscheidet. Es war schon immer eine Herausforderung für
  die gröÿten Logiker, logische Systeme zu entwickeln, die sich mit den
  grundlegendsten Fragen wie dem Sinn des menschlichen Lebens, der Existenz
  und der Natur Gottes befassen und darin funktionieren können. Am Ende
  dieses Kurses werden wir versuchen, diese Methoden und die damit
  verbundenen Fragen zu behandeln und, wenn möglich, moderne Antworten auf
  alle Fragen zu geben.

  <section|Um welchen mathematischen Inhalt wird es gehen?>

  Gute Frage! Obwohl wir über Logik sprechen werden, müssen wir manchmal auch
  über Geometrie oder Analysis sprechen.

  Wir beginnen mit Aussagenlogik, dann mit Prädikatenlogik und den
  Anwendungen all dieser Begriffe. In der Aussagenlogik werden wir einfachere
  Rätsel diskutieren, während wir in der Prädikatenlogik eher über
  geometrische oder analytische Anwendungen sprechen werden.

  Sie werden mit einer Reihe von Software vertraut gemacht. Einige davon
  können auf einem Mobiltelefon installiert werden, während andere nur auf
  einem Desktop oder Laptop verfügbar sind. Damit können Sie Ihre
  \RBerechnungen\P überprüfen und manchmal automatisch eine Lösung erhalten.

  Wenn Sie mit der höheren Mathematik vertraut sind, sollten Sie wissen, dass
  der Kurs einige Schritte in Richtung <with|font-shape|italic|algebraische
  Geometrie> macht. Darüber hinaus wird es einige
  <with|font-shape|italic|abstrakte algebraische> Einführungen geben, die vor
  allem die Grundlagen für das letzte Thema (Gödels Vollständigkeitssatz)
  legen werden.

  \;

  <section|Benötige ich für die Teilnahme an dem Kurs irgendwelche
  Vorkenntnisse?>

  Auf diese Frage habe ich gewartet! Ja, natürlich, obwohl ich nicht davon
  ausgehe, dass sich das Publikum an alle Vorkenntnisse erinnern wird. Denn
  jeder hat ja seine eigenen Interessen und Lieblingsthemen. Ich gehe von
  Folgendem aus:

  <\enumerate-numeric>
    <item>Jeder hat den Kurs über <with|font-shape|italic|Diskrete
    Mathematik> belegt, insbesondere die Teile über Aussagenlogik und
    Prädikatenlogik. Diese werden in gewissem Umfang wieder aufgegriffen
    werden.

    <item>Wir werden auf einige der Verbindungen aus der
    <with|font-shape|italic|Linearen Algebra und Geometrie I-II> aufbauen.
    Dazu gehören das Schreiben von algebraischen Gleichungen für Geraden und
    Kreise sowie einige Determinantenberechnungen. Wir werden uns auch auf
    bestimmte Formeln beziehen, bevor wir sie routinemäÿig anwenden.

    <item>Aus dem Kurs <with|font-shape|italic|Analysis I> werden wir die
    Konzepte der Konvergenz, des Grenzwerts und der Stetigkeit wieder
    aufgreifen und sogar vertiefen.

    <item>Es gibt einige grundlegende Konzepte in der Analysis, die in der
    Schule (meistens in der Oberstufe) eingeführt werden, aber vielleicht
    noch nicht vollständig ausgearbeitet wurden. Dazu gehören die Konzepte
    der Periodizität, der Symmetrie, der Parität und der Monotonie. Leider
    gibt es im Kurs Analysis I keine Möglichkeit, diese im Detail zu
    studieren, also werden wir die Idee aufgreifen und diese grundlegenden
    Konzepte mit einigen Übungsbeispielen erarbeiten.

    <item>In einem kurzen Abschnitt werden auch einige Kenntnisse aus der
    <with|font-shape|italic|Zahlentheorie> verlangt.
  </enumerate-numeric>

  <section|Aufgaben>

  <\enumerate-numeric>
    <item>Vorausgesetzt, Sie und ich besitzen dieselbe Summe Geldes. Wieviel
    muss ich Ihnen geben, damit Sie zehn Mark mehr haben als ich?
    (<cite|RS-DT>, 1.)

    <item>In einer nicht näher bestimmten politischen Versammlung
    debattierten 100 Politiker miteinander. Jeder von ihnen war entweder
    bestechlich oder unbestechlich. Folgende Tatsachen sind uns bekannt:

    <\enumerate-alpha>
      <item>Zumindest einer der Politiker war unbestechlich.

      <item>Von jeweils zwei Politikern war wenigstens einer bestechlich.
    </enumerate-alpha>

    Kann aus diesen zwei Tatsachen geschlossen werden, wie viele der
    Politiker bestechlich und wie viele unbestechlich waren? (<cite|RS-DT>,
    2.)

    <item>Eine Flasche Wein kostet 10 Euro. Der Wein selbst kostet 9 Euro
    mehr als die Flasche. Wie teuer ist die Flasche? (<cite|RS-DT>, 3.)

    <item>Das Erstaunliche an diesem Rätsel ist, dass die Leute hinsichtlich
    der Lösung immer in Meinungsverschiedenheit geraten. Ja, verschiedene
    Leute gehen die Aufgabe unterschiedlich an und kommen zu
    unterschiedlichen Ergebnissen. Und jeder besteht darauf, dass seine
    Antwort die richtige ist. Das Rätsel geht folgendermaÿen:

    <\quotation>
      Ein Händler kaufte eine Ware für 7 Euro, verkaufte sie für 8 Euro,
      kaufte sie für 9 Euro zurück und verkaufte sie wieder für 10 Euro.
      Wieviel hat er dabei verdient? (<cite|RS-DT>, 4.)
    </quotation>

    <item>Das Lehrreiche an diesem Rätsel ist, dass es, obwohl man es leicht
    durch Anwendung algebraischer Grundkenntnisse lösen kann, auch ohne
    jegliche Algebra, nur durch bloÿes Nachdenken \U mit Hilfe des gesunden
    Menschenverstandes also \U zu lösen ist. Auÿerdem ist die
    Common-sense-Lösung meiner Meinung nach weitaus interessanter und
    informativer \U und sicherlich auch kreativer \U als die algebraische
    Variante. Also:

    <\quotation>
      56 Kekse sollen an 10 Katzen und Hunde verfüttert werden. Jeder Hund
      bekommt 6 Kekse und jede Katze 5. Wie viele Hunde und wie viele Katzen
      gibt es? (<cite|RS-DT>, 5.)
    </quotation>

    <item>Drei Personen \U A, B und C \U waren allesamt perfekte Logiker.
    Jeder konnte sofort sämtliche Folgerungen aus jeder Menge von
    Voraussetzungen ableiten. Jeder war sich auch im Klaren, dass jeder der
    beiden anderen logisches Denken perfekt beherrschte. Man zeigte den
    Dreien 7 Marken: 2 <with|font-shape|italic|rote>, 2
    <with|font-shape|italic|gelbe> und 3 <with|font-shape|italic|grüne>. Dann
    band man ihnen die Augen zu und klebte jedem eine Marke auf die Stirn.
    Die restlichen Marken kamen in eine Schublade. Nachdem die Augenbinden
    abgenommen worden waren, fragte man A:

    \RKennen Sie eine Farbe, die Sie bestimmt nicht haben?\P \U \RNein\P,
    antwortete A. \U Dann stellte man B dieselbe Frage, und er sagte:
    \RNein.\P

    Ist es möglich, von diesen Informationen auf die Farbe der Marke zu
    schlieÿen, die A, B und C auf der Stirn trugen? (<cite|RS-DT>, 9.)
  </enumerate-numeric>

  <chapter|Aussagenlogik>

  In diesem Kapitel wird auf <cite|Pillichshammer2022> verwiesen,
  insbesondere auf die Abschnitte 2.1, 2.3 und 2.4. Wir nutzen dasselbe
  Notationssystem. Es ist wichtig zu beachten, dass das Notationssystem von
  <cite|Pillichshammer2022> nur ein mögliches System ist; es gibt mehrere
  ähnliche Systeme, die sich in kleineren oder gröÿeren formalen Details
  unterscheiden können. Der Inhalt dieser Systeme ist jedoch im Wesentlichen
  derselbe.

  <section|Eine Motivationsaufgabe<label|rah-fel>>

  Ein weiteres berühmtes Buch von Raymond M.<abbr|> Smullyan <cite|RS-WB> hat
  das mathematische Denken von Generationen beeinflusst. Wir beginnen mit
  einem Aufgabenpool, welcher höchstwahrscheinlich von Smullyan in der
  unterhaltungsmathematischen Literatur populär gemacht wurde:

  <\quotation>
    Es gibt eine groÿe Anzahl von Aufgaben, bei denen es um eine Insel geht,
    auf der bestimmte Einwohner als \RRitter\P bezeichnet werden, die immer
    die Wahrheit sagen, während die sogenannten \RSchurken\P immer lügen.
    Vorausgesetzt wird, dass jeder Bewohner der Insel entweder ein Ritter
    oder ein Schurke ist. Ich werde mit einer sehr bekannten Aufgabe dieser
    Art anfangen und ihr eine Anzahl eigener folgen lassen.

    Dieser altbekannten Aufgabe zufolge standen einmal drei der Inselbewohner
    \U A, B und C \U zusammen in einem Garten. Ein Fremder ging vorbei und
    fragte A: \RBist du ein Ritter oder ein Schurke?\P A antwortete, aber
    sehr undeutlich, so dass der Fremde nicht verstehen konnte, was er gesagt
    hatte. Dann fragte der Fremde B: \RWas hat A gesagt?\P B entgegnete: \RA
    hat gesagt, dass er ein Schurke ist.\P In dem Augenblick sagte C, der
    dritte Mann: \RDem B darfst du nicht glauben, er lügt!\P Die Frage ist:
    Was sind B und C? (<cite|RS-WB>, 25.)
  </quotation>

  Dieses Problem mit \Rgesundem Menschenverstand\P zu lösen, ist einfach.
  Obwohl in der Übung nicht gefragt wird, was Typ A ist, kann es sinnvoll
  sein, eine <with|font-shape|italic|Fallunterscheidung><index|Fallunterscheidung>
  vorzunehmen:

  <\enumerate-numeric>
    <item>Wenn A ein <with|font-shape|italic|Ritter> ist, wird er die ihm
    gestellte Frage mit der Wahrheit beantworten, d.<abbr|>h.<strong| >er
    wird sagen, dass er ein Ritter ist. In diesem Fall lügt B
    (d.<abbr|>h.<abbr| >ein Schurke) und C sagt die Wahrheit (d.h.<strong|
    >ein Ritter).

    <item>Wenn A ein <with|font-shape|italic|Schurke> ist, dann kann die
    obige Argumentation wieder angewandt werden, denn A wird niemals sagen,
    dass er ein <with|font-shape|italic|Schurke> ist. (Warum?) Also lügt B
    notwendigerweise (Schurke) und C sagt die Wahrheit (Ritter).
  </enumerate-numeric>

  Es zeigt sich, dass die Fallunterscheidung nicht unbedingt der schnellste
  Weg ist, ein Problem zu lösen, da wir die Lösung eher mit der Annahme
  beginnen können, dass B notwendigerweise lügt, unabhängig davon, welcher
  Typ A ist. Wenn wir jedoch bereits eine Lösung haben, kann es sinnvoll
  sein, nach weiteren, kürzeren, prägnanteren und eleganteren Lösungen zu
  suchen. Eine dieser Abkürzungen besteht darin, die Fallunterscheidung
  einfach zu überspringen.

  Beim Fallunterscheidungsdenken gibt es jedoch eine noch
  <with|font-shape|italic|langsamere> Methode, bei der die Fallunterscheidung
  auf die Spitze getrieben wird. Auf den ersten Blick macht dies nicht viel
  Sinn, aber es wird gezeigt, dass die oben genannten Problemtypen immer mit
  <with|font-shape|italic|maximaler Fallunterscheidung> gelöst werden können,
  oder anders ausgedrückt: <with|font-shape|italic|mechanisch>.

  Im Allgemeinen haben wir 8 Möglichkeiten (<math|2<rsup|3>>), wenn wir die
  Optionen des Ritter- und des Schurkenfalls getrennt für die drei Personen
  betrachten:

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|3|3|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|b>|<cell|c>>|<row|<cell|W>|<cell|W>|<cell|W>>|<row|<cell|W>|<cell|W>|<cell|F>>|<row|<cell|W>|<cell|F>|<cell|W>>|<row|<cell|F>|<cell|W>|<cell|W>>|<row|<cell|W>|<cell|F>|<cell|F>>|<row|<cell|F>|<cell|F>|<cell|W>>|<row|<cell|F>|<cell|W>|<cell|F>>|<row|<cell|F>|<cell|F>|<cell|F>>>>>>>>>>>
    <index|Wahrheitstafel>
  </big-table>

  In jedem Fall geben <math|a>, <math|b> und <math|c> an, ob die Person die
  Wahrheit sagt oder lügt, d.h.<strong| >ein Ritter oder ein Schurke ist.
  Klein geschriebene Symbole werden auch Aussageformeln (oder Aussagen)
  genannt. Wie üblich verwenden wir <math|W>, um anzuzeigen, dass eine
  Aussage wahr ist, und <math|F>, um anzuzeigen, dass sie falsch ist.

  Der Text der Übung kann durch eine Menge von Formeln angegeben werden. Wir
  kennen die folgenden Informationen:

  <\enumerate-numeric>
    <item><math|b=F>,

    <item><math|\<neg\> b\<Leftrightarrow\> c>.
  </enumerate-numeric>

  Auf die erste Formel sind wir durch natürliche Logik gekommen. Die zweite
  besagt, dass B und C von unterschiedlichem Typ sind, d.h.<strong| >wenn B
  ein Ritter ist, dann ist C ein Ritter und umgekehrt: wenn B ein Ritter ist,
  dann ist C ein Ritter. Wenn wir die durch das Problem gegebene Information
  formalisieren wollten, müssten wir <math|(b=F)\<wedge\> (\<neg\>
  b\<Leftrightarrow\> c)> als die gewünschten Voraussetzungen schreiben, die
  einfacher als <math|(\<neg\> b)\<wedge\> (\<neg\> b\<Leftrightarrow\> c)>
  oder noch einfacher als <math|\<neg\> b\<wedge\> c> angegeben werden kann.
  Die vollständige mechanische Lösung des Problems besteht darin, der obigen
  Tabelle eine neue Spalte hinzuzufügen:

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|3|3|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|b>|<cell|c>|<cell|\<neg\>
  b\<wedge\> \ c>>|<row|<cell|W>|<cell|W>|<cell|W>|<cell|F>>|<row|<cell|W>|<cell|W>|<cell|F>|<cell|F>>|<row|<cell|W>|<cell|F>|<cell|W>|<cell|W>>|<row|<cell|F>|<cell|W>|<cell|W>|<cell|F>>|<row|<cell|W>|<cell|F>|<cell|F>|<cell|F>>|<row|<cell|F>|<cell|F>|<cell|W>|<cell|W>>|<row|<cell|F>|<cell|W>|<cell|F>|<cell|F>>|<row|<cell|F>|<cell|F>|<cell|F>|<cell|F>>>>>>>>>>>
    \;
  </big-table>

  Dies zeigt natürlich die bereits oben beschriebene Lösung.

  Wir wollen dem Leser den Eindruck vermitteln, dass die Lösung logischer
  Probleme mechanisiert werden kann. Wir behaupten nicht, dass dies die
  unterhaltsamste Art ist, logische Probleme zu lösen, aber es ist
  <with|font-shape|italic|eine> Möglichkeit, und manchmal ist die mechanische
  Antwort die entscheidende in kontroversen Fragen.

  Schlieÿlich stellt sich die Frage, ob die Aussage von B, \RA habe gesagt,
  er sei ein Schurke\P, formalisiert werden kann. Denn diese Frage wurde
  wohlweislich unbeantwortet gelassen. Aber die Antwort ist positiv: Die
  Aussage von B kann in die mathematische Logik übersetzt werden, die auf der
  Insel der Ritter und Schurken bekannt ist, indem eine neue Aussage,
  <math|d>, eingeführt wird. <math|d> sei wahr, wenn A sagt, er sei ein
  Ritter, aber falsch, wenn er sagt, er sei ein Schurke. Jetzt gilt
  <math|\<neg\> d\<Leftrightarrow\>b>, das ist der einfache Teil.
  Andererseits, wenn <math|a> wahr ist, dann ist <math|d> wahr, aber wenn
  <math|a> falsch ist, ist <math|d> immer noch wahr: <math|(a\<Rightarrow\>
  d)\<wedge\> (\<neg\> a\<Rightarrow\> d)>. Daraus ergibt sich, dass <math|d>
  wahr und <math|b> falsch ist; und wir sind fertig. Es zeigt sich jedoch,
  dass die obige formale Formulierung die Lösung unnötig verkompliziert und
  den Punkt unklar und fern erscheinen lässt. Leider müssen solche
  Kompromisse manchmal eingegangen werden, um das gesamte Publikum von
  unserer Wahrheit zu überzeugen.

  Zum Abschluss dieser \RMotivationsaufgabe\P fassen wir zusammen, wie man
  eine einzeilige Formel für die Aufgabe erhält. Hier ist sie:

  <\equation*>
    <around*|(|a\<Rightarrow\> \ d|)>\<wedge\> <around*|(|\<neg\>
    a\<Rightarrow\> \ d|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    d\<Leftrightarrow\> \ b|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    b\<Leftrightarrow\> c|)>
  </equation*>

  Wir können dies dann in einen Input umformulieren, der von einem
  Computerprogramm, wie z.B. der kostenlosen Website-Software
  <with|font-shape|italic|Wolfram<with|font-shape|right|\|>Alpha><index|Wolfram\|Alpha>,
  wie folgt verstanden werden kann:

  <\with|par-mode|center>
    <\verbatim>
      (a=\<gtr\>d) and (~a=\<gtr\>d) and (~d=\<gtr\>b) and (b=\<gtr\>~d) and
      (~b=\<gtr\>c) and (c=\<gtr\>~b)
    </verbatim>
  </with>

  Die Antwort des Systems wird unter anderem darin bestehen, den Input in
  eine normale Form umzuwandeln. Zum Beispiel in eine disjunktive Normalform
  (DNF<index|DNF><glossary-explain|DNF|disjunktive Normalform>) oder eine
  konjunktive Normalform (CNF, auch bekannt als
  KNF<index|CNF><glossary-explain|CNF|konjunktive Normalform>). Diese beiden
  Formen werden in diesem Fall gleich sein, nämlich <math|\<neg\> b\<wedge\>
  c\<wedge\> d>, was die gesuchte Antwort ist.

  In diesem Kurs werden Computerprogramme mit groÿem Vergnügen eingesetzt.
  Die erste davon ist Wolfram\|Alpha, das Ihnen, wenn Sie eine
  Internetverbindung haben, einen stabilen Vorrat an Wahrheitstabellen und
  Normalformen liefert. Wenn Sie keine Internetverbindung haben, können Sie
  eine Demo- oder Entwicklerversion der <with|font-shape|italic|Mathematica>-Software<index|Mathematica>
  herunterladen, oder eine Vollversion, wenn Sie einen Raspberry Pi haben.
  Für Interessierte stellen wir hier eine funktionierende Befehlszeile zur
  Verfügung:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      LogicalExpand[Implies[a,d] && Implies[Not[a],d] && Implies[Not[d],b] &&
      Implies[b,Not[d]] && Implies[Not[b],c] && Implies[c,Not[b]]]
    </input>
  </session>

  <subsection|Aufgaben>

  <\enumerate>
    <item>Erstellen Sie mit Ihrem bevorzugten Tabellenkalkulationsprogramm
    eine Wahrheitstabelle, die eine Formel des Kapitels mit möglichst wenig
    Aufwand beschreibt.
  </enumerate>

  <section|Aufgaben auf der Insel der Ritter und Schurken>

  <\enumerate-numeric>
    <item>Als ich auf das obenstehende Rätsel gestoÿen war, fiel mir sofort
    auf, dass C keine unbedingt notwendige Funktion hatte; er war eine Art
    Anhängsel. Anders gesagt, man kann, nachdem B gesprochen hat, auch ohne
    C's Aussage feststellen, dass B gelogen hat. Bei der folgenden Variante
    fällt dieses Merkmal fort.

    Angenommen, der Fremde würde, anstatt A zu fragen, was er ist, ihm die
    Frage stellen: \RWie viele Ritter sind unter euch?\P Wieder antwortet A
    undeutlich. Also richtet der Fremde an B die Frage: \RWas hat A gesagt?\P
    B antwortet: \RA hat gesagt, dass einer von uns ein Ritter ist.\P Darauf
    sagt C: \RGlaube dem B nicht, er lügt!\P

    Was also sind B und C? (<cite|RS-WB>, 26.)

    <item>Bei dieser Aufgabe sind nur zwei Personen beteiligt, A und B, wobei
    jeder entweder ein Ritter oder ein Schurke ist. A macht folgende Aussage:
    \RWenigstens einer von uns ist ein Schurke.\P

    Was sind A und B? (<cite|RS-WB>, 27.)

    <item>Angenommen, A sagt: \REntweder ich bin ein Schurke, oder B ist ein
    Ritter.\P Was sind A und B?<\footnote>
      In Smullyans Übungen schlieÿt die \Rentweder-oder\P-Struktur nicht aus,
      dass beide Möglichkeiten wahr sind. In der modernen Mathematik wird es
      jedoch in der Regel als ein \Rexklusives Oder\P interpretiert. Wir
      denken an Smullyans Probleme als \Rnormale\P Oder-Operationen, aber
      normalerweise (in diesem Skriptum) als \Rausschlieÿende oder\P.
    </footnote> (<cite|RS-WB>, 28.)

    <item>Angenommen, A sagt: \REntweder ich bin ein Schurke, oder 2 und 2
    sind 5.\P Was würden Sie daraus schlieÿen? (<cite|RS-WB>, 29.)

    <item>Wieder haben wir mit 3 Personen zu tun, A, B, C, von denen jede
    entweder ein Ritter oder ein Schurke ist. A und B stellen folgendes fest:

    A: Wir sind alle Schurken.

    B: Genau einer von uns ist ein Ritter.

    Was sind A, B, C? (<cite|RS-WB>, 30.)

    <item>Nehmen wir stattdessen an, dass A und B folgendes sagen:

    A: Wir sind alle Schurken.

    B: Genau einer von uns ist ein Schurke.

    Lässt sich feststellen, was B ist? Lässt sich feststellen, was C ist?
    (<cite|RS-WB>, 31.)

    <item>Angenommen, A sagt: \RIch bin ein Schurke, aber B ist keiner.\P

    Was sind A und B? (<cite|RS-WB>, 32.)

    <item>Wieder haben wir 3 Inselbewohner vor uns, A, B und C, von denen
    jeder ein Ritter oder ein Schurke ist. Von 2 Personen wird gesagt, dass
    sie <with|font-shape|italic|von gleicher Art> sind, wenn beide Ritter
    oder beide Schurken sind. A und B machen folgende Aussagen:

    A: B ist ein Schurke.

    B: A und C sind von gleicher Art.

    Was ist C? (<cite|RS-WB>, 33.)

    <item>Wieder geht es um 3 Personen, A, B und C. A sagt: \RB und C sind
    von gleicher Art.\P Dann stellt jemand C die Frage: \RSind A und B von
    gleicher Art?\P

    Was antwortet C? (<cite|RS-WB>, 34.)

    <item>Dies ist eine recht auÿergewöhnliche Aufgabe; überdies ist sie dem
    wirklichen Leben entnommen. Als ich einmal die Insel der Ritter und
    Schurken besuchte, traf ich zufällig zwei Einwohner, die unter einem Baum
    lagen. Ich fragte einen der beiden: \RIst einer von euch ein Ritter?\P Er
    antwortete mir, und ich wusste die Antwort auf meine Frage.

    Was ist derjenige, dem ich die Frage gestellt hatte \U ein Ritter oder
    ein Schurke? Und was ist der andere? Ich kann versichern, dass ich genug
    Informationen gegeben habe, um diese Aufgabe zu lösen. (<cite|RS-WB>,
    35.)

    <item>Angenommen, Sie besuchen die Insel der Ritter und Schurken. Sie
    treffen auf zwei Einwohner, die faul in der Sonne liegen. Einem von ihnen
    stellen Sie die Frage, ob der andere ein Ritter ist, und Sie bekommen
    eine Antwort (ja oder nein). Dann fragen Sie den zweiten, ob der erste
    ein Ritter ist. Sie bekommen eine Antwort (ja oder nein).

    Sind die beiden Antworten notwendigerweise gleich? (<cite|RS-WB>, 36.)
  </enumerate-numeric>

  <section|Tautologien und Sätze>

  Das Problem in Abschnitt <reference|rah-fel> kann
  <with|font-shape|italic|zusammen mit der Lösung> auf eine andere Weise
  dargestellt werden. Wenn wir die Lösung und die Aufgabenstellung gemeinsam
  angeben wollen, können wir die beiden in Form einer Implikation schreiben.
  Kurz gesagt: <with|font-shape|italic|Problem> \<Rightarrow\>
  <with|font-shape|italic|Lösung>. Konkret bedeutet dies im Fall des Problems
  in Abschnitt <reference|rah-fel> folgende Implikation:

  <\equation>
    <around*|(|<around*|(|a\<Rightarrow\> \ d|)>\<wedge\> <around*|(|\<neg\>
    a\<Rightarrow\> \ d|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    d\<Leftrightarrow\> \ b|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    b\<Leftrightarrow\> c|)>|)><space|1em>\<Rightarrow\><application-space|1em><around*|(|\<neg\>
    b\<wedge\> c\<wedge\>d|)><label|3-1-impl>
  </equation>

  Der erste Teil der Implikation wird als
  <with|font-shape|italic|Prämisse><index|Prämisse> bezeichnet (oder, wenn
  wir die Konjunktionen aufteilen, wird die Menge der Konjunktionen als
  <with|font-shape|italic|Prämissen> bezeichnet), der zweite Teil wird als
  <with|font-shape|italic|Konklusion><index|Konklusion> bezeichnet. Beachten
  Sie, dass die Konklusion auch eine Menge von Konjunktionen ist, so dass die
  Aussagen, die sich aus ihrer Zerlegung ergeben, als
  <with|font-shape|italic|Konklusionen> verstanden werden können. In diesem
  Skriptum werden wir Prämissen auch als <with|font-shape|italic|Hypothesen><index|Hypothese>
  und Konklusionen als <with|font-shape|italic|Thesen><index|These>
  bezeichnen. In allgemeiner Schreibweise werden Formeln wie die obigen auch
  in der Form

  <\equation>
    <around*|(|H<rsub|1>\<wedge\> H<rsub|2>\<wedge\>\<ldots\> \<wedge\>
    H<rsub|n>|)>\<Rightarrow\> <around*|(|T<rsub|1>\<wedge\>
    T<rsub|2>\<wedge\> \<ldots\>\<wedge\> T<rsub|m>|)><label|3-2-impl>
  </equation>

  geschrieben.

  Aus Abschnitt <reference|rah-fel> geht hervor, dass die Formel
  (<reference|3-1-impl>) eine Tautologie ist, d.h.<abbr| >sie gilt für alle
  möglichen Werte der Variablen. Denn in unserem Fall ist die Prämisse genau
  dann wahr, wenn auch die Konklusion wahr ist, da die Konklusion eine
  äquivalente Form der Prämisse ist. Wenn die Prämisse falsch ist, ist es für
  die Implikation unerheblich, wie die Konklusion lautet. Daraus schlieÿen
  wir, dass die Implikation eine wahre Aussage, also eine Tautologie ist. Wir
  werden Tautologien der Form (<reference|3-2-impl>) als
  <with|font-shape|italic|implikative Tautologien><index|implikative
  Tautologie> bezeichnen.

  Wir stellen auÿerdem fest, dass wir im Allgemeinen, wenn die Implikation
  (<reference|3-2-impl>) eine Tautologie ist, eine beliebige Anzahl von
  Thesen aus der Konklusion streichen können: Wir erhalten immer noch eine
  Tautologie. Somit sind alle folgenden Aussagen Tautologien:

  <\equation>
    <around*|(|<around*|(|a\<Rightarrow\> \ d|)>\<wedge\> <around*|(|\<neg\>
    a\<Rightarrow\> \ d|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    d\<Leftrightarrow\> \ b|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    b\<Leftrightarrow\> c|)>|)><space|1em>\<Rightarrow\><application-space|1em><around*|(|\<neg\>
    b\<wedge\> c|)><label|3-3-impl>
  </equation>

  <\equation>
    <around*|(|<around*|(|a\<Rightarrow\> \ d|)>\<wedge\> <around*|(|\<neg\>
    a\<Rightarrow\> \ d|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    d\<Leftrightarrow\> \ b|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    b\<Leftrightarrow\> c|)>|)><space|1em>\<Rightarrow\><application-space|1em><around*|(|\<neg\>
    b\<wedge\>d|)><label|3-4-impl>
  </equation>

  <\equation>
    <around*|(|<around*|(|a\<Rightarrow\> \ d|)>\<wedge\> <around*|(|\<neg\>
    a\<Rightarrow\> \ d|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    d\<Leftrightarrow\> \ b|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    b\<Leftrightarrow\> c|)>|)><space|1em>\<Rightarrow\><application-space|1em><around*|(|c\<wedge\>
    d|)><label|3-5-impl>
  </equation>

  <\equation>
    <around*|(|<around*|(|a\<Rightarrow\> \ d|)>\<wedge\> <around*|(|\<neg\>
    a\<Rightarrow\> \ d|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    d\<Leftrightarrow\> \ b|)><space|1em>\<wedge\><space|1em><around*|(|\<neg\>
    b\<Leftrightarrow\> c|)>|)><space|1em>\<Rightarrow\><application-space|1em><around*|(|\<neg\>
    b|)><label|3-6-impl>
  </equation>

  Und so weiter. Mathematiker lieben es, immer neue implikative Tautologien
  zu finden, mit anderen Worten: immer wieder zu neuen Theoremen zu gelangen.
  Denn sagen wir mal so: mathematische Theoreme haben alle die Form
  (<reference|3-2-impl>): wir leiten Thesen auf der Grundlage mancher
  Hypothesen ab. Die Aufgabe des Mathematikers besteht lediglich darin, Sätze
  des Typs (<reference|3-2-impl>) zu sammeln, ihren Wahrheitsgehalt durch
  irgendeine Art von Argumentation zu beweisen und dann die daraus
  resultierende Tautologie in eine bestimmte Datenbank zu speichern. Eine
  solche Sammlung findet sich in allen Zweigen der Mathematik: in der
  Geometrie, in der Algebra, in der Analysis und so fort.

  Im bekannten Satz des Thales zum Beispiel verlangen die Hypothesen, dass
  drei Punkte in der Ebene, <math|A>, <math|B> und <math|C>, auf einem Kreis
  liegen, so dass <math|A C> der Durchmesser ist. Die These lautet, dass ein
  <math|\<angle\> A B C> ein rechter Winkel ist. Um ein algebraisches
  Beispiel zu nehmen: Die erste binomische Formel besagt, dass, wenn <math|a>
  und <math|b> reelle Zahlen sind (dies ist die Hypothese), der Ausdruck
  <math|(a+b)<rsup|2>> gleich <math|a<rsup|2>+2 a b+b<rsup|2>> ist (dies ist
  die These). Um ein Beispiel aus der Analysis zu nehmen: Die Hypothese kann
  sein, dass die Folgen <math|a<rsub|n>> und <math|b<rsub|n>> konvergent
  sind, und die These ist, dass ihre Summe konvergent ist.

  Natürlich ist die formale Beschreibung der drei obigen Beispiele
  komplizierter als die Formel (<reference|3-1-impl>). Das Hauptproblem bei
  einer exakten Formalisierung besteht darin, dass für ein System einer
  bestimmten Komplexität eine unendliche Anzahl von Fällen abzubilden ist.
  Eine der wichtigsten Aufgaben des Mathematikers besteht darin, die
  unendliche Anzahl von Möglichkeiten auf eine endliche Anzahl von Fällen zu
  reduzieren und so die Lösung des Problems überschaubar zu machen. Auf diese
  Methoden wird in späteren Kapiteln eingegangen.

  Lassen wir die Herausforderungen der drei obigen Beispiele hinter uns und
  kehren wir zu den Problemtypen zurück, die wir mit unseren derzeitigen
  Werkzeugen gut formalisieren und analysieren können. Formeln dieses Typs,
  die mit logischen Standardoperatoren geschrieben werden können, werden als
  <with|font-shape|italic|Aussagenlogikformeln> bezeichnet. Wichtig ist, dass
  in diesem System keine Strukturen erscheinen, die die verwendeten Variablen
  in quantisierter Form darstellen. Die beiden bekannten Quantoren \<exists\>
  (\Rexistiert\P) und \<forall\> (\Rfür alle\P) sind daher nicht verwendbar,
  und unsere Möglichkeiten sind daher ebenfalls erheblich eingeschränkt.

  Aber diese Grenzen haben auch einen gewissen Nutzen. Wir brauchen nur die
  Sätze eines engen Systems zu betrachten, und wenn die Anzahl der möglichen
  Sätze relativ klein ist, kann es vielleicht einfacher sein, diejenigen
  auszuwählen, die Tautologien (d.h.<abbr| >Sätze) sind. Ein Computer kann
  eventuell in der Lage sein, alle möglichen Aussagen in der Aussagenlogik zu
  produzieren, und es kann auch möglich sein, diejenigen auszuwählen, die
  Tautologien sind.

  Bei der Computerverarbeitung ist es unvermeidlich, dass die erstellten
  Formeln in irgendein System einflieÿen. Als Erstes müssen wir fixieren, mit
  welchen Symbolen wir arbeiten. Natürlich ist es sinnvoll, die Variablen in
  Buchstaben anzugeben, und es ist auch notwendig, zusätzliche Symbole für
  logische Operationen und für die Angabe der Klammern festzulegen. Bei einer
  zufälligen Abfolge dieser Symbole kann es sein, dass wir eine
  <with|font-shape|italic|sinnvolle Symbolfolge> erhalten, die Abfolge kann
  aber auch keine Bedeutung haben.

  Wir wollen den Leser nicht täuschen: Die Anzahl der möglichen Aussagen
  (d.h.<abbr|> sinnvollen Symbolfolgen) in der Aussagenlogik ist unendlich.
  Betrachten wir nur zwei Variablen, <with|font-shape|italic|a> und
  <with|font-shape|italic|b>. Zwischen diesen beiden Variablen können
  mindestens drei Operationen (<math|\<wedge\>>, <math|\<vee\>>,
  <math|\<Rightarrow\>>) geschrieben werden, aber die beiden Variablen können
  auch negiert werden. Dies bringt uns zu Aussagen (sinnvolle Symbolfolgen)
  wie <math|a\<wedge\>b>, <math|a\<vee\> b>, <math|a\<Rightarrow\>b>;
  <math|\<neg\> a\<wedge\>b>, <math|\<neg\> a\<vee\> b>, <math|\<neg\>
  a\<Rightarrow\>b>, und so weiter, bis hin zu <math|\<neg\>
  a\<Rightarrow\>\<neg\> b>, also bisher 12 Aussagen, deren Wahrheitstabellen
  sich gröÿtenteils unterscheiden, obwohl einige gleich sein können \ (wie
  <math|a\<Rightarrow\>b> und <math|\<neg\> a\<vee\> b>, die übereinstimmen).
  Aber wir wissen sehr wohl, dass es für zwei Variablen genau 16 verschiedene
  Wahrheitstabellen gibt, und egal wie sehr wir unsere Formeln verbessern, um
  weitere Operationen einzubeziehen, die 16 Möglichkeiten können nicht weiter
  ausgedehnt werden. Allerdings ist nur eine der 16 Möglichkeiten
  tautologisch: die Wahrheitstabelle, bei der unabhängig von den Werten von
  <math|a> und <math|b> immer <math|W> ausgegeben wird. Die eigentliche Frage
  ist jedoch, mit welchen <with|font-shape|italic|Formeln> <math|W> erzeugt
  werden kann. Mit Hilfe von einer Variable kann <math|W> als
  <math|a\<vee\>\<neg\>a> erstellt werden. Man sieht schnell, dass man mit
  einer kleinen Abwandlung dieser Formel, z.B.<abbr|> wie <math|(a\<wedge\>
  b)\<vee\>\<neg\> (a\<wedge\>b)>, leicht eine unendliche Anzahl weiterer
  Tautologien erzeugen kann. (Führt man eine dritte Variable, z.B.<abbr|>
  <math|c>, ein, so ergeben sich 256 verschiedene Wahrheitstabellen, von
  denen es ebenfalls nur eine gibt, die eine Tautologie ist. Allerdings ist
  die Anzahl der Formeln, die erstellt werden können, viel gröÿer als bei
  zwei Variablen. Dadurch erhöht sich die Zahl der möglichen Tautologien
  weiter.)

  Für den modernen Mathematiker stellt sich die offensichtliche Frage: Gibt
  es einen Weg, jede mögliche Tautologie oder jeden Satz in der Aussagenlogik
  zu finden? Die Antwort auf diese Frage ist natürlich nein, wenn man davon
  ausgeht, dass die Zahl der möglichen Sätze (d.h.<abbr|> Formeln) unendlich
  ist und dass es, wie oben gezeigt, unendlich viele Tautologien gibt. Es ist
  jedoch denkbar, dass eine Maschine uns zunächst alle Tautologien liefert,
  die aus einem Symbol bestehen, dann solche, die aus zwei Symbolen bestehen,
  dann solche, die aus drei Symbolen bestehen, und so weiter. Wenn die
  Maschine gute Arbeit leistet, wird sie keine bestehende Tautologie
  übersehen, und früher oder später werden wir zu allen Tautologien gelangen:
  Es ist nur eine Frage der Zeit. Das heiÿt, wir können die unendliche Anzahl
  von Möglichkeiten auf die maximale Länge beschränken, die für uns von
  Interesse ist.

  Obwohl die Formel <math|a\<vee\> \<neg\>a> bereits eine Tautologie ist,
  sind wir eher an Tautologien interessiert, die durch Implikation gegeben
  werden können. Warum? Denn dann können wir eine Implikation so verstehen,
  als wäre sie ein Satz, der mit seiner Prämisse und seiner Konklusion
  gegeben ist. Die Tautologie <math|a\<vee\> \<neg\>a> ist daher in dieser
  Form für uns nicht von groÿem Interesse, obwohl sie mit einer kleinen
  Modifikation, die sie sogar verkürzt, zu einer Implikation gemacht werden
  kann.

  Halten wir hier einen Moment inne! Es ist nicht wirklich möglich, eine
  implikative Tautologie von 1 oder 2 Symbolen zu geben, wenn man davon
  ausgeht, dass sowohl die Variablen als auch die Operationen ein Symbol
  zählen. Die kürzeste implikative Tautologie besteht aus 3 Symbolen und hat
  die Form <math|a\<Rightarrow\>a>. (Der Leser hat natürlich erkannt, dass
  dies derselbe Ausdruck ist wie <math|a\<vee\> \<neg\>a>, oder genauer
  gesagt das kommutative Äquivalent <math|\<neg\>a\<vee\>a>. Clever!) Es
  erscheint logisch, die Variablen und Operationssymbole um <math|W> und
  <math|F> zu ergänzen, was zwar die Anzahl der Symbole erhöht, aber die
  resultierenden Formeln vernünftiger und kürzer macht. (Zum Beispiel könnte
  man statt <math|a\<wedge\>\<neg\> a> einfach <math|F> schreiben.) Mit
  dieser Modifikation sind die implikativen Tautologien von 3 Symbolen
  <math|W\<Rightarrow\> W>, <math|F\<Rightarrow\> F>, <math|F\<Rightarrow\>
  W> und <math|a\<Rightarrow\> a>. Der Leser kann nun -- zu Recht -- sagen,
  dass auf dieser Grundlage auch die Formeln <math|b\<Rightarrow\> b>,
  <math|c\<Rightarrow\> c> usw.<abbr|> hierher gehören und wir eine
  unendliche Anzahl von implikativen Tautologien gefunden haben, hurra! Nun,
  ja, aber letztere sind nicht wirklich neu in dem Sinne, dass
  <math|a\<Rightarrow\>a> eine Tautologie in völliger Übereinstimmung ist: Es
  gibt nur eine Änderung der Variablennamen. Es ist auch wahr, dass in dieser
  Hinsicht <math|W\<Rightarrow\> W> und <math|F\<Rightarrow\> F> ebenfalls
  keine Sonderfälle sind, da <math|a\<Rightarrow\>a> für beide ein Sonderfall
  der Tautologie ist. Der Fairness halber sollten wir nur die beiden
  folgenden, im Wesentlichen unterschiedlichen Ergebnisse als unterschiedlich
  betrachten: <math|a\<Rightarrow\> a> und <math|F\<Rightarrow\> W>.

  Im Folgenden konzentrieren wir uns auf die Beantwortung der Frage, wie man
  alle implikativen Tautologien spezifizieren kann. Wir sind froh, wenn wir
  einen Computer haben, der uns dabei hilft.

  <subsection|Aufgaben>

  <\enumerate-numeric>
    <item>Wie viele Folgen von Symbolen der Länge 3 lassen sich mit <math|a>,
    <math|b>, <math|\<vee\>>, <math|\<wedge\>>, <math|\<Rightarrow\>>,
    <math|\<neg\>>, (, ), <math|W>, <math|F> bilden? Wie viele davon sind
    sinnvoll? Welche davon haben die gleiche Wahrheitstabelle (d.h.<abbr|>
    sind äquivalent)?

    <item>Wie viele verschiedene Wahrheitstabellen können gegeben werden,
    wenn die Anzahl der Variablen <math|v> ist?

    <item>Geben Sie unendlich viele wesentlich unterschiedliche implikative
    Tautologien an.

    <item>Geben Sie alle Tautologien mit 1 oder 2 Symbolen an.
  </enumerate-numeric>

  <section|Herleitungen>

  Auf der Grundlage der obigen Ausführungen können alle Tautologien in der
  Aussagenlogik mit Hilfe eines fleiÿigen Computers gefunden werden:

  <\enumerate>
    <item>Wir erzeugen systematisch eine Folge von Symbolen der Länge
    <math|k>, wobei die Symbole Variablen, logische Operationen oder Klammern
    bezeichnen können. <math|k> wird von 1 bis etwas durchlaufen --
    vermutlich wird das Programm bei zu groÿen Werten unerbittlich langsam
    laufen, aber wir werden uns jetzt nicht mit diesem Detail beschäftigen.

    <item>Wir wählen die sinnvollen Symbolfolgen aus, für die wir die
    Wahrheitstabellen konstruieren.

    <item>Diejenige Symbolfolge, die für alle Werte der Variablen ein wahres
    Ergebnis liefert (d.h.<abbr|> eine Tautologie), wird abgespeichert.
    Diejenigen, bei denen es sich um implikative Tautologien handelt, sind
    ebenfalls in unserer Satzliste aufgeführt.
  </enumerate>

  Wir werden nicht darauf eingehen, wie dies technisch machbar ist (fleiÿige
  Studierende können ein Programm dafür schreiben, aber es lohnt sich, sich
  auf einige technische Herausforderungen vorzubereiten). Wir weisen jedoch
  darauf hin, dass der Grund, warum ein solches Programm machbar ist, darin
  liegt, dass wir jede Behauptung der Aussagenlogik anhand einer
  Wahrheitstabelle überprüfen können, um zu sehen, ob sie eine Tautologie ist
  oder nicht. Wie wir später sehen werden, funktioniert dieser Trick bei
  komplexeren Systemen nicht. Es wird aber noch eine andere Methode geben,
  die wir bereits vorstellen werden, weil sie zeigt, dass die Aufgabe des
  Mathematikers nicht in erster Linie darin besteht, eine Wahrheitstabelle
  auszuwerten, sondern einen logischen Weg zu finden, um Stück für Stück ein
  Theorem aus dem Nichts zu zaubern. Wir könnten sagen, dass wir nach einer
  <with|font-shape|italic|Herleitung><index|Herleitung> für unsere wahre
  Aussage suchen werden, die die Wahrheit der Aussage garantiert. Wir werden
  versuchen, die Wahrheitstabelle in der Herleitung zu vermeiden, gerade
  damit die Beweismethode in Systemen verwendet werden kann, die komplexer
  sind als die Aussagenlogik.

  In diesem Kapitel stellen wir eine mögliche Methode vor. Der Leser hat sie
  wahrscheinlich schon im Kapitel 2.3 des Skriptums <cite|Pillichshammer2022>
  kennengelernt, aber wir fassen sie hier noch einmal zusammen. Wir
  betrachten Symbolfolgen, in denen wir Kleinbuchstaben, Negation und
  Implikation sowie Klammern verwenden können (die Operationen \Rund\P und
  \Roder\P können wir nicht verwenden, aber wir werden sie mit Negationen und
  Implikationen ausdrücken können. Warum verbieten wir die \Rund\P und
  \Roder\P Operationen? Weil wir ein minimales System anstreben und uns so
  erwarten, dass es den Rechenaufwand reduziert und die Ausführung des
  imaginären Programms beschleunigt wird. Wir werden sehen, ob das die
  richtige Richtung ist oder etwas anderes.)

  <with|font-shape|italic|Zulässige Ausdrücke><index|zulässige Ausdrücke>
  sind Folgende:

  <\enumerate-numeric>
    <item>Ein beliebiger Kleinbuchstabe.

    <item>Wenn <math|P> und <math|Q> zulässige Ausdrücke sind, dann sind auch
    <math|(P )> , <math|(\<neg\>P )> und <math|(P \<Rightarrow\> Q)>
    zulässige Ausdrücke.
  </enumerate-numeric>

  Um Platz zu sparen, lassen wir die äuÿeren Klammern in diesem Abschnitt
  weg, nachdem wir uns darauf geeinigt haben, dass die Priorität der Negation
  stärker ist als die der Implikation.

  Die wahren Aussagen, die wir in einem Bündel in einer Herleitung sammeln,
  werden in einer Datenbank gespeichert und fortlaufend nummeriert. Es wird
  streng darauf geachtet, dass alle erfassten wahrheitsgemäÿen Aussagen klar
  definierten Regeln folgen. Dadurch wird die Möglichkeit eines Fehlers
  ausgeschlossen. Es gibt vier Fälle, in denen eine Aussage in der Datenbank
  gespeichert werden kann.

  <\enumerate-numeric>
    <item>Wenn <math|P> und <math|Q> zulässige Ausdrücke sind, dann kann
    <math|P\<Rightarrow\> (Q\<Rightarrow\> P)> gespeichert werden.

    <item>Wenn <math|P>, <math|Q> und <math|R> zulässige Ausdrücke sind, dann
    kann <math|(P \<Rightarrow\> (Q \<Rightarrow\> R)) \<Rightarrow\> ((P
    \<Rightarrow\> Q) \<Rightarrow\> (P \<Rightarrow\> R))> gespeichert
    werden.

    <item>Wenn <math|P> und <math|Q> zulässige Ausdrücke sind, dann kann
    <math|(\<neg\>Q \<Rightarrow\> \<neg\>P ) \<Rightarrow\> (P
    \<Rightarrow\> Q)> gespeichert werden.

    <item>Wenn sowohl <math|P> als auch <math|P \<Rightarrow\> Q> in unserer
    Datenbank vorhanden sind, dann können wir den Ausdruck <math|Q> als
    zusätzlichen Eintrag hinzufügen.
  </enumerate-numeric>

  Es lohnt sich, darüber nachzudenken, was in den obigen 4 Schritten
  geschieht. Jede der ersten drei Aufzeichnungsregeln ist eine implikative
  Tautologie. Für die erste Regel stellen wir die Hypothese auf, dass
  <math|P> wahr ist, und daraus folgt, dass <math|Q\<Rightarrow\> P> wahr
  ist, und dies wird offensichtlich der Fall sein, da das Ergebnis dieser
  Implikation unabhängig vom Wahrheitswert von <math|Q> wahr ist. (Denken Sie
  darüber nach!) Eine ähnliche Analyse der zweiten Regel ist etwas
  komplizierter, wir können aber die Aussage <math|(P \<Rightarrow\> (Q
  \<Rightarrow\> R)) \<Rightarrow\> ((P \<Rightarrow\> Q) \<Rightarrow\> (P
  \<Rightarrow\> R))> für alle möglichen Fälle <math|P>, <math|Q>, <math|R>
  (unter der Annahme, dass sie wahre bzw.<abbr|> falsche Werte enthalten)
  auswerten und daraus schlieÿen, dass dies eine Tautologie ist. Die dritte
  Regel ist die bekannte <with|font-shape|italic|Kontraposition><index|Kontraposition>,
  während die vierte Regel als <with|font-shape|italic|modus
  ponens><index|modus ponens> aus unseren früheren Studien bekannt ist.

  Die obigen 4 Regeln registrieren also nur wahre Aussagen in der Datenbank.
  Wenn eine Aussage, die uns gefällt, nach diesen 4 Regeln zur Datenbank
  hinzugefügt wird, können wir sagen, dass die Aussage ein
  <with|font-shape|italic|hergeleiteter Satz> ist und die entsprechende
  Herleitung die Datenbank selbst ist.

  Zur Veranschaulichung der obigen Konzepte wiederholen wir den Beweis vom
  Satz 2.31 in <cite|Pillichshammer2022>. Wir werden sehen, dass
  <math|a\<Rightarrow\>a> eine wahre Aussage ist. Der Leser mag enttäuscht
  sein, dass wir eine so einfache Aussage beweisen, aber wir wollen ihn
  gleich beruhigen: Die Herleitung von Aussagen, die komplizierter sind als
  diese, kann ziemlich kompliziert sein. Lassen Sie uns also bei einfachen
  Aussagen bleiben!

  <\enumerate-numeric>
    <item><math|a> ist ein zulässiger Ausdruck und <math|b> ebenfalls. Aus
    diesem Grund ist <math|(a\<Rightarrow\> b)> auch ein zulässiger Ausdruck.

    <item>Betrachten wir die zulässigen Ausdrücke <math|P=a>,
    <math|Q=(b\<Rightarrow\> a)> und verwenden wir die erste Regel. Wir
    können also in die Datenbank schreiben: <math|a \<Rightarrow\> ((b
    \<Rightarrow\> a) \<Rightarrow\> a)>. Dies ist der erste Schritt unserer
    Herleitung.

    <item>Betrachten wir die zulässigen Ausdrücke <math|P=a>,
    <math|Q=(b\<Rightarrow\> a)>, <math|R=a>, und verwenden wir die zweite
    Regel. Wir können also schreiben <math|(a \<Rightarrow\> ((b
    \<Rightarrow\> a) \<Rightarrow\> a)) \<Rightarrow\> ((a \<Rightarrow\> (b
    \<Rightarrow\> a)) \<Rightarrow\> (a \<Rightarrow\> a))>. Dies ist der
    zweite Schritt unserer Herleitung.

    <item>Wenn wir den ersten und den zweiten Eintrag in unserer Datenbank
    betrachten, sehen wir, dass der erste als <math|P>, der zweite als
    <math|P\<Rightarrow\> Q> geschrieben werden kann, wobei <math|Q=((a
    \<Rightarrow\> (b \<Rightarrow\> a)) \<Rightarrow\> (a \<Rightarrow\>
    a))>. Nach der vierten Regel können wir <math|Q> als dritten Eintrag in
    die Datenbank registrieren.

    <item>Betrachten wir die zulässigen Ausdrücke <math|P=a>, <math|Q=b>.
    Nach der ersten Regel können wir <math|a \<Rightarrow\> (b \<Rightarrow\>
    a)> als vierten Eintrag in die Datenbank aufnehmen.

    <item>Betrachtet man den dritten und vierten Eintrag in unserer
    Datenbank, so stellt man fest, dass der vierte als <math|P>, der dritte
    als <math|P\<Rightarrow\>Q> geschrieben werden kann, wobei
    <math|Q=(a\<Rightarrow\>a)>. Nach der vierten Regel kann man <math|Q> als
    fünften Eintrag in die Datenbank aufnehmen. Der Beweis ist jedoch
    abgeschlossen, denn das Ziel war ja gerade, die Aussage
    <math|a\<Rightarrow\>a> abzuleiten.
  </enumerate-numeric>

  Wenn wir uns unsere Datenbank ansehen, sehen wir die folgenden Schritte:

  <\enumerate-numeric>
    <item><math|a \<Rightarrow\> ((b \<Rightarrow\> a) \<Rightarrow\> a)>

    <item><math|(a \<Rightarrow\> ((b \<Rightarrow\> a) \<Rightarrow\> a))
    \<Rightarrow\> ((a \<Rightarrow\> (b \<Rightarrow\> a)) \<Rightarrow\> (a
    \<Rightarrow\> a))>

    <item><math|<around*|(|(a \<Rightarrow\> (b \<Rightarrow\> a))
    \<Rightarrow\> (a \<Rightarrow\> a)|)>>

    <item><math|a \<Rightarrow\> (b \<Rightarrow\> a)>

    <item><math|a\<Rightarrow\> a>
  </enumerate-numeric>

  Dies ist eine schöne Herleitung, aber für einen auÿenstehenden Beobachter
  ist sie unvollständig. Das ist richtig, denn wir haben nicht
  aufgeschrieben, auf welcher Grundlage die einzelnen Aussagen aufgenommen
  wurden. Bei einem vollwertigen Beweis muss also auch darauf geachtet
  werden, dass die Argumentation, die zu jedem Schritt geführt hat, begründet
  wird. Wir werden im Folgenden versuchen, dies zu tun.

  Die obige Herleitungsmethode wird auch als
  <with|font-shape|italic|Hilbert-Kalkül><index|Hilbert-Kalkül> bezeichnet.
  Es kann gezeigt werden, dass durch eine solche Herleitung
  <with|font-shape|italic|alle> Tautologien hergeleitet werden können
  (nachdem sie auf eine Form mit nur Implikation und Negation reduziert
  wurden). Wir gehen in diesem Skriptum jedoch nicht auf den Beweis dafür
  ein, der interessierte Leser findet eine detaillierte Erklärung in Kapitel
  5 von <cite|Wasilewska2021>.

  Das Hilbert-Kalkül ist also <with|font-shape|italic|vollständig>: Alles,
  was logisch wahr ist, kann abgeleitet werden. Da unsere Regeln jedoch nur
  wahre Aussagen hervorbringen, ist auch das Hilbert-Kalkül
  <with|font-shape|italic|korrekt>.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Beweisen Sie die Gültigkeit der zweiten Regel mit einer
    Wahrheitstabelle.

    <item>Geben Sie eine unendliche Anzahl von wesentlich unterschiedlichen
    implikativen Tautologien an, die nur die erste oder nur die dritte Regel
    verwenden.
  </enumerate>

  <subsection|Rückwärtsverkettungen>

  Das Hilbert-Kalkül wurde oben als ein Mechanismus beschrieben, der von
  einer leeren Datenbank ausgeht und ihr neue Tautologien hinzufügt. Dieselbe
  Methodik lässt sich auch umgekehrt formulieren: Wir erstellen eine
  Zieldatenbank, in die wir die Aussagen aufnehmen, die wir beweisen wollen.
  Diese Zieldatenbank enthält zunächst eine einzige Anweisung: die Aufgabe,
  die zu lösen ist. Es kann aber sein, dass zum Nachweis der gestellten
  Aufgabe mehr als eine Sache nachgewiesen werden muss. Sobald eine Anweisung
  in der Zieldatenbank erfolgreich geprüft wurde, wird sie gelöscht. Es ist
  auch möglich, dass zum Beweis einer Aussage <math|A> andere Aussagen
  (z.B.<abbr|> <math|A<rsub|1>>, <math|A<rsub|2>>, <text-dots>) betrachtet
  werden müssen: in diesem Fall löschen wir die Aussage <math|A> und
  schreiben stattdessen die Aussagen <math|A<rsub|1>>, <math|A<rsub|2>>,
  <text-dots> als neue Ziele auf.

  Wie sieht diese Methode aus, wenn die Tautologie <math|a\<Rightarrow\>a> zu
  beweisen ist? Wir schreiben zunächst die zu beweisende Aussage
  <math|A=a\<Rightarrow\>a> als einen einzigen Eintrag in unsere
  Zieldatenbank. Da wir wissen, dass diese Aussage eine Folgerung der
  Aussagen <math|A<rsub|1>=<around*|(|(a \<Rightarrow\> (b \<Rightarrow\> a))
  \<Rightarrow\> (a \<Rightarrow\> a)|)>> bzw.<abbr|> <math|A<rsub|2>=a
  \<Rightarrow\> (b \<Rightarrow\> a)> war (nach Hilberts 4.<abbr|>
  Kalkülregel), können wir die Aussage <math|A> aus der Zieldatenbank löschen
  und stattdessen <math|A<rsub|1>> und <math|A<rsub|2>> schreiben. Betrachtet
  man jedoch <math|A<rsub|2>>, so stellt man fest, dass es eine Tautologie
  ist (nach der ersten Regel des Hilbert-Kalküls), so dass man
  <math|A<rsub|2>> aus der Zieldatenbank löschen kann. Um <math|A<rsub|1>>
  löschen zu können, wäre es auÿerdem sinnvoll, stattdessen die Aussagen
  <math|A<rsub|3>=a \<Rightarrow\> ((b \<Rightarrow\> a) \<Rightarrow\> a)>
  und <math|A<rsub|4>=(a \<Rightarrow\> ((b \<Rightarrow\> a) \<Rightarrow\>
  a)) \<Rightarrow\> ((a \<Rightarrow\> (b \<Rightarrow\> a)) \<Rightarrow\>
  (a \<Rightarrow\> a))> aufzunehmen, denn (auch hier ist die 4.<abbr|
  >Anweisung angewandt) diese <math|A<rsub|1>> sofort ergeben. Wir machen
  also Folgendes: <math|A<rsub|1>> aus der Zieldatenbank löschen und
  stattdessen <math|A<rsub|3>> und <math|A<rsub|4>> aufnehmen.

  Wir sind noch nicht so weit, aber wir sollten erst einmal tief durchatmen.
  <math|A<rsub|3>> ist offensichtlich eine Tautologie (nach der ersten Regel
  des Hilbert-Kalküls), aber <math|A<rsub|4>> ist ziemlich knifflig, und wenn
  wir nicht wüssten, dass wir sie nach der zweiten Regel des Hilbert-Kalküls
  aufgestellt haben, würden wir Kopfschmerzen bekommen. Aber zum Glück haben
  wir nicht vergessen, dass es sich bei dieser Aussage um einen geschickt
  angewandten Fall von Regel 2 handelt, so dass wir sicher sagen können, dass
  <math|A<rsub|4>> eine Tautologie ist. So können wir nicht nur
  <math|A<rsub|3>>, sondern auch <math|A<rsub|4>> aus unserer Zieldatenbank
  löschen, die nun leer ist. Es gibt nichts mehr zu tun! Wir haben die
  ursprüngliche Aussage <math|A> erfolgreich auf weitere Aussagen reduziert,
  die wir nach und nach reduziert haben, bis uns die Dinge ausgegangen sind.
  Somit ist <math|A> unbestritten bewiesen.

  In einigen Fällen ist diese Methode mit den
  <with|font-shape|italic|Rückwärtsverkettungen><index|Rückwärtsverkettung>
  die naheliegendere, in anderen die ursprüngliche Methode \Rvon hinten nach
  vorne\P. Wir stellen eine an der JKU entwickelte Android-Anwendung vor, die
  spielerisch hilft, eine Zieldatenbank für die letztgenannte
  Rückwärtssuchmethode zu erstellen. Die Anwendung heiÿt
  <with|font-shape|italic|AXolotl><index|AXolotl>
  (<cite|RISC5887>,<cite|RISC5936>), und wir werden \RClassical Logic\P aus
  dem \RHamburger\P-Menü oben links auswählen, wo wir das oben Gesagte an der
  ersten Aufgabe des Aufgabensatzes \RHilbert Style\P demonstrieren werden.

  Wählen wir also das Problem <math|(p\<Rightarrow\>p)>. Oben auf dem
  Bildschirm des Mobiltelefons sehen wir die Zieldatenbank, die derzeit nur
  ein Element enthält, nämlich die Aufgabe selbst. Unten (unter dem
  Maskottchen-Logo des Programms) werden drei
  <with|font-shape|italic|Umschreibregeln><index|Umschreibregel> angezeigt,
  die jeweils den Regeln 4, 1 und 2 der vier Hilbert-Regeln entsprechen.
  Diese sind:

  <\enumerate-numeric>
    <item>Die Umschreibregel <math|\<vartriangle\>,y\<longrightarrow\>\<vartriangle\>,x,(x\<Rightarrow\>y)>
    bedeutet, dass wir eine beliebige Zieldatenbank der Form
    <math|\<vartriangle\>,y> in <math|\<vartriangle\>,x,(x\<Rightarrow\>y)>
    umschreiben können, wenn wir sie haben. Was bedeutet das genau? Die
    Notation <math|\<vartriangle\>> kann eine beliebige Folge von Symbolen
    bezeichnen, die hier eine Teilmenge der Einträge in der Zieldatenbank
    darstellt. Mit anderen Worten: <math|\<vartriangle\>> bezeichnet eine
    Menge von zu beweisenden Aussagen, denen wir ein <math|y> als Input unter
    der Annahme hinzufügen. Die Umschreibregel erlaubt es uns, dieses
    <math|y> durch ein <math|x> zu ersetzen, plus ein
    <math|(x\<Rightarrow\>y)>. Das bedeutet konkret, dass wir anstelle des
    Beweises der Aussage <math|y> als Ziel zwei andere Ziele angeben können:
    den Beweis der Aussage <math|x> und den Beweis der Aussage
    <math|(x\<Rightarrow\>y)>. Es ist klar, dass dies genau eine Umkehrung
    des modus ponens ist, denn es würde die Behauptung <math|y> genau aus den
    Behauptungen <math|x> und <math|(x\<Rightarrow\> y)> zusammengenommen
    ergeben.

    <item>Die Umschreibregel <math|\<vartriangle\>,(x\<Rightarrow\>(y\<Rightarrow\>x))\<longrightarrow\>\<vartriangle\>>
    bedeutet, dass wir den Zieleintrag <math|(x\<Rightarrow\>(y\<Rightarrow\>x))>
    ohne weiteren Aufwand loswerden können. Dies ist offensichtlich, denn es
    ist ohnehin eine Tautologie.

    <item>Abschlieÿend: die Umschreibregel
    <math|\<vartriangle\>,((x\<Rightarrow\>(y\<Rightarrow\>z))\<Rightarrow\>((x\<Rightarrow\>y)\<Rightarrow\>(x\<Rightarrow\>z)))\<longrightarrow\>\<vartriangle\>>
    bedeutet, dass die Langformel ebenfalls eine Tautologie ist und daher aus
    der Zieldatenbank gelöscht werden kann.
  </enumerate-numeric>

  Die 3.<abbr| >Umschreibregel im Hilbert-Kalkül wird in dieser Übung nicht
  angeboten: Wir haben sie in unserer vorherigen Herleitung nicht verwendet.
  Es kann aber auch bei anderen Problemen erforderlich sein.

  Schauen wir uns an, wie wir den Rückwärtsverkettung-Beweis in AXolotl
  \Rdurchspielen\P können:

  <\enumerate-numeric>
    <item>Wir wählen die erste Umschreibregel aus (Abbildung
    <reference|AX1>).

    <\big-figure>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|Screenshot_20221101-121119_AXolotl.jpg|162pt|361pt||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>
    <|big-figure>
      <label|AX1>
    </big-figure>

    <item>Jetzt sind <math|(p\<Rightarrow\>p)> und die erste Umschreibregel
    schwarz hervorgehoben. Wenn wir das Maskottchen des Spiels in die Mitte
    nach rechts ziehen, gelangen wir zu einem neuen Bildschirm, auf dem wir
    die Variablen für die Umschreibregel eingeben müssen.

    <\big-figure|<tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|Screenshot_20221101-121707_AXolotl.jpg|162pt|361pt||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>>
      <label|AX2>
    </big-figure>

    <item>In diesem Bildschirm (Abbildung <reference|AX2>) sehen wir, dass
    wir zunächst die Variable <math|y> angeben müssen. Das Programm lässt
    hier keine Wahl, denn nur die Substitution <math|y=(p\<Rightarrow\>p)>
    ist sinnvoll. Ziehen wir nun den gesamten Bildschirm nach rechts.

    <item>Auf dem nächsten Bildschirm wird die Variable <math|x> ersetzt. Das
    <math|x> wird durch einen schwarzen Punkt veranschaulicht, der in
    dreifacher Ausführung gezeigt wird (Abbildung <reference|AX3>):

    <\enumerate-alpha>
      <item>Oben sehen wir zwei Zeilen, die erste zeigt das Symbol selbst, da
      es (d.h.<abbr|> <math|x>) eine der neuen Zielformeln sein wird.

      <item>In der zweiten Zeile wird das Symbol auch in der Form
      <math|(x\<Rightarrow\> y)> angezeigt, da dies die andere Zielformel
      sein wird (in unserem Fall ist <math|y> bereits durch
      <math|(p\<Rightarrow\>p)> ersetzt).

      <item>Und darunter, in der Mitte des Bildschirms, sehen wir die
      beabsichtigte Ersetzung, die mit dem Ausdruckseditor am unteren Teil
      des Bildschirms wie folgt ganz genau eingegeben werden kann.

      <\big-figure|<tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|Screenshot_20221101-122142_AXolotl.jpg|162pt|361pt||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>>
        <label|AX3>
      </big-figure>
    </enumerate-alpha>

    <item>Wenn wir auf unsere frühere Herleitung der Rückwärtsableitung des
    Satzes <math|a\<Rightarrow\>a> zurückblicken, kommen wir zu dem Schluss,
    dass, da <math|A<rsub|1>=<around*|(|(a \<Rightarrow\> (b \<Rightarrow\>
    a)) \<Rightarrow\> (a \<Rightarrow\> a)|)>> dort die angemessene
    Ersetzung war, hier eine Substitution
    <math|x=<around*|(|p\<Rightarrow\><around*|(|q\<Rightarrow\>p|)>|)>>
    angemessen erscheint. Dies kann wie folgt dargestellt werden (Abbildung
    <reference|AX4>):

    <\enumerate-alpha>
      <item>Unten wählen wir die Klammer aus, die die Implikation enthält.
      Dann geht der schwarze Punkt an allen oben genannten Stellen in eine
      <math|<around*|(|\<bullet\>\<Rightarrow\>\<circ\>|)>> Form über.

      <item>Jetzt wollen wir <math|\<bullet\>> in <math|p> umwandeln, also
      wählen wir unten <math|p>. Alle drei
      <math|\<bullet\>\<Rightarrow\>\<circ\>> werden in die Form
      <math|p\<Rightarrow\>\<bullet\>> umgewandelt.

      <item>Wir wollen nun das gerade bearbeitete <math|\<bullet\>> Zeichen
      in eine Implikation umwandeln, um die Form <math|q\<Rightarrow\>p> zu
      erhalten. Daher wählen wir im Folgenden die Klammer, die die
      Implikation enthält, erneut aus. Unsere drei Formen von
      <math|p\<Rightarrow\>\<bullet\>> werden sofort in
      <math|p\<Rightarrow\><around*|(|\<bullet\>\<Rightarrow\>\<circ\>|)>>
      umgewandelt (eine kleine Änderung ist auÿerdem, dass die Reihenfolge
      der beiden neuen Anweisungen am oberen Bildschirmrand, die in unsere
      Zieldatenbank geschrieben werden sollen, umgekehrt wird).

      <item>Wir können nun festlegen, dass der erste Teil der neu gewählten
      Implikation <math|q> sein soll, indem wir ebenfalls unten <math|q>
      auswählen. Die drei Formen erscheinen nun als
      <math|p\<Rightarrow\><around*|(|q\<Rightarrow\>\<bullet\>|)>>.

      <item>Schlieÿlich legen wir fest, dass der zweite Teil der Implikation
      <math|p> sein soll. Wir wählen daher <math|p> aus der unteren Liste
      aus. Der schwarze Punkt ist aus den drei Formen verschwunden und wir
      sehen stattdessen überall <math|(p\<Rightarrow\>(q\<Rightarrow\>p))>.

      <\big-figure|<tabular*|<tformat|<twith|table-width|1par>|<twith|table-hyphen|yes>|<table|<row|<cell|<image|thumb1/Screenshot_20221101-123700_AXolotl.jpg|0.18par|||>>|<cell|<image|thumb1/Screenshot_20221101-123715_AXolotl.jpg|0.18par|||>>|<cell|<image|thumb1/Screenshot_20221101-123932_AXolotl.jpg|0.18par|||>>|<cell|<image|thumb1/Screenshot_20221101-124204_AXolotl.jpg|0.18par|||>>|<cell|<image|thumb1/Screenshot_20221101-124617_AXolotl.jpg|0.18par|||>>>>>>>
        <label|AX4>
      </big-figure>
    </enumerate-alpha>

    <item>Das Ersetzen wird nun abgeschlossen. Ziehen wir den Balken am
    unteren Rand des Bildschirms nach rechts, um das Ersetzen abzuschlieÿen
    und unsere Zieldatenbank zu aktualisieren.

    <item>Der erste Eintrag in unserer Zieldatenbank ist offensichtlich eine
    Tautologie, das wissen wir aus Regel 1 des Hilbert-Kalküls, aber in
    dieser Übung des AXolotl-Spiels müssen wir die Umschreibregel 2 anwenden.
    Markieren wir also den ersten Eintrag und schreiben die Regel 2 um, dann
    ziehen wir das Maskottchen nach rechts (Abbildung <reference|AX5>).

    <\big-figure|<tabular*|<tformat|<twith|table-width|1par>|<twith|table-hyphen|yes>|<table|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|thumb2/Screenshot_20221101-124755_AXolotl.jpg|0.36par|||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|thumb2/Screenshot_20221101-125030_AXolotl.jpg|0.36par|||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>>>>>>>
      <label|AX5>
    </big-figure>

    <item>Zu unserem Glück hat das Spiel herausgefunden, dass in der
    Umschreibregel <math|x> gleich <math|p> sein wird. Wir müssen diese
    Entscheidung nur akzeptieren (wiederum durch Ziehen der unteren Linie
    nach rechts). Die gleiche automatische Identifizierung erfolgt im Schritt
    <math|y=q>. Durch wiederholtes Ziehen der unteren Zeile nach rechts
    gelangen wir zurück zum Maskottchen, wo wir nur noch die Zielformel
    <math|((p\<Rightarrow\>(q\<Rightarrow\>p))\<Rightarrow\>(p\<Rightarrow\>p))>
    beweisen müssen (siehe Abbildung <reference|AX6>).

    <\big-figure|<tabular*|<tformat|<twith|table-width|1par>|<twith|table-hyphen|yes>|<table|<row|<cell|<image|thumb3/Screenshot_20221101-125403_AXolotl.jpg|0.313333333333333par|||>>|<cell|<image|thumb3/Screenshot_20221101-125544_AXolotl.jpg|0.313333333333333par|||>>|<cell|<image|thumb3/Screenshot_20221101-125652_AXolotl.jpg|0.313333333333333par|||>>>>>>>
      <label|AX6>
    </big-figure>

    <item>Was nun? Wir sind jetzt an dem Punkt, an dem wir <math|A<rsub|1>>
    oben durch <math|A<rsub|3>> und <math|A<rsub|4>> ersetzt haben. Wir
    werden nun analog vorgehen und den modus ponens rückwärts anwenden. Das
    heiÿt, wir müssen die Umschreibregel 1 anwenden. Ziehen wir also den
    Bildschirm nach rechts durch das Maskottchen (Abbildung <reference|AX7>).

    <\big-figure|<image|Screenshot_20221101-130320_AXolotl.jpg|81pt|180pt||>>
      <label|AX7>
    </big-figure>

    <item>Im ersten Schritt der Substitution gibt es keine groÿen
    Abweichungen, <math|y> hat eindeutig die Form
    <math|((p\<Rightarrow\>(q\<Rightarrow\>(q\<Rightarrow\>p))\<Rightarrow\>(p\<Rightarrow\>p))>.
    Im weiteren Verlauf wird die untere Linie nach rechts gezogen (Abbildung
    <reference|AX8>).

    <\big-figure|<image|Screenshot_20221101-130430_AXolotl.jpg|81pt|180pt||>>
      <label|AX8>
    </big-figure>

    <item>Es folgt die Substitution von <math|x>. Hier müssen wir einen Trick
    anwenden: Wenn wir <math|A<rsub|3>=a \<Rightarrow\> ((b \<Rightarrow\> a)
    \<Rightarrow\> a)> betrachten, finden wir, dass
    <math|x=p\<Rightarrow\><around*|(|<around*|(|q\<Rightarrow\>p|)>\<Rightarrow\>p|)>>
    die gewinnende Substitution ist. Dies kann wie folgt dargestellt werden
    (Abbildung <reference|AX9>):

    <\enumerate-alpha>
      <item>Wir ersetzen zunächst <math|\<bullet\>> durch
      <math|(\<circ\>\<Rightarrow\>\<circ\>)>.

      <item>Der schwarze Punkt von der Formel
      <math|<around*|(|\<bullet\>\<Rightarrow\>\<circ\>|)>>, die stattdessen
      erscheint, wird in <math|p> umgeschrieben. Stattdessen sehen wir nun
      <math|<around*|(|p\<Rightarrow\>\<bullet\>|)>>. (Die beiden oberen
      Zeilen sind wieder umgekehrt. Ein guter Versuch, den Nutzer zu
      erschrecken, ist aber nur ein misslungener Trick seitens des Spiels.)

      <item>Das neue <math|\<bullet\>> wird nun durch eine neue Implikation
      ersetzt: in den drei Formeln steht <math|<around*|(|p\<Rightarrow\><around*|(|\<bullet\>\<Rightarrow\>\<circ\>|)>|)>>.

      <item>Wir ersetzen die resultierende <math|\<bullet\>> durch eine neue
      Implikation. (Entspannen Sie sich, dies wird die letzte sein!) Jetzt
      sehen wir also <math|<around*|(|p\<Rightarrow\><around*|(|<around*|(|\<bullet\>\<Rightarrow\>\<circ\>|)>\<Rightarrow\>\<circ\>|)>|)>>
      in allen drei Formeln.

      <item>In den letzten drei Schritten geben wir jeweils einzeln anstelle
      des erscheinenden Cursors <math|\<bullet\>> <math|q>, <math|p> und dann
      wieder <math|p> an. Die endgültige Formel lautet dann einfach
      <math|(p\<Rightarrow\>((q\<Rightarrow\>p)\<Rightarrow\>p))>.

      <\big-figure|<tabular*|<tformat|<twith|table-width|1par>|<twith|table-hyphen|yes>|<table|<row|<cell|<image|thumb4/Screenshot_20221101-130834_AXolotl.jpg|0.146666666666667par|||>>|<cell|<image|thumb4/Screenshot_20221101-130922_AXolotl.jpg|0.146666666666667par|||>>|<cell|<image|thumb4/Screenshot_20221101-130955_AXolotl.jpg|0.146666666666667par|||>>|<cell|<image|thumb4/Screenshot_20221101-131513_AXolotl.jpg|0.146666666666667par|||>>|<cell|<image|thumb4/Screenshot_20221101-133122_AXolotl.jpg|0.146666666666667par|||>>|<cell|<image|thumb4/Screenshot_20221101-133355_AXolotl.jpg|0.146666666666667par|||>>>>>>>
        <label|AX9>
      </big-figure>
    </enumerate-alpha>

    (Wenn wir die Formel falsch geschrieben haben, können wir mit dem Symbol
    \RNeu laden\P in der Mitte rechts zum vorherigen Zustand zurückkehren.)

    <item>Ziehen wir die untere Reihe wieder nach rechts und wir sind wieder
    beim Maskottchen. Toll! Wir haben aber zwei Formeln, die den vorherigen
    Formeln <math|A<rsub|3>> und <math|A<rsub|4>> entsprechen. Die erste
    Formel ist offensichtlich eine Tautologie, und wir können sie mit Hilfe
    von Umschreibregel 2 eliminieren. Wir wählen also die erste Formel und
    die Umschreibregel 2 aus, ziehen das Maskottchen nach rechts,
    identifizieren die Substitutionen <math|x=p> und
    <math|y=(q\<Rightarrow\>p)> und kehren zum Maskottchen-Bildschirm zurück,
    wo nur noch der Beweis der langen Zielformel für <math|A<rsub|4>> übrig
    ist (Abbildung <reference|AX10>).

    <\big-figure|<tabular*|<tformat|<twith|table-width|1par>|<twith|table-hyphen|yes>|<table|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|thumb5/Screenshot_20221101-134242_AXolotl.jpg|0.36par|||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-background|black>|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<image|thumb5/Screenshot_20221101-134505_AXolotl.jpg|0.36par|||>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>>>>>>>>
      <label|AX10>
    </big-figure>

    <item>Es ist jedoch klar, dass dies mit der Umschreibregel 3 beseitigt
    werden kann. Wählen wir sie aus (zusammen mit der oben bereits
    automatisch ausgewählten Formel), ziehen wir das Maskottchen nach rechts
    und akzeptieren wir dann die automatisch angebotenen Ersetzungen
    <math|x=p>, <math|y=(q\<Rightarrow\>p)>, <math|z=p>. Im Moment der
    letzten Annahme erscheint unser Maskottchen allein auf dem Bildschirm und
    gratuliert uns, dass wir alle Zielformeln bewiesen haben. Es gibt keine
    weiteren Ziele, der Beweis ist also erbracht (siehe Abbildung
    <reference|AX11>).

    <\big-figure|<tabular*|<tformat|<twith|table-width|1par>|<twith|table-hyphen|yes>|<table|<row|<cell|<image|thumb6/Screenshot_20221101-134619_AXolotl.jpg|0.313333333333333par|||>>|<cell|<image|thumb6/Screenshot_20221101-134744_AXolotl.jpg|0.313333333333333par|||>>|<cell|<image|thumb6/Screenshot_20221101-134753_AXolotl.jpg|0.313333333333333par|||>>>>>>>
      <label|AX11>
    </big-figure>

    <item>Im Hamburger-Menü (oben links) können wir nun \RView Proof\P wählen
    und die folgende spektakuläre Ausgabe sehen:

    <\with|par-mode|center>
      <image|Screenshot_20221101-135722_AXolotl.jpg|162pt|361pt||>
    </with>

    Dieser Screenshot (den wir übrigens teilweise vergröÿern können) bedarf
    einiger Erläuterungen. Der obige Teil zeigt die Umschreibregeln in einer
    Form, die dem Beispiel in Definition 2.27 des Skriptums
    <cite|Pillichshammer2022> ähnelt. Die Umschreibregeln haben hier Namen:
    die erste Regel heiÿt [MP], die zweite [Weak], die dritte
    [\<Rightarrow\>-Dist]. Im unteren Teil werden diese Regeln grafisch durch
    das Programm genauso dargestellt. Wenn Sie dem
    <LaTeX>-System<index|<LaTeX>> nicht abgeneigt sind, können Sie das
    Diagramm in diesem Format in die Zwischenablage exportieren, um es dann
    per E-Mail zu versenden, zu speichern und in ein <LaTeX>-System zu laden,
    und sogar eine Ausgabe in Druckqualität zu erstellen. Etwa so:

    <\with|par-mode|center>
      <image|AX1-pdf.png|360pt|27.6pt||>
    </with>

    Es liegt nun an uns, unseren Beweis entweder von oben nach unten (das ist
    die normale Herleitung: die Backward-Forward-Methode) oder von unten nach
    oben (das ist die Rückwärtsverkettung) zu konstruieren.
  </enumerate-numeric>

  Der Leser mag sich wundern, warum eine so einfache Aussage wie
  <math|p\<Rightarrow\> p> einen so langwierigen Beweis benötigt. Ja, ja: Die
  Wahrheitstabelle wäre schon längst in 30 Exemplaren fertig gewesen. In der
  Tat, aber denken Sie daran: Herleitungen funktionieren auch in
  allgemeineren Systemen, nicht nur in der Aussagenlogik!

  Es gibt jedoch noch eine schlechtere Nachricht: Komplexere Theoreme
  erfordern viel komplexere Herleitungen, zumindest im Hilbert-Kalkül oder
  gleichwertigen Systemen. Um Ihnen eine Vorstellung von ihrer Komplexität zu
  geben, finden Sie hier ein paar Beispiele -- und wenn diese zu einfach
  sind, findet der Leser weitere Übungen in AXolotl.\ 

  \;

  <subsection|Vorgeschlagene Aufgaben in AXolotl>

  <\enumerate>
    <item>Leiten Sie <math|((B\<Rightarrow\>C)\<Rightarrow\>((A\<Rightarrow\>B)\<Rightarrow\>(A\<Rightarrow\>C)))>
    ab. (Hinweis: Unter <slink|https://en.wikipedia.org/wiki/Hypothetical_syllogism>
    finden Sie die gleiche Formel wie HS2 und einen Link zu ihrer Herleitung
    im Hilbert-Kalkül.)

    <item>Erkunden Sie das \RTerm Matching\P-Menü des Hamburger-Menüs und
    lösen Sie darin Aufgabe 1.

    <item>Wäre eine Herleitung der Aufgabe <math|p\<Rightarrow\> p> auch ohne
    <math|q> möglich?
  </enumerate>

  <section|Zwischenspiel: Damen oder Tiger?>

  Ein über die Axiome des Hilbert-Kalküls hinausgehendes Herleitungssystem
  wird demnächst in dem Computerprogramm Aris <cite|aris> vorgestellt werden.
  Die Anzahl der Axiome wird viel gröÿer sein und die Art und Weise, wie sie
  angewendet werden, wird etwas lockerer sein, aber unsere Ergebnisse werden
  nicht erweitert, weil das Herleitungssystem äquivalent zum Hilbert-Kalkül
  bleiben wird. Eine gröÿere Anzahl von Ergebnissen wäre nicht möglich, da
  das Hilbert-Kalkül in sich vollständig ist.

  In der Zwischenzeit gibt es jedoch einige Rätsel, die eine gute Grundlage
  dafür bieten, ihre Lösungen zunächst \Rvon Hand\P zu geben und sie dann
  \Rmaschinell\P zu verfeinern, um \Rakzeptabel herstellbare\P oder
  \Rakzeptabel lesbare\P Herleitungen zu erhalten. Was
  <with|font-shape|italic|akzeptabel> ist, ist natürlich Geschmackssache,
  aber in jedem Fall hat uns die minimale Anzahl von Axiomen im
  Hilbert-Kalkül gezwungen, für diese Eleganz mit der Schwierigkeit oder
  Länge der Herleitungen zu bezahlen.

  In diesem Unterkapitel geben wir Kapitel 2 aus dem Buch <cite|RS-DT> von
  Raymond Smullyan im Wesentlichen unverändert wieder. Nachdem wir einige
  Lösungen erörtert haben, wenden wir uns den Möglichkeiten des Programms
  Aris zu.

  <subsection|Einleitung von Smullyan>

  Viele von Ihnen kennen vielleicht schon Frank Stocktons Geschichte
  <with|font-shape|italic|Die Lady oder der Tiger?> Dort muss der Gefangene
  zwischen zwei Räumen wählen; in dem einen befindet sich eine Dame, im
  andern lauert ein Tiger. Wenn er ersteren wählt, kann er die Dame heiraten;
  wählt er letzteren, so wird er (wahrscheinlich) vom Tatzentier verspeist.

  Der König eines nicht näher bestimmten Landes hatte diese Geschichte auch
  gelesen, und sie brachte ihn auf eine Idee: \RGenau das richtige, um meine
  Gefangenen auf die Probe zu stellen!\P, sagte er eines Tages zu seinem
  Minister. \RNur will ich es nicht dem Zufall überlassen. Ich werde Schilder
  an den Türen zu den Räumen anbringen lassen und in jedem Einzelfall dem
  Gefangenen bestimmte Informationen zu den Schildern mitteilen. Wenn der
  Gefangene schlau ist und logisch schlussfolgern kann, rettet er sein Leben
  \U und bekommt überdies noch eine hübsche Braut.\P

  \RAusgezeichnete Idee!\P, sagte der Minister.

  <subsection|Die Versuche des ersten Tages>

  Am ersten Tag fanden drei Versuche statt. Bei allen dreien erklärte der
  König den Gefangenen, dass in jedem der beiden Räume sich entweder eine
  Dame oder ein Tiger befände, aber es könnte sein, dass Tiger in beiden
  Räumen oder Damen in beiden Räumen oder eben auch möglicherweise in dem
  einen eine Dame und im andern ein Tiger wären.

  <subsubsection*|Der erste Versuch>

  \RAngenommen, in beiden Räumen sind Tiger\P, fragte der Gefangene, \Rwas
  mache ich dann?\P

  \RDas ist dein Pech!\P, erwiderte der König.

  \RUnd angenommen, in beiden Räumen sind Damen?\P, fragte der Gefangene.

  \RDas ist dann offensichtlich dein Glück\P, entgegnete der König. \RDie
  Antwort darauf hättest du sicher selbst erraten können.\P

  \RNun, angenommen, in dem einen Raum befindet sich eine Dame und in dem
  andern ein Tiger, was passiert dann?\P, fragte der Gefangene zum dritten
  Mal.

  \RIn diesem Fall macht es einen ganz schönen Unterschied, für welchen Raum
  du dich entscheidest, nicht wahr?\P

  \RWoher weiÿ ich aber, für welchen ich mich entscheiden soll?\P, wollte der
  Gefangene wissen.

  Der König zeigte auf die Schilder an den Türen, die zu den Räumen führten:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      In diesem Raum ist eine Dame, und in dem anderen Raum ist ein Tiger.
    </cell>|<cell|>|<\cell>
      In einem dieser Räume ist eine Dame, und in einem dieser Räume ist ein
      Tiger.
    </cell>>>>>
  </with>

  \;

  \RStimmt denn das, was auf den Schildern steht?\P, fragte der Gefangene.

  \REin Schild ist richtig\P, erwiderte der König, \Raber das andere ist
  falsch.\P

  Wenn <with|font-shape|italic|Sie> der Gefangene wären, welche Tür würden
  Sie öffnen (vorausgesetzt natürlich, dass Sie die Dame dem Tiger
  vorziehen)?

  <subsubsection*|Der zweite Versuch>

  Der erste Gefangene rettete somit sein Leben und ging mit der Dame auf und
  davon. Dann wurden die Schilder an den Türen ausgewechselt und
  entsprechende neue Insassen für die Räume bestimmt. Diesmal lauteten die
  Schilder folgendermaÿen:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      Zumindest in einem dieser Räume ist eine Dame.
    </cell>|<cell|>|<\cell>
      Im andern Raum befindet sich ein Tiger.
    </cell>>>>>
  </with>

  \;

  \RStimmt, was auf den Schildern steht?\P, fragte der zweite Gefangene.

  \RSie sind entweder beide falsch oder beide richtig\P, erwiderte der König.

  Welchen Raum sollte der Gefangene wählen?

  <subsubsection*|Der dritte Versuch>

  Nun erklärte der König, dass wiederum beide Schilder richtig oder falsch
  wären. Hier sind sie:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      Entweder ist ein Tiger in diesem Raum oder eine Dame im andern.
    </cell>|<cell|>|<\cell>
      Im andern Raum ist eine Dame.
    </cell>>>>>
  </with>

  \;

  Befindet sich im ersten Raum eine Dame oder ein Tiger? Und wie steht es mit
  dem andern Raum?

  <subsection|Die Versuche des zweiten Tages>

  \RDas war wirklich ein Reinfall gestern\P, sagte der König am zweiten Tag
  brummig zu seinem Minister. \RAlle drei Gefangenen haben ihr Rätsel gelöst!
  Nun denn, heute stehen fünf Versuche an, und ich denke, ich mache sie ein
  wenig kniffliger.\P

  \RAusgezeichnete Idee!\P, sagte der Minister.

  \RGut, in jedem der heutigen Versuche\P, so erläuterte der König, \Rist das
  Schild an der linken Tür (Raum I) richtig, wenn sich eine Dame dahinter
  befindet, doch es ist falsch, wenn ein Tiger im Zimmer ist. Im rechten Raum
  (Raum II) steht die Sache umgekehrt: eine Dame im Zimmer bedeutet, das
  Schild an der Tür ist falsch, und ein Tiger in dem Raum heiÿt, das Schild
  ist richtig. Wiederum besteht die Möglichkeit, dass in beiden Räumen Damen
  oder in beiden Tiger sind, oder dass sich in dem einen Raum eine Dame und
  in dem andern ein Tiger befindet.\P

  <subsubsection*|Der vierte Versuch>

  Nachdem der König dem Gefangenen die obigen Regeln erklärt hatte, wies er
  auf die beiden Schilder:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      In beiden Räumen sind Damen.
    </cell>|<cell|>|<\cell>
      In beiden Räumen sind Damen.
    </cell>>>>>
  </with>

  \;

  Welchen Raum sollte der Gefangene wählen?

  <subsubsection*|Der fünfte Versuch>

  Es gelten dieselben Regeln, und die Schilder lauteten so:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      Zumindest in einem Raum ist eine Dame.
    </cell>|<cell|>|<\cell>
      Im andern Raum ist eine Dame.
    </cell>>>>>
  </with>

  \;

  Wie sollte der Gefangene sich entscheiden?

  <subsubsection*|Der sechste Versuch>

  Von dieser und der folgenden Aufgabe war der König besonders angetan. So
  sahen die Schilder aus:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      Die Wahl des Raumes ist egal.
    </cell>|<cell|>|<\cell>
      Im andern Raum ist eine Dame.
    </cell>>>>>
  </with>

  \;

  Welche Tür sollte der Gefangene öffnen?

  <subsubsection*|Der siebente Versuch>

  Dies waren die Schilder:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-width|5cm>|<cwith|2|2|3|3|cell-hmode|min>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<table|<row|<cell|I>|<cell|>|<cell|II>>|<row|<\cell>
      Die Wahl des Raumes ist entscheidend.
    </cell>|<cell|>|<\cell>
      Es ist günstiger, den andern Raum zu wählen.
    </cell>>>>>
  </with>

  \;

  Nach welcher Türklinke sollte der Gefangene greifen?

  <subsubsection*|Der achte Versuch>

  \RDa sind ja überhaupt keine Schilder an der Tür!\P, rief der Gefangene
  erschrocken aus.

  \RGanz richtig\P, sagte der König und nickte. \RDie Schilder sind gerade
  fertig geworden, und ich hatte noch keine Zeit, sie anzubringen.\P

  \RWie können Sie dann erwarten, dass ich mich entscheide?\P, zeterte der
  Gefangene.

  \RAlso gut, hier sind die Hinweise\P, entgegnete der König groÿmütig.

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<table|<row|<cell|>>|<row|<\cell>
      In diesem Raum ist ein Tiger.
    </cell>>>>>
  </with>

  \;

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<table|<row|<cell|>>|<row|<\cell>
      In beiden Räumen sind Tiger.
    </cell>>>>>
  </with>

  \;

  \RDas ist zwar sehr liebenswürdig\P, bemerkte der Gefangene besorgt, \Raber
  welches Schild kommt an welche Tür?\P

  Der König legte den Kopf schief und dachte ein bisschen nach. \RIch brauche
  dir das gar nicht mitzuteilen\P, antwortete er. \RDu kannst das Problem
  auch ohne diese Information lösen.\P Und fügte hinzu: \RBedenke natürlich
  nur, eine Dame im linken Raum bedeutet, dass das Schild an der Tür richtig
  sein muss, und ein Tiger bedeutet, er ist falsch. Und für den rechten Raum
  gilt das Gegenteil.\P

  Wie heiÿt die Lösung?

  <subsection|Die Versuche des dritten Tages>

  \RZum Henker!\P, knirschte der König. \RWieder haben alle Gefangenen
  gewonnen! Ich glaube, morgen mache ich es mit <with|font-shape|italic|drei>
  Räumen anstatt zweien. Eine Dame kommt in einen Raum und jeweils ein Tiger
  in die beiden andern. Dann werden wir schon sehen, wie es den Gefangenen
  ergeht!\P

  \RAusgezeichnete Idee!\P, sagte der Minister.

  \REure Art der Konversation hat, obwohl sie mir gefallen will, ein wenig
  die Tendenz, sich zu wiederholen!\P, rief der König aus.

  \RTrefflichst bemerkt!\P, sagte der Minister.

  <subsubsection*|Der neunte Versuch>

  Nun, am dritten Tag tat der König wie geplant. Da gab es drei Räume,
  zwischen denen zu wählen war, und er erklärte dem Gefangenen, dass in einem
  Raum die Dame sei und dass sich in den andern beiden Tiger befänden. Dies
  waren die Schilder:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<cwith|2|2|5|5|cell-hyphen|c>|<cwith|1|1|5|5|cell-tborder|1ln>|<cwith|2|2|5|5|cell-bborder|1ln>|<cwith|1|2|5|5|cell-lborder|1ln>|<cwith|1|2|5|5|cell-rborder|1ln>|<cwith|1|2|5|5|cell-background|pastel
    blue>|<cwith|1|-1|5|5|cell-width|4cm>|<cwith|1|-1|5|5|cell-hmode|exact>|<cwith|2|2|5|5|cell-width|4cm>|<cwith|2|2|5|5|cell-hmode|exact>|<cwith|1|-1|3|3|cell-width|4cm>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|4cm>|<cwith|1|-1|1|1|cell-hmode|exact>|<table|<row|<cell|I>|<cell|>|<cell|II>|<cell|>|<cell|III>>|<row|<\cell>
      In diesem Raum ist ein Tiger.
    </cell>|<cell|>|<\cell>
      In diesem Raum ist eine Dame.
    </cell>|<cell|>|<\cell>
      In Raum II ist ein Tiger.
    </cell>>>>>
  </with>

  \;

  Der König wies noch schnell darauf hin, dass höchstens eines der drei
  Schilder richtig sei. In welchem Raum ist nun die Dame?

  <subsubsection*|Der zehnte Versuch>

  Wieder handelte es sich um eine Dame und zwei Tiger. Der König erklärte dem
  Gefangenen, dass das Schild zu dem Raum, in dem sich die Dame befände,
  richtig sei und wenigstens eines der andern beiden Schilder falsch.

  Die Schilder lauteten so:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<cwith|2|2|5|5|cell-hyphen|c>|<cwith|1|1|5|5|cell-tborder|1ln>|<cwith|2|2|5|5|cell-bborder|1ln>|<cwith|1|2|5|5|cell-lborder|1ln>|<cwith|1|2|5|5|cell-rborder|1ln>|<cwith|1|2|5|5|cell-background|pastel
    blue>|<cwith|1|-1|5|5|cell-width|4cm>|<cwith|1|-1|5|5|cell-hmode|exact>|<cwith|2|2|5|5|cell-width|4cm>|<cwith|2|2|5|5|cell-hmode|exact>|<cwith|1|-1|3|3|cell-width|4cm>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|4cm>|<cwith|1|-1|1|1|cell-hmode|exact>|<table|<row|<cell|I>|<cell|>|<cell|II>|<cell|>|<cell|III>>|<row|<\cell>
      In Raum II ist ein Tiger.
    </cell>|<cell|>|<\cell>
      In diesem Raum ist ein Tiger.
    </cell>|<cell|>|<\cell>
      In Raum I ist ein Tiger.
    </cell>>>>>
  </with>

  \;

  Welche Tür sollte der Gefangene öffnen?

  <subsubsection*|Erste, zweite und dritte Wahl>

  Bei diesem etwas seltsam erscheinenden elften Versuch erklärte der König
  dem Gefangenen, dass sich in einem der drei Räume eine Dame befände, im
  andern ein Tiger, und der dritte Raum wäre leer. Das Schild zu dem Raum mit
  der Dame wäre richtig, das Schild zum Raum mit dem Tiger falsch, und das
  Schild zu dem leeren Zimmer könnte entweder falsch oder richtig sein. Hier
  sind die Schilder:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|2|2|1|1|cell-hyphen|c>|<cwith|2|2|3|3|cell-hyphen|c>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<cwith|2|2|5|5|cell-hyphen|c>|<cwith|1|1|5|5|cell-tborder|1ln>|<cwith|2|2|5|5|cell-bborder|1ln>|<cwith|1|2|5|5|cell-lborder|1ln>|<cwith|1|2|5|5|cell-rborder|1ln>|<cwith|1|2|5|5|cell-background|pastel
    blue>|<cwith|1|-1|5|5|cell-width|4cm>|<cwith|1|-1|5|5|cell-hmode|exact>|<cwith|2|2|5|5|cell-width|4cm>|<cwith|2|2|5|5|cell-hmode|exact>|<cwith|1|-1|3|3|cell-width|4cm>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|4cm>|<cwith|1|-1|1|1|cell-hmode|exact>|<table|<row|<cell|I>|<cell|>|<cell|II>|<cell|>|<cell|III>>|<row|<\cell>
      Raum III ist leer.
    </cell>|<cell|>|<\cell>
      In Raum I ist der Tiger.
    </cell>|<cell|>|<\cell>
      Dieser Raum ist leer.
    </cell>>>>>
  </with>

  \;

  Nun kannte der Gefangene zufällig die betreffende Dame und wünschte sich,
  sie zu heiraten. Deshalb fiel seine erste Wahl auf den Raum mit der Dame,
  obwohl er den leeren Raum natürlich auch dem mit dem Tiger vorgezogen
  hätte.

  In welchem Raum ist die Dame und in welchem der Tiger? Wenn Sie diese
  beiden Fragen beantworten können, dürften Sie es nicht mehr schwierig
  finden zu sagen, welcher Raum leer ist.

  <subsection|Der vierte Tag>

  \REntsetzlich\P, stöhnte der König. \RMir scheint, ich kann meine Rätsel
  nicht schwer genug machen, um diese Burschen hereinzulegen. Nun, wir haben
  nur noch einen Versuch, den zwölften, aber diesmal soll der Gefangene
  <with|font-shape|italic|wirklich> nichts umsonst bekommen!\P

  \RAusgezeichnete Idee\P, sagte der Minister.

  <subsubsection*|Ein logisches Labyrinth>

  Nun, der König stand zu seinem Wort. Anstatt den nächsten Gefangenen
  zwischen drei Räumen wählen zu lassen, gab er ihm neun. Seinen
  Erläuterungen zufolge war nur in einem Raum eine Dame; jeder der übrigen
  acht war entweder leer, oder ein Tiger befand sich darin. Und der König
  fügte hinzu, dass das Schild zu dem Raum mit der Dame richtig sei, die
  Schilder zu den Räumen mit Tigern falsch und die Schilder zu den leeren
  Räumen entweder richtig oder falsch.

  Dies waren die Schilder:

  \;

  <\with|par-mode|center>
    <tabular*|<tformat|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
    blue>|<cwith|1|-1|3|3|cell-background|pastel
    blue>|<cwith|1|1|5|5|cell-tborder|1ln>|<cwith|2|2|5|5|cell-bborder|1ln>|<cwith|1|2|5|5|cell-lborder|1ln>|<cwith|1|2|5|5|cell-rborder|1ln>|<cwith|1|2|5|5|cell-background|pastel
    blue>|<cwith|1|-1|5|5|cell-width|4cm>|<cwith|1|-1|5|5|cell-hmode|exact>|<cwith|2|2|5|5|cell-width|4cm>|<cwith|2|2|5|5|cell-hmode|exact>|<cwith|1|-1|1|1|cell-width|4cm>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|3|4|1|1|cell-lborder|0ln>|<cwith|3|4|1|1|cell-rborder|0ln>|<cwith|3|4|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|1ln>|<cwith|2|2|2|2|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-width|4cm>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|3|3|1|1|cell-background|>|<cwith|3|3|3|3|cell-background|>|<cwith|6|6|1|1|cell-background|>|<cwith|6|6|3|3|cell-background|>|<cwith|4|5|5|5|cell-background|pastel
    blue>|<cwith|7|8|5|5|cell-background|pastel
    blue>|<cwith|4|8|1|-1|cell-tborder|0ln>|<cwith|4|8|1|-1|cell-bborder|0ln>|<cwith|4|8|1|-1|cell-lborder|0ln>|<cwith|4|8|1|-1|cell-rborder|0ln>|<cwith|3|3|1|-1|cell-bborder|0ln>|<cwith|3|3|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|3|3|3|3|cell-lborder|0ln>|<cwith|3|3|2|2|cell-rborder|0ln>|<cwith|3|3|3|3|cell-rborder|0ln>|<cwith|3|3|4|4|cell-lborder|0ln>|<cwith|4|4|1|1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-bborder|1ln>|<cwith|5|5|1|1|cell-bborder|1ln>|<cwith|6|6|1|1|cell-tborder|1ln>|<cwith|4|5|1|1|cell-lborder|1ln>|<cwith|4|5|1|1|cell-rborder|1ln>|<cwith|4|5|2|2|cell-lborder|1ln>|<cwith|4|4|3|3|cell-tborder|1ln>|<cwith|3|3|3|3|cell-bborder|1ln>|<cwith|5|5|3|3|cell-bborder|1ln>|<cwith|6|6|3|3|cell-tborder|1ln>|<cwith|4|5|3|3|cell-lborder|1ln>|<cwith|4|5|2|2|cell-rborder|1ln>|<cwith|4|5|3|3|cell-rborder|1ln>|<cwith|4|5|4|4|cell-lborder|1ln>|<cwith|4|4|5|5|cell-tborder|1ln>|<cwith|3|3|5|5|cell-bborder|1ln>|<cwith|5|5|5|5|cell-bborder|1ln>|<cwith|6|6|5|5|cell-tborder|1ln>|<cwith|4|5|5|5|cell-lborder|1ln>|<cwith|4|5|4|4|cell-rborder|1ln>|<cwith|4|5|5|5|cell-rborder|1ln>|<cwith|7|7|1|1|cell-tborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|8|8|1|1|cell-bborder|1ln>|<cwith|7|8|1|1|cell-lborder|1ln>|<cwith|7|8|1|1|cell-rborder|1ln>|<cwith|7|8|2|2|cell-lborder|1ln>|<cwith|7|7|3|3|cell-tborder|1ln>|<cwith|6|6|3|3|cell-bborder|1ln>|<cwith|8|8|3|3|cell-bborder|1ln>|<cwith|7|8|3|3|cell-lborder|1ln>|<cwith|7|8|2|2|cell-rborder|1ln>|<cwith|7|8|3|3|cell-rborder|1ln>|<cwith|7|8|4|4|cell-lborder|1ln>|<cwith|7|7|5|5|cell-tborder|1ln>|<cwith|6|6|5|5|cell-bborder|1ln>|<cwith|8|8|5|5|cell-bborder|1ln>|<cwith|7|8|5|5|cell-lborder|1ln>|<cwith|7|8|4|4|cell-rborder|1ln>|<cwith|7|8|5|5|cell-rborder|1ln>|<table|<row|<\cell>
      I
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      II
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      III
    </cell>>|<row|<\cell>
      Die Dame ist in einem Raum mit ungerader Zahl.
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      Dieser Raum ist leer.
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      Entweder ist Schild V richtig, oder Schild VII ist falsch.
    </cell>>|<row|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>>|<row|<\cell>
      IV
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      V
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      VI
    </cell>>|<row|<\cell>
      Schild I ist falsch.
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      Entweder Schild II oder Schild IV ist richtig.
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      Schild III ist falsch.
    </cell>>|<row|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>>|<row|<\cell>
      VII
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      VIII
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      IX
    </cell>>|<row|<\cell>
      Die Dame ist nicht in Raum I.
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      In diesem Raum ist ein Tiger, und Raum IX ist leer.
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      In diesem Raum ist ein Tiger, und Schild VI ist falsch.
    </cell>>>>>
  </with>

  \;

  Der Gefangene dachte lange über die Situation nach.

  \RDas Problem ist unlösbar!\P, rief er ärgerlich aus. \RDas ist nicht
  fair!\P

  \RIch weiÿ\P, lachte der König.

  \RSehr witzig!\P, entgegnete der Gefangene. \RDoch jetzt mal ehrlich, gebt
  mir wenigstens einen bescheidenen Anhaltspunkt: Ist Raum VIII leer oder
  nicht?\P

  Der König war anständig genug, ihm zu sagen, ob Raum VIII leer war oder
  nicht, und der Gefangene sah sich alsdann in der Lage herauszufinden, wo
  sich die Dame befand.

  In welchem Raum war sie?

  <section|Herleitungen auf eine etwas andere Art>

  In diesem Unterabschnitt stellen wir <with|font-shape|italic|GNU
  Aris><index|GNU Aris><glossary-explain|GNU|GNU's Not Unix> vor, mit dem wir
  besser lesbare Herleitungen erstellen können. GNU Aris ist eine
  Open-Source-Software, die vor einigen Jahren von
  <with|font-shape|italic|Ian Dunn> hauptsächlich für Bildungszwecke
  entwickelt wurde. Wir werden eine leicht verbesserte Version seiner
  Software verwenden, die von <slink|https://github.com/kovzol/aris/releases>
  heruntergeladen werden kann (zum Zeitpunkt der Erstellung dieses Artikels
  nur für Windows-Systeme<\footnote>
    Für Linux-Systeme gibt es eine Universalversion unter
    <slink|https://snapcraft.io/aris/>.
  </footnote>).

  Der beste Weg, das Programm kennenzulernen, sind die Beispieldateien. Sie
  können Beispieldateien über die Menüoption
  <samp|File><math|\<rightarrow\>><samp|Open> im Hauptfenster laden. Die
  erste zu ladende Datei ist nun <with|font-series|bold|proofs/inference/pf-mp.tle>,
  die die Anwendung des modus ponens demonstriert, den wir bereits gesehen
  haben (Abbildung <reference|aris-mp>).

  <\big-figure|<image|aris-mp.png|50%|||>>
    <label|aris-mp>
  </big-figure>

  Der Bildschirm zeigt 6 Aussagen, die fortlaufend nummeriert sind. Sie sind
  durch eine horizontale Linie in der Mitte getrennt. Oberhalb der Linie
  befinden sich die Prämissen und unterhalb der Linie die Schlussfolgerungen.
  Mit unserer vorherigen Notation (die allgemein in Formel
  (<reference|3-2-impl>) angegeben ist), würde das Problem folgende Form
  annehmen:

  <\equation*>
    <around*|(|<around*|(|P\<Rightarrow\>
    Q|)><space|1em>\<wedge\><space|1em>P<space|1em>\<wedge\><space|1em><around*|(|<around*|(|P\<wedge\>
    Q|)>\<Rightarrow\>R|)>|)><space|1em>\<Rightarrow\><space|1em><around*|(|Q<space|1em>\<wedge\>
    <space|1em><around*|(|P\<wedge\> Q|)><space|1em>\<wedge\><space|1em>R|)>,
  </equation*>

  also sind unsere Hypothesen <math|H<rsub|1>=P\<Rightarrow\> Q>,
  <math|H<rsub|2>=P>, <math|H<rsub|3>=><math|<around*|(|<around*|(|P\<wedge\>
  Q|)>\<Rightarrow\>R|)>>, und die Thesen <math|T<rsub|1>=Q>,
  <math|T<rsub|2>=P\<wedge\> Q>, <math|T<rsub|3>=R>.

  Auf der rechten Seite des Bildschirms können wir für jede Aussage sehen,
  wie wir zu ihr gekommen sind. Diese Informationen werden durch Codes mit
  zwei Buchstaben angegeben. Hypothesen werden immer mit <verbatim|pr>
  (\RPrämisse\P) gekennzeichnet, Thesen durch den Code der Herleitungsregel,
  d.h.<abbr|> den modus ponens (<verbatim|mp>) für die Zeilen 4 und 6 und die
  Konjunktion (<verbatim|cn>) für Zeile 5, die die Inhalte der Zeilen 2 und 4
  miteinander verbindet.

  Es lohnt sich auch, die einzelnen Thesen anzuklicken. Wir sehen sofort,
  welche Prämissen bzw.<abbr|> Vorgängerhypothesen zum Beweis der gewählten
  These herangezogen wurden. Die Prämissen, die für die gewählte These
  verwendet wurden, werden rot hervorgehoben (Abbildung
  <reference|aris-mp2>).

  <\big-figure|<image|aris-mp2.png|50%|||>>
    <label|aris-mp2>
  </big-figure>

  Wenn wir GNU Aris als ein System zur Überprüfung von Beweisen verstehen,
  ist es angemessener, nur die letzte These als Zielthese zu betrachten,
  d.h.<abbr|> dann wäre eher die Implikation

  <\equation*>
    <around*|(|<around*|(|P\<Rightarrow\>
    Q|)><space|1em>\<wedge\><space|1em>P<space|1em>\<wedge\><space|1em><around*|(|<around*|(|P\<wedge\>
    Q|)>\<Rightarrow\>R|)>|)><space|1em>\<Rightarrow\><space|1em>R
  </equation*>

  unsere zentrale Aufgabe. Wir stellen hier nur die letzte These auf, die
  oben als <math|T<rsub|3>> bezeichnet wird, und betrachten die früher
  aufgestellten Thesen <math|T<rsub|1>> und <math|T<rsub|2>> als
  \RNebenprodukte\P des Beweises. Man könnte aber auch jede andere Teilmenge
  der Menge <math|<around*|{|T<rsub|1>,T<rsub|2>,T<rsub|3>|}>> als Zielthesen
  nehmen. In diesem Beispiel hat der Autor des Programms <math|T<rsub|1>> und
  <math|T<rsub|3>> als Ziele gewählt, wie wir gleich sehen werden.

  Wir werden daher Aris (wie es von nun an genannt wird) verwenden, um
  Beweise zu überprüfen. Wir probieren seine Funktionalität gleich aus: Gehen
  Sie in das Menü <samp|Proof> und wählen Sie <samp|Evaluate Proof> (Sie
  können das auch mit <key|Strg-f> tun). Es geschehen mehrere Änderungen
  (Abbildung <reference|aris-mp3>): Auf der rechten Seite verwandeln sich die
  leeren Quadrate neben den Codes mit zwei Buchstaben in Sternchen (dies kann
  auf verschiedenen Plattformen anders aussehen), was anzeigt, dass die
  angegebenen Aussagen sowohl syntaktisch als auch schlussfolgernd korrekt
  sind. Das ist nicht schlecht! Wir werden das später sehr zu schätzen
  wissen, wenn wir entweder einen syntaktischen Fehler machen oder unsere
  Herleitung vom System nicht verstanden wird. Die andere Beobachtung ist,
  dass der Anfang der Zeilen 4 und 6 grün wird. Dies zeigt, dass die Thesen
  <math|T<rsub|1>> und <math|T<rsub|3>>, die der Autor des Programms
  aufgestellt hat, tatsächlich bewiesen werden können, der Beweis ist also
  korrekt, unser Ziel ist tatsächlich erreicht. Zur Bestätigung wird am
  unteren Rand des Fensters die Meldung \RCorrect!\P angezeigt.

  <\big-figure|<image|aris-mp3.png|50%|||>>
    <label|aris-mp3>
  </big-figure>

  Spielen wir ein wenig mit dieser Datei: Spoilern wir die erste Zeile,
  ersetzen wir <math|P\<Rightarrow\> Q> durch <math|Q\<Rightarrow\> Q>, und
  drücken wir dann <key|Strg-f>! Das Programm zeigt an, dass etwas nicht
  stimmt: Die grünen Symbole werden rot, und das Sternchen am Ende von Zeile
  4 verwandelt sich in ein \<times\>-Zeichen, was anzeigt, dass es nicht
  möglich ist, Zeile 4 aus den Hypothesen 1 und 2 mit dem modus ponens
  herzuleiten.

  Eine groÿartige Funktion des Programms ist, dass wir einen beliebigen
  Kommentar nach einem Semikolon am Ende der Anweisungen hinzufügen können.
  Dies wird vom Programm nicht analysiert -- wir können sogar Text
  hinzufügen, der nichts mit dem Thema zu tun hat (aber warum<text-dots> es
  ist viel sinnvoller, dem Beweis Erklärungen beizufügen!).

  In diesem Skriptum geben wir keine vollständige Anleitung zur Verwendung
  des Programms -- diese können Sie auf der Website des Programms
  (<slink|https://www.gnu.org/software/aris/>) in englischer Sprache
  nachlesen. Wir geben jedoch einige Beispiele, um Ihnen einige Hinweise
  darauf zu geben, wozu das Programm gut ist.

  <subsection|Eine frühere Tautologie>

  Wir haben die Tautologie <math|p\<Rightarrow\>p> durch das Studium des
  Hilbert-Kalküls bewiesen. Das war ziemlich mühsam! Jetzt versuchen wir
  einen anderen Weg. Da wir es mit einer Tautologie zu tun haben, bilden die
  Hypothesen eine leere Menge: Als ersten Schritt unseres Beweises werden wir
  sofort die Option <samp|Add Conclusion> im Menü <samp|Edit> verwenden, um
  die Aussage <math|P\<vee\> \<neg\> P> hinzuzufügen (dies kann übrigens auch
  mit <key|Strg-j> geschehen). Es ist wichtig, die Variable, die die Aussage
  bezeichnet, mit einem Groÿbuchstaben zu beginnen, da Aris dies verlangt.
  Die virtuelle Tastatur (Abbildung <reference|aris-keyb>) wird verwendet, um
  die Anweisung einzugeben, oder (für die Mutigen!) Sie können
  <name|><key|p>, <key|Strg-Backslash>, <key|Strg-\<#2018\>>, <key|p>
  drücken, damit das Programm sie akzeptiert. (In bestimmten Fällen
  funktionieren manche Tastenkombinationen leider nicht. Dann muss man die
  englische Tastatureinstellung oder die virtuelle Tastatur nutzen. Sorry!)

  <\big-figure|<image|aris-keyb.png|50%|||>>
    <label|aris-keyb>
  </big-figure>

  Es muss gesagt werden, dass die Aussage <math|P\<vee\> \<neg\> P> eine
  Tautologie ist: Sie entspricht dem \RSatz vom ausgeschlossenen Dritten\P
  von Aris. Daher gehört der Code <verbatim|ex> (\Rlaw of excluded third\P)
  zu ihm. Wenn das Fenster für die Eingabe des Codes (Abbildung
  <reference|aris-rules>) nicht auf dem Bildschirm zu sehen ist, können Sie
  entweder die Option <samp|Toggle Rules> im Menü <samp|Rules> verwenden oder
  die Tastenkombination <key|Strg-r>, um das Fenster aufzurufen und es dann
  in der Gruppe <samp|Inference> auszuwählen, um den Code einzugeben, während
  Sie auf der Zeile der Aussage stehen, die Sie gerade eingeben. Machen wir
  einen Test: Verwenden wir den Menüpunkt <samp|Evaluate Line> im Menü
  <samp|Proof>, um zu prüfen, ob die soeben eingegebene Zeile korrekt ist.
  (Wir können dies auch mit <key|Strg-e> erreichen.)

  <\big-figure|<image|aris-rules.png|50%|||>>
    <label|aris-rules>
  </big-figure>

  In einem zweiten Schritt werden wir die bekannte Kommutativität verwenden,
  die den Code <verbatim|co> hat. Dies ist in der Gruppe <samp|Equivalence>
  zu finden. Wir geben also <key|Strg-j> ein (das ergibt eine weitere
  Thesenzeile), dann <key|Strg-\<#2018\>>, <key|p>, <key|Strg-Backslash>,
  <key|p> (jetzt sollte <math|\<neg\>P\<vee\>P> erscheinen), dann wählen wir
  den Code <verbatim|co>. Wir sind hier noch nicht ganz fertig, denn wir
  müssen eine knifflige Methode anwenden, um festzustellen, welche Zeile uns
  dieses Ergebnis geliefert hat. Die trickreiche Methode besteht darin, die
  <key|Strg>-Taste gedrückt zu halten und auf die Zeile zu klicken, die uns
  zu der Schlussfolgerung geführt hat (dies ist übrigens Zeile 2, es gibt
  keine andere Zeile, die zu berücksichtigen wäre).

  Der dritte Schritt besteht darin, diese Disjunktion in eine Implikation zu
  übersetzen. Das heiÿt, wir bitten um eine neue Zeile (<key|Strg-j>), geben
  <math|P\<Rightarrow\>P> ein (<key|p>, <key|Strg-4>, <key|p><name|>;
  beachten Sie hier, dass Aris nur einen einzigen Pfeil für die Implikation
  verwendet) und sagen dann, dass wir diese Cleverness über die
  <verbatim|im>-Regel entdeckt haben. (Die <verbatim|im>-Regel ist nichts
  anderes als das Umschreiben von Formeln der Form <math|\<neg\>a\<vee\> b>
  in <math|a\<Rightarrow\>b> und zurück.)

  Wir sind fertig, die gesuchte Tautologie ist hergeleitet. Dies wird durch
  die Tastenkombination <key|Strg-f> bestätigt (Abbildung
  <reference|aris-pimplp>, zur besseren Sichtbarkeit haben wir im Menü
  <samp|Font> die mittlere Schriftart gewählt).

  <\big-figure|<image|aris-pimplp.png|50%|||>>
    <label|aris-pimplp>
  </big-figure>

  Es könnte noch etwas getan werden, um darauf hinzuweisen, dass die
  Tautologie in der letzten Zeile die eigentliche zu beweisende Behauptung
  ist. Schalten Sie dazu das Fenster <samp|Goals> ein (<key|Strg-l>) und
  fügen Sie die Anweisung <math|P\<Rightarrow\>P> (mit <key|Strg-j>) ein. Auf
  diese Weise erhalten wir eine kleine grüne Farbe am Anfang der Zeile 4 \U
  als zusätzliche Motivation für das nächste Beispiel.

  <subsection|Der vierte Versuch>

  Wir werden nun ein viel komplexeres Beispiel analysieren. Unter den zuvor
  beschriebenen Rätseln formulieren wir den Fall des vierten Gefangenen wie
  folgt: <math|D1> bedeutet, dass sich eine Dame in Raum I befindet, während
  <math|S1> bedeutet, dass das Schild in Raum I wahr ist. Auÿerdem bedeutet
  <math|D2>, dass sich eine Dame in Raum II befindet, während <math|S2>
  bedeutet, dass die Überschrift von Raum II wahr ist. Die Aufgabenstellung
  enthält vier Hypothesen: <math|H<rsub|1>=D1\<Leftrightarrow\>S1>,
  <math|H<rsub|2>=D2\<Leftrightarrow\>\<neg\>S2>,
  <math|H<rsub|3>=S1\<Leftrightarrow\><around*|(|D1\<wedge\>D2|)>> und
  <math|H<rsub|4>=S2\<Leftrightarrow\><around*|(|D1\<wedge\>D2|)>>.

  Wir denken folgendermaÿen: Angenommen, in Raum I befindet sich eine Dame.
  Das heiÿt, <math|D1> ist wahr, kurz \R<math|D1>\P. <math|H<rsub|1>>
  verursacht die Wahrheit von <math|S1>. Aufgrund von <math|H<rsub|3>> sind
  aber auch <math|D1> und <math|D2> wahr. Es ist nicht neu, dass <math|D1>
  gilt (wir haben dies angenommen), aber die Wahrheit von <math|D2> ist nun
  gleichzeitig klar. Da <math|D1\<wedge\>D2> wahr ist, macht <math|H<rsub|4>>
  <math|S2> wahr. Aber <math|H<rsub|2>> sagt, dass die Wahrheit von <math|D2>
  <math|S2> falsch macht. Aber <math|S2> kann nicht gleichzeitig wahr und
  falsch sein: Das ist ein Widerspruch. Die Ausgangsbedingung war also
  falsch: <math|D1> ist falsch, es gibt einen Tiger in Raum I!

  Abbildung <reference|aris-dt4> zeigt, wie der obige Gedankengang in Aris
  eingegeben und überprüft werden kann. Die ersten vier Zeilen enthalten die
  Prämissen (d.h.<abbr|> Hypothesen). Die Eingabe ist relativ einfach, wir
  können <key|Strg-p> verwenden, um eine neue Prämisse einzugeben.

  <\big-figure|<image|aris-DT4.png|40%|||>>
    <label|aris-dt4>
  </big-figure>

  Sobald die Hypothesen eingegeben sind, können wir einen Teilbeweis
  eingeben, indem wir <key|Strg-b> drücken. Das wird hier notwendig sein,
  denn ein Teil des Gedankengangs ist ein indirekter Beweis, in dem wir einen
  Widerspruch finden werden. Der Code für den Teilbeweis ist <verbatim|sf>,
  den Aris automatisch für uns aufschreiben wird. In Zeile 5 schreiben wir
  also <math|D1> als die vermeintlich wahre Aussage (die, wie wir später
  herausfinden werden, nicht ganz wahr ist).

  In Zeile 6 schreiben wir <math|(D1\<Rightarrow\>S1)\<wedge\>(S1\<Rightarrow\>D1)>.
  Wir leiten dies aus <math|H<rsub|1>> mit Hilfe der Regel <verbatim|eq> ab,
  weil eine Äquivalenz in die Konjunktion zweier Implikationen zerlegt werden
  kann. Hier brauchen wir nur eine Implikation, die erste, also
  \Rvereinfachen\P wir Zeile 6 mit der Regel <verbatim|sm>
  (\Rsimplification\P). Zeile 7 ist also <math|D1\<Rightarrow\>S1>. Und in
  Zeile 8 setzen wir <math|S1> ein, weil wir es schön aus den Zeilen 5 und 7
  ableiten können, indem wir den guten alten modus ponens anwenden.

  Die Zeilen 9-18 werden analog hergestellt. In Zeile 19 wenden wir die
  Konjunktionsregel (<verbatim|cn>) an, die wir zuvor gesehen haben, und
  schreiben <math|S2> und <math|\<neg\>S2> gleichzeitig. In Zeile 20 leiten
  wir daraus mit Hilfe der Regel <verbatim|bn> (das ist die logische
  Negationsregel aus der <samp|Boolean> Gruppe) die Falschaussage ab. (Die
  Falschaussage wird im Aris-Programm durch ein <math|\<bot\>>-Zeichen
  gekennzeichnet.) Wir haben hier also einen Widerspruch, der aber irgendwie
  in die Hauptzeile des Beweises eingeführt werden muss. Dies geschieht durch
  die <verbatim|sp>-Regel, bei der der Inhalt der Zeilen 5 und 20 als
  Implikation in Zeile 21 geschrieben wird.

  Zeile 21 entspricht also der Aussage <math|D1\<Rightarrow\>F>, die richtig
  ist: Wenn sich eine Dame in Raum I befindet, ergibt sich ein Widerspruch.
  In Zeile 22 schreiben wir die Implikation in die Form
  <math|\<neg\>D1\<vee\>F> zurück (unter Verwendung der Regel <verbatim|im>,
  wir haben das schon gesehen), und in der letzten Zeile 23 verwenden wir die
  Regel der booleschen Identität (<verbatim|bi>), um herzuleiten, dass die
  Aussage <math|D1> falsch ist.

  Lassen Sie sich von dieser langen, maschinengestützten Herleitung nicht
  abschrecken! Es stimmt, dass es extrem feinkörnig und detailliert ist, aber
  wenn man genau modellieren will, wie man denkt, gibt es keine andere
  Möglichkeit, als genau ins Detail zu gehen. Das Gute daran ist, dass die
  Maschine überprüfen kann, ob sich keine Fehler in unser Denken
  eingeschlichen haben. Wenn Sie die Information \RCorrect!\P sehen, nachdem
  Sie <key|Strg-f> drücken, können Sie sicher sein (mit ein wenig
  Übertreibung), dass Ihre Herleitung korrekt ist. Nicht nur in der Form,
  sondern auch im Inhalt.

  Die Frage ist natürlich, ob es möglich ist, diesen Gedankengang zu
  vereinfachen. Es ist denkbar, aber es ist zu beachten, dass die Komplexität
  der Herleitung auch darauf zurückzuführen ist, dass wir eine Menge Regeln
  verwendet haben. Die Komplexität der Herleitung kann also auch auf die
  Vielzahl unserer Regeln zurückzuführen sein. Übrigens sollten wir auch
  bedenken, dass wir, wenn wir nur einige wenige Herleitungsregeln haben,
  diese wenigen Regeln möglicherweise häufig (auf Umwegen) verwenden müssen,
  um zur gewünschten Zielsetzung zu gelangen. Was wir also an der Saat
  sparen, verlieren wir an der Ernte.

  Die Anwendung vieler Regeln ist dem menschlichen Denken näher als die
  wiederholte Anwendung weniger Regeln. Das von Aris angebotene System ist
  also vielleicht besser geeignet, unser Denken getreu zu modellieren.

  Abbildung <reference|aris-dt4-latex> zeigt unseren Beweis in allen
  Einzelheiten und in Druckqualität. Diese Ausgabe ist im Menü <samp|File>
  unter <samp|Export to LaTeX><text-dots><index|<LaTeX>> verfügbar (nach
  einiger manueller Bearbeitung und Konvertierung in
  PDF<glossary-explain|PDF|Portable Document Format>).

  <\big-figure|<image|DT4.png|40%|||>>
    <label|aris-dt4-latex>
  </big-figure>

  <subsection|Aufgaben>

  <\enumerate>
    <item>Führen Sie die Herleitung von Abbildung <reference|aris-dt4> in
    Aris fort: Schlieÿen Sie, dass die Dame in Raum II ist!

    <item>Leiten Sie die Lösung des Rätsels des Gefangenen im fünften Versuch
    in Aris ab.
  </enumerate>

  <section|SAT-solver>

  Das ist doch mal ein guter Titel, oder? Wir schreiben heutzutage alles auf
  Englisch, obwohl es für fast alles eine muttersprachliche Version gibt,
  wenn wir nur ein bisschen darüber nachdenken. Leider ist dies beim
  \RSAT-Solver\P nicht ganz der Fall. Es ist möglich, ein deutsches
  Äquivalent zu finden, aber in der Branche kennt es jeder als
  SAT-Solver<index|SAT-Solver>, und so nennen wir es auch. Zumindest wird es
  möglich sein, damit auf Partys der freien Künste zu prahlen.

  Mit diesem Kapitel ist die Aussagenlogik abgeschlossen, aber wir werden uns
  erhobenen Hauptes verabschieden. Wir tun dies, weil wir eine automatische
  Methode zur Lösung des logischen Labyrinths von Smullyan zeigen werden, die
  elegant genug und geheimnisvoll genug ist, um nach und nach durchgeführt zu
  werden. Aber die Methode ist auch allgemein genug, um im Grunde jedes
  ähnliche Problem relativ schnell zu lösen, so dass wir bei der Lösung
  unseres speziellen Problems auch ein allgemeines Rezept erhalten.

  Wieder einmal werden wir einige Computer-Tools benötigen. (Wer hätte das
  gedacht?) Wir werden Mathematica (oder eine freie Variante davon,
  <with|font-shape|italic|WolframScript><index|WolframScript>) verwenden, und
  am Ende des Kapitels werden wir eine preisgekrönte freie Software, Minisat,
  vorstellen.

  <subsection|Wir formalisieren das logische Labyrinth>

  Dies wird keine leichte Aufgabe sein, auch wenn fast unser gesamtes
  Vorwissen in einigen Stücken bereits vorhanden ist. Im letzten Rätsel des
  Königs gibt es 9 verschiedene Schilder in 9 Räumen, die als 9 Aussagen
  interpretiert werden können. Bezeichnen wir sie mit
  <math|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|9>>. Auf diese Weise können wir
  bereits einige der Schilder mit einer Formel aufschreiben:
  <math|S<rsub|3>\<Leftrightarrow\><around*|(|S<rsub|5>\<vee\>
  \<neg\>S<rsub|7>|)>>, <math|S<rsub|4>\<Leftrightarrow\>\<neg\>S<rsub|1>>,
  <math|S<rsub|5>\<Leftrightarrow\>S<rsub|2>\<vee\>S<rsub|4>>,
  <math|S<rsub|6>\<Leftrightarrow\>\<neg\>S<rsub|3>>. Es ist eine gute Frage,
  warum wir Äquivalenz statt Gleichheit schreiben -- ein Grund ist, dass wir
  in GNU Aris Äquivalenzen statt Gleichheit schreiben müssen, und ein anderer
  ist, dass es einfacher ist, jedes Schild als einen Baustein zu betrachten.
  Schlieÿlich kommen die Schilder selbst als Unterformeln in anderen
  Schildern vor.

  Wir werden weitere Erklärungen benötigen. Wir werden die bekannten
  Bezeichnungen <math|D<rsub|1>,D<rsub|2>,\<ldots\>,D<rsub|9>> verwenden, um
  anzugeben, ob sich eine Dame in dem betreffenden Raum befindet. Da wir nun
  auch leere Räume verwenden können, sollten wir auch die Aussagen
  <math|T<rsub|1>,T<rsub|2>,\<ldots\>,T<rsub|9>> einführen, die uns sagen, ob
  sich ein Tiger in dem betreffenden Raum befindet. Auf diese Weise können
  wir alle anderen Aussagen formulieren: <math|S<rsub|1>\<Leftrightarrow\><around*|(|D<rsub|1>\<vee\>D<rsub|3>\<vee\>D<rsub|5>\<vee\>D<rsub|7>\<vee\>D<rsub|9>|)>>,
  <math|S<rsub|2>\<Leftrightarrow\>\<neg\><around*|(|D<rsub|2>\<vee\>T<rsub|2>|)>>,
  <math|S<rsub|7>\<Leftrightarrow\><around*|(|\<neg\>D<rsub|1>|)>>,
  <math|S<rsub|8>\<Leftrightarrow\><around*|(|T<rsub|8>\<wedge\>\<neg\><around*|(|D<rsub|9>\<vee\>T<rsub|9>|)>|)>>,
  <math|S<rsub|9>\<Leftrightarrow\><around*|(|T<rsub|9>\<wedge\>\<neg\>S<rsub|6>|)>>.
  Man beachte, dass die Tatsache des leeren Zimmers durch die Negation der
  Disjunktion ausgedrückt wird. Wir werden später darauf zurückkommen: In
  Mathematica können wir es kurz mit der Nor-Operation ausdrücken.

  Wir sind noch nicht ganz am Ziel, denn wir müssen auch sagen, wie sich die
  Schilder zu den Objekten im Raum verhalten. Es ist klar, dass für jeden
  Raum mit der Zeilennummer <math|i> (<math|i=1,2,\<ldots\>,9>) die
  Implikation <math|D<rsub|i>\<Rightarrow\>S<rsub|i>> gilt: Das heiÿt, wenn
  sich eine Dame im Raum befindet, dann ist das Schild notwendigerweise wahr.
  Befände sich ein Tiger im selben Raum, so würde die Aussage
  <math|T<rsub|i>\<Rightarrow\>\<neg\> S<rsub|i>> beschreiben, dass das
  Schild in diesem Fall zwangsläufig falsch sein muss. Im Falle eines leeren
  Raums gibt es keine Einschränkung: leere Räume unterliegen keinen neuen
  Informationen.

  Aber wir sollten auch sagen, dass es nicht möglich ist, dass eine Dame und
  ein Tiger zur gleichen Zeit im selben Raum sind. (Was für ein gruseliger
  Gedanke!) Das heiÿt, für alle <math|i> oben gilt
  <math|\<neg\><around*|(|D<rsub|i>\<wedge\>T<rsub|i>|)>>. In Mathematica
  werden wir dies kurz in Form der Nand-Operation ausdrücken.

  Tatsache ist, dass wir fertig sind! Wir haben insgesamt 36 Vorbedingungen:
  9 geben die Schilder an, 9 fügen die Fälle hinzu, in denen sich eine Dame
  im Raum befindet, 9 fügen die Fälle hinzu, in denen sich ein Tiger
  befindet, und 9 schlieÿen die Fälle aus, in denen sich sowohl eine Dame als
  auch ein Tiger im selben Raum befinden. 36 Voraussetzungen -- meine Güte!
  Wer soll das alles auf einmal durchsehen können?! Nun<text-dots> ein
  Computer!

  <subsection|Die Mathematica-Formel und ihre Analyse>

  Wir haben also 36 Hypothesen: <math|H<rsub|1>,H<rsub|2>,\<ldots\>,H<rsub|36>>,
  die wir im Folgenden kurz als <math|H> bezeichnen (d.h.<abbr|> ihre
  Konjunktion, <math|H=H<rsub|1>\<wedge\>H<rsub|2>\<wedge\>\<ldots\>\<wedge\>H<rsub|36>>).

  Statt weiterer Erklärungen kommen wir gleich zur Sache: Das ist es, was wir
  in Mathematica eingeben müssen, um die konjunktive Form der Hypothesen zu
  erhalten:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      H := And[Xnor[S1,Or[D1,D3,D5,D7,D9]], Xnor[S2,Nor[D2,T2]],
      Xnor[S3,Or[S5,Not[S7]]], Xnor[S4,Not[S1]], Xnor[S5,Or[S2,S4]],
      Xnor[S6,Not[S3]], Xnor[S7,Not[D1]], Xnor[S8,And[T8,Nor[D9,T9]]],
      Xnor[S9,And[T9,Not[S6]]], Implies[D1,S1], Implies[D2,S2],
      Implies[D3,S3], Implies[D4,S4], Implies[D5,S5], Implies[D6,S6],
      Implies[D7,S7], Implies[D8,S8], Implies[D9,S9], Implies[T1,Not[S1]],
      Implies[T2,Not[S2]], Implies[T3,Not[S3]], Implies[T4,Not[S4]],
      Implies[T5,Not[S5]], Implies[T6,Not[S6]], Implies[T7,Not[S7]],
      Implies[T8,Not[S8]], Implies[T9,Not[S9]], Nand[D1,T1], Nand[D2,T2],
      Nand[D3,T3], Nand[D4,T4], Nand[D5,T5], Nand[D6,T6], Nand[D7,T7],
      Nand[D8,T8], Nand[D9,T9]]
    </input>
  </session>

  Hier ist die Xnor-Operation zwar noch fraglich, aber offensichtlich
  bedeutet sie die Äquivalenz.

  Das Mathematica-Programm fügt unserer Eingabe keinen groÿen Kommentar
  hinzu, es formatiert sie höchstens leicht um (die Und- und Oder-Operationen
  werden in die Infix-Form umgewandelt -- unsere ursprüngliche Eingabe ist in
  der Präfix-Form). Wir können es jedoch fragen, ob diese Aufgabe lösbar ist:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      SatisfiableQ[H]
    </input>
  </session>

  Die Antwort lautet: \RTrue\P, also \Rja\P, aber wir wissen nicht, was die
  Lösung eigentlich ist. Es kann eine Lösung geben, aber es können auch
  mehrere sein. Um eine bessere Vorstellung zu bekommen, sollten wir weiter
  experimentieren: Konvertieren wir <math|H> in DNF, wofür es einen
  entsprechenden Mathematica-Befehl gibt:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      LogicalExpand[H]
    </input>
  </session>

  Der Output lautet:

  <with|font-family|tt|<\with|font-base-size|6|par-mode|center>
    <verbatim|<with|font-base-size|6|<with|font-base-size|6|<with|font-effects|hmagnify=0.8|(D1
    && S1 && S2 && S3 && S5 && !D2 && !D4 && !D6 && !D7 && !D8 && !D9 && !S4
    && !S6 && !S7 && !S8 && !S9 && !T1 && !T2 && !T3 && !T5 && !T8 && !T9)
    \|\| <next-line>(D1 && S1 && S3 && T2 && !D2 && !D4 && !D5 && !D6 && !D7
    && !D8 && !D9 && !S2 && !S4 && !S5 && !S6 && !S7 && !S8 && !S9 && !T1 &&
    !T3 && !T8 && !T9) \|\| <next-line>(D7 && S1 && S6 && S7 && T2 && T9 &&
    !D1 && !D2 && !D3 && !D4 && !D5 && !D8 && !D9 && !S2 && !S3 && !S4 && !S5
    && !S8 && !S9 && !T1 && !T6 && !T7) \|\| <next-line>(D7 && S1 && S6 && S7
    && T2 && !D1 && !D2 && !D3 && !D4 && !D5 && !D8 && !D9 && !S2 && !S3 &&
    !S4 && !S5 && !S8 && !S9 && !T1 && !T6 && !T7 && !T8) \|\| <next-line>(D3
    && S1 && S2 && S3 && S5 && S7 && !D1 && !D2 && !D4 && !D6 && !D8 && !D9
    && !S4 && !S6 && !S8 && !S9 && !T1 && !T2 && !T3 && !T5 && !T7 && !T8 &&
    !T9) \|\| <next-line>(D5 && S1 && S2 && S3 && S5 && S7 && !D1 && !D2 &&
    !D4 && !D6 && !D8 && !D9 && !S4 && !S6 && !S8 && !S9 && !T1 && !T2 && !T3
    && !T5 && !T7 && !T8 && !T9) \|\| <next-line>(D7 && S1 && S2 && S3 && S5
    && S7 && !D1 && !D2 && !D4 && !D6 && !D8 && !D9 && !S4 && !S6 && !S8 &&
    !S9 && !T1 && !T2 && !T3 && !T5 && !T7 && !T8 && !T9) \|\| <next-line>(S2
    && S3 && S4 && S5 && S7 && !D1 && !D2 && !D3 && !D5 && !D6 && !D7 && !D8
    && !D9 && !S1 && !S6 && !S8 && !S9 && !T2 && !T3 && !T4 && !T5 && !T7 &&
    !T8 && !T9) \|\| <next-line>(S3 && S4 && S5 && S7 && T2 && !D1 && !D2 &&
    !D3 && !D5 && !D6 && !D7 && !D8 && !D9 && !S1 && !S2 && !S6 && !S8 && !S9
    && !T3 && !T4 && !T5 && !T7 && !T8 && !T9)>><with|font-base-size|6|>>>
  </with>>

  Das bedeutet, dass es tatsächlich mehrere Lösungen gibt (insgesamt 9), und
  wie wir sehen, kann sich die Dame in jedem ungeraden Raum befinden, auÿer
  in Raum IX, und es ist sogar möglich, dass sich in keinem Raum eine Dame
  befindet (siehe die letzten beiden Möglichkeiten, wir werden gleich über
  den Grund dafür sprechen). Spielen wir weiter! Der König hat dem Gefangenen
  mitgeteilt, ob Raum VIII leer ist oder nicht. Wenn wir nun zu <math|H> eine
  weitere Hypothese, <math|H<rsub|37>>, hinzufügen, die
  <math|\<neg\><around*|(|D<rsub|8>\<vee\>T<rsub|8>|)>> (falls Raum VIII leer
  ist) oder <math|D<rsub|8>\<vee\>T<rsub|8>> (falls Raum VIII nicht leer ist)
  sein kann, können wir beide Möglichkeiten schnell auf folgende Weise
  ausprobieren:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      LogicalExpand[H && !(D8 \|\| T8)]
    </input>
  </session>

  <\with|par-first|0tab>
    bzw.
  </with>

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      LogicalExpand[H && (D8 \|\| T8)]
    </input>
  </session>

  <\with|par-first|0tab>
    wo wir bereits geschickt die kürzere Infixform verwendet haben. Wie
    erwartet, gibt die erste Befehlszeile 8 Optionen aus, die zweite nur
    eine:
  </with>

  <\with|par-mode|center>
    <verbatim|<with|font-base-size|6|font-effects|hmagnify=0.8|D7 && S1 && S6
    && S7 && T2 && T8 && T9 && !D1 && !D2 && !D3 && !D4 && !D5 && !D8 && !D9
    && !S2 && !S3 && !S4 && !S5 && !S8 && !S9 && !T1 && !T6 &&
    !T7><with|font-base-size|6|font-effects|hmagnify=0.8|>>
  </with>

  Beachten Sie, dass nur 23 unserer 27 Variablen in dieser Ausgabe enthalten
  sind. Was fehlt noch? Wir wissen nichts über <math|D<rsub|6>>,
  <math|T<rsub|3>>, <math|T<rsub|4>> und <math|T<rsub|5>>. Sie könnten also
  im Prinzip alles sein, obwohl <math|D<rsub|6>> nicht stimmen kann, weil der
  Originaltext der Übung besagt, dass <with|font-shape|italic|nur eine Dame>
  hinter den Türen steht. Ups, das haben wir vergessen zu berücksichtigen!
  Andererseits wissen wir wirklich nicht, ob die Räume III, IV und V leer
  sind oder einen Tiger beherbergen.

  Damit wird auch deutlich, dass unsere bisherigen 9 Lösungen eigentlich
  mehrere Fälle abdecken, von denen einige als eine Reihe von Ausgängen
  gruppiert sind.

  <subsection|Aufgaben zur Formalisierung>

  <\enumerate>
    <item>Formalisieren Sie die Information des Königs, dass \Res nur einen
    Raum mit einer Dame gibt\P.

    <item>In einer früheren Übung wurden wir mit dem Problem konfrontiert,
    eine Infix-Operation in Präfixform anzugeben. Welche ist es?

    <item>Neben dem Infix- und dem Präfix-Format gibt es auch ein
    Postfix-Format. Angenommen, die Infixform des Ausdrucks
    <math|(a+b)<rsup|2>> ist <verbatim|(a+b)^2> und die Präfixform ist
    <verbatim|^+ab2>, dann ist die Postfixform <verbatim|ab+2^>. Bestimmen
    Sie durch Analogie die Postfixform des Ausdrucks
    <math|H\<wedge\>\<neg\><around*|(|D8\<vee\>T8|)>>.
  </enumerate>

  <subsection|Erfüllbarkeit>

  Indem wir weiter mit Mathematica spielen, werden wir das Konzept der
  <with|font-shape|italic|Erfüllbarkeit> erkunden. Dies ist nichts anderes
  als die Konsistenz einer gegebenen Menge von Hypothesen, d.h.<abbr|> ob aus
  einer Hypothese <math|H<rprime|'>> eine These abgeleitet werden kann (die
  nicht äquivalent zu <math|F> ist). Mit anderen Worten, eine Hypothese
  <math|H<rprime|'>> ist erfüllbar, wenn <math|H<rprime|'><neg|\<Rightarrow\>>F>.
  Aus dem Vorangegangenen wird deutlich, dass wir bei den ersten 36
  Hypothesen zu einem Widerspruch kommen, wenn wir den Satz <math|D2>
  annehmen, d.h.<abbr|> <math|H\<wedge\>D2\<Rightarrow\>F> (hier
  <math|H<rprime|'>=H\<wedge\>D2>). Dies kann in Mathematica mit dem Befehl

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      LogicalExpand[H && D2]
    </input>
  </session>

  <\with|par-first|0tab>
    oder einfach mit
  </with>

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      SatisfiableQ[H && D2]
    </input>
  </session>

  <\with|par-first|0tab>
    überprüft werden (letzteres ist schneller).
  </with>

  In der mathematischen Logik will man oft nur wissen, ob eine Menge von
  Hypothesen erfüllt werden kann, nicht wie viele Lösungen es gibt. Denn in
  vielen Fällen ist die Zahl der möglichen Lösungen (die z.B.<abbr|> in DNF
  gegeben sein können) relativ groÿ, und wir wollen nicht alle sehen, sondern
  höchstens einige oder nur eine oder gar keine. Uns interessiert nur die
  Tatsache, ob <math|H<rprime|'>> erfüllbar ist oder nicht.

  Mathematica ist ein praktisches Werkzeug für die Beantwortung dieser Art
  von Fragen, aber es gibt auch andere Programme, die kostenlos sind,
  schneller zur Verfügung stehen und möglicherweise nicht einmal installiert
  werden müssen. Diese Programme beruhen auf Methoden, die auch heute noch
  Gegenstand intensiver Forschung sind. Aus diesem Grund herrscht in der
  wissenschaftlichen Welt ein harter Wettbewerb um das beste, schnellste und
  robusteste System zur Beantwortung von Erfüllbarkeitsfragen. Solche
  Verfahren werden als SAT-Solver bezeichnet und sind Gegenstand eines
  Spezialgebiets innerhalb der mathematischen Logik. Obwohl ein SAT-Solver im
  Allgemeinen keine andere Wahl hat, als alle Einträge in der
  Wahrheitstabelle auszuprobieren (zur Erinnerung: bei 27 Variablen bedeutet
  dies <math|2<rsup|27>> verschiedene Auswertungen, also mehr als 100
  Millionen Fälle), können in der Praxis viele Tricks angewendet werden, um
  die Anzahl der getesteten Fälle in einem guten Fall erheblich zu
  reduzieren. Ein erfahrener SAT-Solver kann mit Millionen von Variablen
  umgehen, wenn die Eingabe gut konzipiert und der Algorithmus effizient
  vorbereitet ist.

  Die meisten SAT-Solver verlangen die Eingabe in Form einer Zahlenfolge nach
  dem sogenannten DIMACS-CNF-Standard.<glossary-explain|DIMACS|Center for
  Discrete Mathematics and Theoretical Computer Science><index|DIMACS-CNF>
  Von daher ist uns CNF vielleicht schon vertraut, und in der Tat: Wir müssen
  eine Variation unseres CNF-Formats erstellen, das in Zahlen umgesetzt wird.

  Ein Beispiel für die Konstruktion einer CNF findet sich in
  <cite|Pillichshammer2022> (Beispiel 2.19), aber keine allgemeine Methode.
  Es gibt jedoch eine relativ einfache Methode, die wie folgt angegeben
  werden kann:

  <\enumerate>
    <item>Wir konstruieren aus einer Formel <math|p>, für die wir eine CNF
    suchen, zuerst die Formel für <math|\<neg\>p>, die wir als <math|q>
    bezeichnen.

    <item>Negiert man <math|q> mit Hilfe der de-Morgan-Identität, so erhält
    man genau eine CNF, die mit <math|p> äquivalent ist.
  </enumerate>

  Ausgedrückt \Rin Formeln\P:

  <\equation>
    <text|<math|CNF<around*|(|p|)>=DM<around*|(|\<neg\><around*|(|DNF<around*|(|\<neg\>
    p|)>|)>|)>>>.<label|cnf>
  </equation>

  Wir verwenden wieder Mathematica. Wir können das CNF nicht direkt damit
  berechnen, aber wir können es auf folgende Art mit Hilfe eines kleinen
  Programms erhalten:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      CNF[f_] := Not[LogicalExpand[Not[f]]] //. { Not[a_Or] :\<gtr\> And @@
      (Not /@ List @@ a), Not[a_And] :\<gtr\> Or @@ (Not /@ List @@ a) }
    </input>
  </session>

  Wir werden nicht auf eine detaillierte Analyse des Befehls eingehen, aber
  wir können davon ausgehen, dass der obige Algorithmus wörtlich
  verschlüsselt ist (in der Tat müssen beide de-Morgan-Regeln getrennt
  behandelt werden, deshalb ist er so ausführlich).

  Wir können nun <math|H> in CNF erzeugen:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      CNF[H]
    </input>
  </session>

  <\with|par-first|0tab>
    Die Antwort lautet:
  </with>

  <\with|par-mode|center>
    <verbatim|!D2 && !D8 && !D9 && !S8 && !S9 && (!D1 \|\| !S7) && (!D1 \|\|
    !T1) && (!D1 \|\| S1) && (!D3 \|\| !T3) && (!D3 \|\| S1) && (!D3 \|\| S3)
    && (!D4 \|\| !T4) && (!D4 \|\| S4) &&<next-line> (!D5 \|\| !T5) && (!D5
    \|\| S1) && (!D5 \|\| S5) && (!D6 \|\| !T6) && (!D6 \|\| S6)
    &&<next-line> (!D7 \|\| !T7) && (!D7 \|\| S1) && (!D7 \|\| S7) && (!S1
    \|\| !S4) && (!S1 \|\| !T1) && (!S2 \|\| !T2) && (!S2 \|\| S5) && (!S3
    \|\| !S6) && (!S3 \|\| !T3) && (!S4 \|\| !T4) && (!S4 \|\| S5) && (!S5
    \|\| !T5) && (!S5 \|\| S3) && (!S6 \|\| !T6) && (!S7 \|\| !T7)
    &&<next-line>(!T8 \|\| T9) && (!T9 \|\| S6) && (D1 \|\| S7) && (S1 \|\|
    S4) && (S2 \|\| T2) &&<next-line>(S3 \|\| S6) && (S3 \|\| S7) && (!S3
    \|\| !S7 \|\| S5) && (!S5 \|\| S2 \|\| S4) &&<next-line>(!S1 \|\| D1 \|\|
    D3 \|\| D5 \|\| D7)>
  </with>

  Diese Antwort ist an sich schon interessant, denn sie zeigt sofort, dass
  sich die Dame weder in Raum II noch in Raum VIII noch in Raum IX befindet,
  und die Schilder in den Räumen VIII und IX definitiv falsch sind.

  Wir ändern nun die CNF in DIMACS-CNF, was Folgendes bedeutet:

  <\enumerate>
    <item>Anstelle der Und-Verknüpfungen schreiben wir immer eine 0.

    <item>Die Oder-Verknüpfungen werden gelöscht. Alle Klammern werden
    ebenfalls gelöscht.

    <item>Wir wählen positive ganze Zahlen anstelle von Variablen (alle
    Variablen erhalten die gleiche Nummer).

    <item>Wir ersetzen die Negation durch ein einzelnes negatives Vorzeichen.

    <item>Eine abschlieÿende 0 wird an das Ende der Zahlenreihe geschrieben.
  </enumerate>

  Der Einfachheit halber bezeichnen wir die Aussagen
  <math|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|9><rsub|>> von 1 bis 9, die
  Aussagen <math|D<rsub|1>,D<rsub|2>,\<ldots\>,D<rsub|9>> von 11 bis 19, und
  die restlichen Aussagen <math|T<rsub|1>,T<rsub|2>,\<ldots\>,T<rsub|9>> von
  21 bis 29. Damit entfallen 10 und 20, aber wir vertrauen darauf, dass dies
  die Computerlösung nicht erschwert. Die folgende Unix-Befehlszeile führt
  die oben genannten Umschreibungen für uns durch (auÿer dem Hinzufügen der 0
  am Ende der Zeile):

  <\session|bash|bash>
    <\input>
      Bash]\ 
    <|input>
      echo '!D2 && !D8 && !D9 && !S8 && !S9 && (!D1 \|\| !S7) && (!D1 \|\|
      !T1) && (!D1 \|\| S1) && (!D3 \|\| !T3) && (!D3 \|\| S1) && (!D3 \|\|
      S3) && (!D4 \|\| !T4) && (!D4 \|\| S4) && (!D5 \|\| !T5) && (!D5 \|\|
      S1) && (!D5 \|\| S5) && (!D6 \|\| !T6) && (!D6 \|\| S6) && (!D7 \|\|
      !T7) && (!D7 \|\| S1) && (!D7 \|\| S7) && (!S1 \|\| !S4) && (!S1 \|\|
      !T1) && (!S2 \|\| !T2) && (!S2 \|\| S5) && (!S3 \|\| !S6) && (!S3 \|\|
      !T3) && (!S4 \|\| !T4) && (!S4 \|\| S5) && (!S5 \|\| !T5) && (!S5 \|\|
      S3) && (!S6 \|\| !T6) && (!S7 \|\| !T7) &&(!T8 \|\| T9) && (!T9 \|\|
      S6) && (D1 \|\| S7) && (S1 \|\| S4) && (S2 \|\| T2) &&(S3 \|\| S6) &&
      (S3 \|\| S7) && (!S3 \|\| !S7 \|\| S5) && (!S5 \|\| S2 \|\| S4) &&(!S1
      \|\| D1 \|\| D3 \|\| D5 \|\| D7)' \| tr -d S\\(\\)\\\| \| tr DT\\! 12-
      \| sed s/"&&"/"0"/g \| sed s/" \ "/" "/g
    </input>
  </session>

  Der Output lautet:

  <\with|par-mode|center>
    <verbatim|-12 0 -18 0 -19 0 -8 0 -9 0 -11 -7 0 -11 -21 0 -11 1 0 -13 -23
    0 -13 1 0<next-line> -13 3 0 -14 -24 0 -14 4 0 -15 -25 0 -15 1 0 -15 5 0
    -16 -26 0 -16 6 0<next-line> -17 -27 0 -17 1 0 -17 7 0 -1 -4 0 -1 -21 0
    -2 -22 0 -2 \ 5 0 -3 -6 0<next-line> -3 -23 0 -4 -24 0 -4 5 0 -5 -25 0 -5
    3 0 -6 -26 0 -7 -27 0 -28 29 0<next-line> -29 6 0 11 7 0 1 4 0 2 22 0 3 6
    0 3 7 0 -3 -7 5 0 -5 2 4 0<next-line>-1 11 13 15 17 0>
  </with>

  Wir können diese Zahlenfolge nun ungehindert in einen SAT-Solver
  einspeisen, der uns sagt, dass die Aufgabe erfüllt werden kann. Schauen wir
  uns ein konkretes Beispiel an, das <with|font-shape|italic|Minisat>-Programm
  <cite|minisat><index|Minisat>. Es gibt mehrere Möglichkeiten, Minisat
  auszuprobieren. Zum Zeitpunkt des Verfassens dieses Skriptums (wenn Sie die
  offizielle Version nicht von der offiziellen Website <slink|minisat.se>
  herunterladen möchten), können Sie Online-Versionen an mindestens drei
  Stellen finden:

  <\itemize>
    <item><slink|http://logicrunch.it.uu.se:4096/~wv/minisat/> (kopieren Sie
    einfach die lange Zahlenfolge hinein und klicken Sie dann auf \RCheck\P,
    um zu sehen, ob die Hypothese erfüllt werden kann und eine mögliche
    Lösung zu erhalten, ebenfalls in DIMACS-CNF),

    <item><slink|https://matek.hu/zoltan/minisat.html> (dies sagt uns nur
    etwas über die Erfüllbarkeit, nachdem wir den Input eingeben und zweimal
    ESC drücken),

    <item><slink|https://jgalenson.github.io/research.js/demos/minisat.html>
    (auch hier ergibt sich eine mögliche Lösung).
  </itemize>

  Zum Zeitpunkt der Erstellung dieses Skripts liefern die erste und die
  dritte Version unterschiedliche Ergebnisse, die erste Version liefert
  dieses Ergebnis:\ 

  <\with|par-first|0tab|par-mode|center>
    <verbatim|-1 2 3 4 5 -6 7 -8 -9 -10<next-line>-11 -12 -13 -14 -15 -16 -17
    -18 -19 -20<next-line> -21 -22 -23 -24 -25 -26 -27 -28 -29 0>
  </with>

  <\with|par-first|0tab>
    -- was bedeutet, dass es in keinem der Räume Damen gibt (was für den
    Gefangenen sehr unangenehm ist), und die dritte ist diese:
  </with>

  <\with|par-mode|center>
    <verbatim|1 -2 3 -4 -5 -6 -7 -8 -9 -10<next-line> 11 -12 -13 -14 -15 -16
    -17 -18 -19 -20<next-line> -21 22 -23 -24 -25 -26 -27 -28 -29>
  </with>

  <\with|par-first|0tab>
    (sie lässt auch die Schlieÿung 0, ziemlich entspannt) -- was die Dame in
    Raum I als Option gibt (\R11\P entspricht <math|D1>).
  </with>

  Wenn wir nun die Bemerkung des Königs über den Raum VIII hinzufügen
  (d.h.<abbr| >dass es nicht leer ist), müssen wir zu der als Eingabe
  gegebenen DIMACS-CNF die folgenden drei Zahlen hinzufügen: <verbatim|18 28
  0>. In diesem Fall werden die SAT-Solver die einzig mögliche Lösung
  zurückgeben:

  <\with|par-mode|center>
    <verbatim|1 -2 -3 -4 -5 6 7 -8 -9 -10<next-line> -11 -12 -13 -14 -15 -16
    17 -18 -19 -20<next-line> -21 22 -23 -24 -25 -26 -27 28 29 0>
  </with>

  Die Dame ist also wirklich in Raum VII.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Geben Sie die Formel (<reference|cnf>) in Postfixform an.

    <item>Geben Sie eine Formel ähnlich (<reference|cnf>) an, die die DNF mit
    Hilfe der CNF berechnet.

    <item>Geben Sie eine kurze DIMACS-CNF-Zahlenfolge an, die die Antwort
    \Runerfüllbar\P liefert.

    <item>Angenommen, der König verrät, dass sich in Raum III ein Tiger
    befindet, anstatt Informationen über Raum VIII zu geben. Wie wirkt sich
    dies auf die Lösung des Rätsels aus? Wie ändert sich die Antwort, wenn
    der König Informationen über Raum IX statt über Raum III gibt?

    <item>Angenommen, wir kennen die vom König gegebenen zusätzlichen
    Informationen über Raum VIII nicht. Ist es in diesem Fall möglich, dass
    sich die Dame in Raum IV befindet? Wenn ja, was ist mit Raum II?
  </enumerate>

  <chapter|Prädikatenlogik>

  Im Folgenden werden wir ein Level aufsteigen. Die Aussagenlogik (die
  bereits besprochen wurde) wird auch als <with|font-shape|italic|Logik
  nullter Stufe><subindex|Logik|nullter Stufe> bezeichnet, und die
  Prädikatenlogik als <with|font-shape|italic|Logik erster
  Stufe><subindex|Logik|erster Stufe>. Auf den ersten Blick klingt das nicht
  sehr ermutigend: Es wäre besser, von 10 auf 20 zu springen als von 0 auf 1,
  aber Tradition ist Tradition: Wir werden uns auch von 0 auf 1 bewegen.
  Seien wir froh, dass wir uns vorwärts und nicht rückwärts bewegen!

  Wir alle wissen, dass der Hauptunterschied darin bestehen wird, dass wir
  <with|font-shape|italic|Quantoren> verwenden können und werden! Sie sollten
  Quantoren (d.h.<abbr|> die Modifikatoren \Rexistiert\P und \Rfür alle\P)
  verwenden, wenn Sie über Mengen von etwas sprechen, z.B.<abbr|> über eine
  Menge ganzer oder reeller Zahlen, oder über etwas Abstrakteres (z.B.<abbr|>
  eine Menge komplexwertiger Funktionen, die auf komplexen Zahlen
  interpretiert werden, sorry!), oder über etwas Konkreteres (z.B.<abbr|>
  eine dreiteilige Menge der Farben \Rrot\P, \Rgrün\P und \Rblau\P). Wenn wir
  eine Grundmenge <math|A> festlegen, können wir eine freundliche Aussage
  aufschreiben, die einen Quantor enthalten kann:

  <\equation*>
    \<forall\>x\<in\>A:x\<in\>A.
  </equation*>

  Das bedeutet, dass jedes Element in <math|A> ein Element der Menge <math|A>
  ist. Nun, es sagt nicht viel aus, man könnte nichts Substantielles sagen,
  aber es ist ein guter Witz, und die Sache ist die, dass sie mathematisch
  Sinn macht. Sie ist sogar so sinnvoll, dass die Aussage unabhängig davon,
  wie man die Menge <math|A> wählt, wahr sein wird. Wir werden jedoch sehen,
  dass eine Aussage umso sinnloser ist, je allgemeiner sie ist, was bedeutet,
  dass es auch sinnvoll ist, die Menge <math|A> festzulegen.

  Doch zunächst ein paar Worte zur Notation. Es gibt so viele Bücher, so
  viele verschiedene Arten der Notation, und dies ist eine echte Lektion für
  Studierende, die an eine präzise Notation gewöhnt sind (für diejenigen, die
  nicht daran gewöhnt sind, spielt es keine Rolle, aber nehmen wir das Beste
  an). Sie können ihn auch schreiben, indem Sie einen senkrechten Strich
  anstelle eines Doppelpunkts setzen oder das erste <math|x\<in\> A> unter
  den Quantor schreiben. Oder wir können Klammern setzen: entweder so, oder
  so, oder so.

  Bald sehen wir einige beliebte Schriftarten, die quasi Standard sind, weil
  Tausende von Menschen sie jeden Tag benutzen -- natürlich auf einem
  Computer!

  Doch bevor wir dazu kommen, müssen wir eine sehr wichtige Sache einführen:
  <with|font-shape|italic|Prädikate>. Ein Prädikat gibt eine Eigenschaft an,
  die auf bestimmte Elemente innerhalb einer Grundmenge zutrifft, z.B.<abbr|>
  <math|P(x)>, das besagt, dass eine Zahl positiv ist, oder <math|G(x,y)>,
  das besagt, dass eine Zahl gröÿer als eine andere ist. Wir können zum
  Beispiel die Aussage formalisieren, dass, wenn <math|x> positiv ist und
  <math|y> gröÿer als <math|x> ist, <math|y> notwendigerweise positiv ist:

  <\equation>
    \<forall\>x,y\<in\>A:P<around*|(|x|)>\<wedge\>G<around*|(|x,y|)>\<Rightarrow\>P<around*|(|y|)>.<label|pred>
  </equation>

  Natürlich müssen wir immer zuerst klären, ob die Prädikate eine bestimmte
  Bedeutung haben oder ob wir alle möglichen Bedeutungen auf einmal
  berücksichtigen wollen. Wenn wir den beiden hier verwendeten Prädikaten den
  obigen Inhalt geben, dann ist die Aussage wahr; wenn wir aber den Inhalt
  des Prädikats <math|G> umgekehrt verstehen, dann ist sie offensichtlich
  falsch. In unserem Fall ist der Inhalt also genauso wichtig.

  <section|Syntax>

  <subsection|Die Schreibweise in Aris>

  Das Schöne an Aris ist, dass wir die Grundmenge <math|A> nicht festlegen
  müssen, so dass wir bereits von einer Grundmenge ausgehen. Dieser Vorteil
  ist auch ein Nachteil, denn wir können die Grundmenge nicht fixieren, wenn
  wir das aus Absicht wollen. Dies ermöglicht es uns jedoch, Aufgabentypen zu
  untersuchen, die unabhängig von der Grundmenge sind -- dazu später mehr.

  Wir schreiben zum Beispiel, dass jedes <math|x\<in\> A> die Eigenschaft
  <math|P> hat:

  <\equation*>
    \<forall\>x<around*|(|P<around*|(|x|)>|)>
  </equation*>

  \ Die Formel (<reference|pred>) kann wie folgt angegeben werden:

  <\equation*>
    \<forall\>x\<forall\>y<around*|(|<around*|(|P<around*|(|x|)>\<wedge\>G<around*|(|x,y|)>|)>\<rightarrow\>P<around*|(|y|)>|)>
  </equation*>

  Vergessen Sie nicht, die Klammern richtig anzugeben, sonst weiÿ Aris nicht,
  was Sie wollen, oder schlimmer noch, es stürzt einfach ab.

  <subsection|Die Schreibweise in Mathematica>

  In Mathematica werden, wie wir bereits gesehen haben, die Parameter in
  eckigen Klammern hinter jedem Befehl angegeben. Die Formel
  (<reference|pred>) sieht in Mathematica wie folgt aus:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      ForAll[{x, y}, Implies[P[x] && G[x, y], P[y]]]
    </input>
  </session>

  In Mathematica können wir auch sagen, was jedes Prädikat bedeutet. Zum
  Beispiel:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      P[x_] := x\<gtr\>0
    </input>
  </session>

  Weiters:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      G[x_,y_] := x\<less\>y
    </input>
  </session>

  Wenn wir nun die obige Aussage mit dem Quantor erneut eingeben, schreibt
  das System sie für uns als <verbatim|ForAll[{x, y}, Implies[x \<gtr\> 0 &&
  x \<less\> y, y \<gtr\> 0]]> um, was uns natürlich freut, aber wir wären
  noch glücklicher, wenn es uns auch sagen würde, ob sie wahr ist oder nicht.
  Dazu müssen wir eine Grundmenge angeben, die nun die Menge der reellen
  Zahlen sein sollte:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      Resolve[ForAll[{x, y}, Implies[P[x] && G[x,y], P[y]]], Reals]
    </input>
  </session>

  Die Antwort lautet erwartungsgemäÿ: <verbatim|True>. Wenn wir nun
  <math|G(x,y)> mit der umgekehrten Relation umdefinieren, lautet die
  Antwort, wie erwartet, <verbatim|False>. Hurra!

  <subsection|Die Schreibweise in GeoGebra>

  Eigentlich verwendet GeoGebra diese Notation noch nicht, es ist nur ein
  vorläufiger Vorschlag des Autors, der den Prototyp erstellt hat. Der
  Prototyp kann in <with|font-shape|italic|GeoGebra Discovery><index|GeoGebra
  Discovery> getestet werden. Im Gegensatz zu Mathematica können wir hier nur
  Prädikate verwenden, die wir bereits definiert haben. Das heiÿt, auf
  folgende Weise:

  <\enumerate>
    <item>Wir gelangen zum CAS-Fenster.

    <item>Wir definieren <math|P>:

    <\equation*>
      P<around*|(|x|)>\<assign\>x\<gtr\>0
    </equation*>

    Das Grafik-Fenster zeigt grafisch, was dies in der zweidimensionalen
    Ebene bedeutet.

    <item>Wir definieren <math|G>:

    <\equation*>
      G<around*|(|x,y|)>\<assign\>x\<less\>y
    </equation*>

    Im Grafik-Fenster wird dieser Schritt ebenfalls grafisch dargestellt.

    <item>Wir geben den Ausdruck mit dem Quantor wie folgt an:

    <\equation*>
      \<forall\>x <around*|(|\<forall\>y <around*|(|P<around*|(|x|)>\<wedge\>G<around*|(|x,y|)>\<rightarrow\>P<around*|(|y|)>|)>|)>
    </equation*>

    Dabei achten wir darauf, dass nach den quantisierten Variablen ein
    Leerzeichen steht.

    <item>Der Befehl <verbatim|ReelleQuantorenelimination($3)> sagt uns, ob
    der quantisierte Ausdruck wahr oder falsch ist. (Hier ist er wahr.)
    Beachten wir, dass wir die Grundmenge auf die Menge der reellen Zahlen
    festgelegt haben -- eine schlechte Nachricht für diejenigen, die
    mathematisches Vergnügen lieber in ganzen Zahlen suchen, aber wir werden
    sehen, dass die Welt der reellen Zahlen auch schön ist.

    <item>Wenn wir nun die Definition in Zeile 2 in die entgegengesetzte
    Beziehung ändern, wird die Antwort in Zeile 4 automatisch falsch. Genau
    das, was wir erwartet haben!
  </enumerate>

  <section|Operationen>

  Die oben beschriebene \RSprache\P ist bereits reichhaltig genug, um ein
  breites Spektrum an mathematischen Ideen zu beschreiben, aber wir werden
  noch einige Verfeinerungen vornehmen, um unsere Arbeit komfortabler zu
  gestalten. Wenn wir zum Beispiel formulieren wollen

  <\equation>
    \<forall\>x,y\<in\>A:P<around*|(|x|)>\<wedge\>G<around*|(|x,y|)>\<Rightarrow\>P<around*|(|y+1|)>,<label|pred2>
  </equation>

  das heiÿt, wenn <math|x> positiv ist und <math|x\<less\>y>, dann ist
  <math|y+1> notwendigerweise positiv, dann brauchen wir eine Operation und
  ein Symbol, das die Zahl <math|1> darstellt. Wenn wir diese Bequemlichkeit
  nicht nutzen wollten, könnten wir sagen, dass wir ein neues Prädikat,
  <math|E(y)>, verwenden würden, wobei <math|E(y)> bedeutet, dass <math|y+1>
  positiv ist. So können wir ohne Operationen und ohne das Symbol <math|1>
  eine \Rspartanische\P Formel finden, nämlich diese:

  <\equation>
    \<forall\>x,y\<in\>A:P<around*|(|x|)>\<wedge\>G<around*|(|x,y|)>\<Rightarrow\>E<around*|(|y|)>.<label|pred3>
  </equation>

  Dem aufmerksamen Leser mag auch auffallen, dass <math|P(x)> als
  <math|G(0,x)> formuliert werden könnte, wenn das Symbol <math|0> verfügbar
  wäre. Es wäre also nicht dumm, einige Konstanten einzuführen, denn das
  würde die Formulierung unserer Aussagen erleichtern. Es ist leicht zu
  erkennen, dass die Einführung von Operatoren und bestimmten Mengenelementen
  wirklich eine Frage der Bequemlichkeit ist und das Wesen der Sprache nicht
  verändert.

  Alle diese Annehmlichkeiten werden von den drei vorgestellten Softwaretools
  unterstützt. Aris nennt diese <with|font-shape|italic|Funktionssymbole>.
  Funktionssymbole sollten mit einem Kleinbuchstaben beginnen, können aber
  mehrere Zeichen lang sein. Wenn Sie z.B.<abbr|> <math|y+1> aus <math|y>
  bilden wollen, können Sie es als <math|n(y)> bezeichnen (was die nächste
  Zahl bedeuten würde, die um <math|1> gröÿer ist), oder als <math|p(y,e)>,
  was bedeutet, dass Sie die Summe von <math|y> und <math|e> meinen (hier
  bezeichnen wir <math|1> mit <math|e>). Im letzteren Fall ist es auch
  nützlich, irgendwo zu sagen, dass <math|e> die multiplikative Einheit ist,
  so dass es eine Multiplikationsoperation gibt, die wir als <math|m(a,b)>
  bezeichnen können, und wir können auch <math|\<forall\>a(m(a,e)=a)>
  angeben. Hier fällt auf, dass wir es geschafft haben, das Symbol = in die
  Formel einzuschmuggeln, obwohl wir auch ein Prädikatssymbol für Gleichheit
  einfügen könnten, z.B.<abbr| ><math|E(x,y)>, das <math|x=y> ausdrücken
  würde. Glücklicherweise erlaubt uns Aris zumindest die Verwendung des
  <math|=>-Symbols, wenn auch nicht anderer Operationssymbole. (Aber wie
  konnte es das zulassen? Dazu müsste die Grundmenge festgelegt werden, und
  das ist in der vorliegenden Fassung nicht möglich.)

  In Mathematica wird die übliche Syntax des Systems verwendet. Also
  schreiben wir einfach:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      ForAll[{x, y}, Implies[P[x] && G[x, y], P[y+1]]]
    </input>
  </session>

  Diese Technik funktioniert auch in GeoGebra Discovery:

  <\equation*>
    \<forall\>x <around*|(|\<forall\>y <around*|(|P<around*|(|x|)>\<wedge\>G<around*|(|x,y|)>\<rightarrow\>P<around*|(|y+1|)>|)>|)>
  </equation*>

  <section|Die Grundmenge>

  Wie wir gesehen haben, ist die Angabe einer Grundmenge in einigen logischen
  Systemen nicht relevant, weil wir nach Beziehungen suchen, die ohne sie
  klar erkennbar sind. In den letzten Lektionen des Kurses werden wir diese
  Systeme genauer untersuchen, aber zunächst werden wir mit einigen festen
  Grundmengen experimentieren.

  Die Struktur der natürlichen Zahlen scheint auf den ersten Blick einfach
  genug zu sein, und wenn man mit einer endlichen Anzahl von Elementen
  spielt, können die Beweise recht gut mechanisierbar (sogar
  computerisierbar) sein, vorausgesetzt die Anzahl der Elemente ist nicht zu
  groÿ. Sobald wir jedoch eine unendliche Anzahl von natürlichen Zahlen
  haben, kann die mechanische Analyse schnell versagen, wie wir gleich sehen
  werden. Überraschenderweise tritt ein solches Problem bei reellen Zahlen
  nicht auf (wenn wir endlich viele zusammenhängende Teilmengen davon
  betrachten), so dass die Prädikatenlogik in der Welt der reellen Zahlen
  besser funktioniert, sofern bestimmte Dimensionsbeschränkungen erfüllt
  sind.

  Betrachten wir das folgende Problem: Stimmt es, dass es unendlich viele
  Zwillingsprimzahlen gibt? Zwillingsprimzahlen sind \Rbenachbarte\P
  Primzahlen, deren Differenz 2 ist. Zwillingsprimzahlen sind also 3 und 5, 5
  und 7, 11 und 13, oder 17 und 19. Viele Mathematiker vermuten, dass es
  unendlich viele Zwillingsprimzahlen gibt, aber diese Frage bleibt ungelöst.

  Wir können das Problem jedoch leicht formalisieren. Zunächst wäre es gut,
  zu formalisieren, dass eine natürliche Zahl eine Primzahl ist. Um
  Verwechslungen mit den vorherigen Definitionen zu vermeiden, bezeichnen wir
  mit <math|I(n)>, dass eine Zahl <math|n> eine Primzahl ist (wobei wir uns
  an das Wort <with|font-shape|italic|irreduzibel> erinnern), und wir können
  es auf diese Weise formalisieren:

  <\equation*>
    I<around*|(|n|)>\<assign\>\<forall\>a,b
    <around*|(|<around*|(|n=a\<cdot\>b|)>\<Rightarrow\><around*|(|a=1\<vee\>b=1|)>|)>,
  </equation*>

  wobei die Grundmenge die Menge der natürlichen Zahlen ist. Wir können mit
  dieser Definition nicht ganz zufrieden sein, weil sie eine wahre Aussage
  für <math|n=1> liefert (d.h.<abbr|> <math|I(1)> ist wahr, also nimmt sie
  <math|1> als Primzahl), aber wir schlucken diesen Frosch fürs Erste, um die
  Formel nicht zu sehr zu verkomplizieren.

  Die Tatsache, dass es unendlich viele Primzahlzwillinge gibt, wird
  angenähert, indem man sagt: der kleinere der beiden Zwillingsprimzahlzen
  ist beliebig groÿ. Wir werden unter den Aufgaben prüfen, ob dies
  tatsächlich dem gesuchten Problem entspricht. Wir können dann die Formel
  angeben:

  <\equation>
    \<forall\>m\<exists\>n:n\<gtr\>m\<wedge\>\<forall\>a,b
    <around*|(|<around*|(|n=a\<cdot\>b|)>\<Rightarrow\><around*|(|a=1\<vee\>b=1|)>|)>\<wedge\>\<forall\>a,b<around*|(|<around*|(|n+2=a\<cdot\>b|)>\<Rightarrow\><around*|(|a=1\<vee\>b=1|)>|)>.<label|twin>
  </equation>

  In eine kürzere Form könnte man es so schreiben:

  <\equation*>
    \<forall\>m\<exists\>n:n\<gtr\>m\<wedge\>I<around*|(|n|)>\<wedge\>I<around*|(|n+2|)>,
  </equation*>

  was unsere Formel klarer machen würde, aber dann müssten wir natürlich auf
  die Definition von <math|I<around*|(|n|)>> separat eingehen.

  Betrachten wir, dass unsere Ungeschicklichkeit im Fall <math|n=1> kein
  solches Problem ist, weil es bei der Zwillingsprimzahlsvermutung ohnehin um
  \Ralle <math|m>\P geht, so dass der wichtige Teil der Aussage nicht der
  Fall <math|m=0> ist (wenn 0 überhaupt als natürliche Zahl betrachtet wird),
  sondern die groÿen <math|m>: Die endgültige Antwort hängt von der
  Überprüfung der groÿen <math|m> ab.

  Betrachten wir noch einmal Formel (<reference|twin>). Ändern wir die
  Grundmenge in die Menge der reellen Zahlen. Wir werden nun das betreffende
  Problem in GeoGebra Discovery mit einer einzeiligen Eingabe formulieren:
  <verbatim|<math|ReelleQuantorenelimination(\<forall\>m \ (\<exists\>n
  \ (n\<gtr\>m \<wedge\> (\<forall\>a \ (\<forall\>b \ (((n=a
  \ b)\<rightarrow\>((a=1) \<vee\> (b=1)))))) \<wedge\> (\<forall\>a
  \ (\<forall\>b \ (((n+2=a \ b)\<rightarrow\>((a=1) \<vee\> (b=1)))))))))>>.
  Aus technischen Gründen (die hoffentlich in einer zukünftigen Version des
  Programms kein Hindernis sein werden) mussten wir den Auswertungsbefehl
  sofort geben, aber wir erwarteten, dass die Ausgabe falsch sein würde.
  Warum? Für eine Menge reeller Zahlen bedeutet die Gleichung <math|n=a b>
  keineswegs, dass <math|a=1> oder <math|b=1> für jene reelle Zahl <math|n>
  gilt, da jede Zahl in einer unendlichen Vielzahl von Multiplikationen
  vorkommt. Für die Menge der reellen Zahlen macht die Teilbarkeit also auch
  keinen Sinn (für die Menge der rationalen Zahlen macht sie sogar in keinem
  <with|font-shape|italic|Körper> einen Sinn).

  Was haben wir hier? Die Formel (<reference|twin>) hat einen unbekannten
  Wahrheitswert für die Menge der natürlichen Zahlen: Sie kann wahr oder
  falsch sein, aber niemand kennt derzeit die genaue Antwort. Die gleiche
  Formel ist jedoch für die Menge der reellen Zahlen falsch. Es ist klar,
  dass alles von der Grundmenge abhängt, und es ergibt sich die interessante
  Situation, dass für die Menge der natürlichen Zahlen (die einfacher
  erscheinen mag) die Antwort unbekannt ist, während für die reellen Zahlen
  (die die komplexere Struktur darstellen) die Antwort gut analysierbar und
  eindeutig falsch ist.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Beweisen Sie, dass unsere Formel (<reference|twin>) zur Vermutung
    der Zwillingsprimzahlen äquivalent ist.

    <item>Wie kann man formalisieren, dass es unendlich viele Primzahlen
    gibt? Was lässt sich über diese Aussage für die Grundmenge der reellen
    Zahlen sagen?

    <item>Wie kann das Prädikat <math|I(n)>, das die Primzahlen definiert,
    richtig angegeben werden?
  </enumerate>

  <section|Reelle Quantorenelimination>

  Ausgehend von den obigen Ausführungen werden wir nun mit der reellen
  Grundmenge arbeiten. Interessanterweise kann in diesem Fall eine
  vollständige mathematische Theorie konstruiert werden, die unter bestimmten
  Bedingungen sagen kann, ob alle möglichen Aussagen wahr sind oder nicht.
  Damit verfügen wir über ein enorm leistungsfähiges mathematisches Werkzeug,
  das die Wissenschaft in den letzten Jahrzehnten entscheidend vorangebracht
  hat. Deshalb widmen wir dem Thema mehr Zeit.

  Wir werden quantifizierte Aussagen untersuchen, die Polynome sowie
  Gleichheiten und Ungleichungen beinhalten können. Wir werden über solche
  Aussagen sprechen (und sie in Formeln wiedergeben):

  <\enumerate>
    <item><math|\<exists\>x <around*|(|x<rsup|2>=-1|)>>, dies ist für die
    Menge der reellen Zahlen offensichtlich falsch,

    <item><math|\<forall\>x <around*|(|\<exists\>y
    <around*|(|x\<less\>y|)>|)>>, dies heiÿt: es gibt keine gröÿte reelle
    Zahl (dies ist offensichtlich wahr),

    <item><math|\<exists\>x <around*|(|\<exists\>y
    <around*|(|<around*|(|x+y=1|)>\<wedge\><around*|(|2x+3y=0|)>|)>|)>>, dies
    geht um die Lösbarkeit eines <with|font-shape|italic|konkreten> linearen
    Gleichungssystems in zwei Variablen,

    <item><math|\<exists\>x <around*|(|\<exists\>y <around*|(|a<rsub|11>
    x+a<rsub|12> y=b<rsub|1>\<wedge\>a<rsub|21> x+a<rsub|22>
    y=b<rsub|2>|)>|)>>, dies geht um die <with|font-shape|italic|allgemeine>
    Lösbarkeit der linearen Gleichungssysteme in zwei Variablen,

    <item><math|\<exists\>x <around*|(|a x<rsup|2>+b x+c=0|)>>, dies geht um
    die Lösbarkeit der quadratischen Gleichungen.
  </enumerate>

  Dies sind nur einige Beispiele, aber bei den letzten beiden ist zu
  beachten, dass die Antwort auf die Frage auch von den Zahlen
  <math|a<rsub|11>,a<rsub|12>,a<rsub|21>,a<rsub|22>,b<rsub|1>,b<rsub|2>> und
  <math|a,b,c> abhängt. Das heiÿt, die Antwort kann ja oder nein lauten, je
  nachdem, wie diese Parameter lauten. Aus dem, was wir von der Schule
  wissen, ist klar, dass die Lösbarkeit einer Gleichung zweiten Grades vom
  Vorzeichen der Diskriminante abhängt, d.h.<abbr|> wenn <math|b<rsup|2>-4 a
  c\<geq\> 0> ist, dann (sogar \Rgenau dann\P) kann die letzte Gleichung
  gelöst werden. Man beachte, dass diese \Rformelhafte\P Antwort keine
  Quantoren enthält, sondern nur eine Ungleichung, die auf einem
  Polynomausdruck beruht, so dass man die Antwort auch als \Rohne Quantoren\P
  verstehen kann. Dies ergibt einen Sinn für den Titel: Wir haben eine
  <with|font-shape|italic|Quantorenelimination> unter der Bedingung einer
  <with|font-shape|italic|reellen> Grundmenge durchgeführt.<index|reelle
  Quantorenelimination>

  Dies motiviert uns, auszuprobieren, ob die Technologie uns bei der
  Beantwortung dieser Fragen helfen kann. Wir werden GeoGebra Discovery
  verwenden. Die ersten drei Aufgaben können mit der bisherigen Syntax leicht
  gelöst werden. Die vierte Aufgabe liefert aufgrund eines technischen
  Problems nicht die richtige Antwort (deswegen werden wir hier Mathematica
  fragen), die fünfte läuft gut, aber etwas seltsam ist die

  <\equation>
    4 a c-b<rsup|2>\<leqslant\>0<space|1em>\<wedge\><space|1em><around*|(|a\<neq\>0\<vee\>c=0\<vee\>4
    a c-b<rsup|2>\<less\>0|)><label|quadr>
  </equation>

  Antwort gegeben, die sogar noch weiter geht als die oben genannten und
  zusätzliche Bedingungen stellt. Wenn man darüber nachdenkt, ist daran etwas
  Wahres dran, denn wir haben in unserer Aufgabenstellung nichts über
  <math|a> gesagt, und wenn es 0 wäre, dann wäre unsere Gleichung keine
  Gleichung zweiten Grades, also muss man darüber nachdenken, was es
  bedeutet, wenn es nur eine Gleichung ersten Grades ist.

  Wir weisen nun darauf hin, dass die Antwort, die eine echte
  Quantorenelimination gibt, nicht nur eine wahr/falsch Antwort oder eine
  Ungleichung (oder Gleichung) sein kann, sondern auch eine Reihe von
  Gleichungen und Ungleichungen, die als logischer Ausdruck gegeben ist (wie
  in Formel (<reference|quadr>)).

  Um die Nerven zu beruhigen, geben wir den Mathematica-Befehl für Frage 4
  an, der uns aus der Patsche helfen wird:

  <\session|Mathematica|wolframscript>
    <\input>
      Mathematica]\ 
    <|input>
      Resolve[Exists[{x, y}, a11 x+a12 y==b1 && a21 x+a22 y==b2], Reals]
    </input>
  </session>

  Die Antwort lautet:

  <\with|par-mode|center>
    <verbatim|(a11 == 0 && a12 == 0 && b1 == 0 && b2 == 0) \|\|
    <new-line>(a11 == 0 && a12 != 0 && a21 != 0) \|\| <new-line>(a11 == 0 &&
    a12 != 0 && -(a22 b1) + a12 b2 == 0) \|\| <new-line>(a11 == 0 && a21 != 0
    && b1 == 0) \|\| <new-line>(a11 == 0 && a22 == 0 && b1 == 0 && b2 == 0)
    \|\| <new-line>(a11 == 0 && a22 != 0 && -(a22 b1) + a12 b2 == 0) \|\|
    <new-line>(a11 != 0 && -(a12 a21) + a11 a22 != 0) \|\| <new-line>(a11 !=
    0 && -(a21 b1) + a11 b2 == 0)>
  </with>

  Es ist nicht sehr prägnant, aber wir sollten tief durchatmen und versuchen
  zu entschlüsseln, was es bedeutet. Wir müssen unsere Erinnerungen an die
  lineare Algebra auffrischen! Um die Ausgabe lesbarer zu machen, schreiben
  wir sie in mathematischer Standardnotation um:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|a<rsub|11>=0\<wedge\>a<rsub|12>=0\<wedge\>b<rsub|1>=0\<wedge\>b<rsub|2>=0>|<cell|\<vee\><eq-number><label|line1>>>|<row|<cell|>|<cell|a<rsub|11>=0\<wedge\>a<rsub|12>\<neq\>
    0\<wedge\>a<rsub|21>\<neq\>0>|<cell|\<vee\><eq-number><label|line2>>>|<row|<cell|>|<cell|a<rsub|11>=0\<wedge\>a<rsub|12>\<neq\>0\<wedge\>-a<rsub|22>
    b<rsub|1>+a<rsub|12> b<rsub|2>=0>|<cell|\<vee\><eq-number><label|line3>>>|<row|<cell|>|<cell|a<rsub|11>=0\<wedge\>a<rsub|21>\<neq\>0\<wedge\>b<rsub|1>=0>|<cell|\<vee\>>>|<row|<cell|>|<cell|a<rsub|11>=0\<wedge\>a<rsub|22>=0\<wedge\>
    b<rsub|1>=0\<wedge\>b<rsub|2>=0>|<cell|\<vee\>>>|<row|<cell|>|<cell|a<rsub|11>=0\<wedge\>a<rsub|22>\<neq\>0\<wedge\>-a<rsub|22>
    b<rsub|1>+a<rsub|12> b<rsub|2>=0>|<cell|\<vee\>>>|<row|<cell|>|<cell|a<rsub|11>\<neq\>0\<wedge\>-a<rsub|12>
    a<rsub|21>+a<rsub|11> a<rsub|22>\<neq\>0>|<cell|\<vee\>>>|<row|<cell|>|<cell|a<rsub|11>\<neq\>0\<wedge\>-a<rsub|21>
    b<rsub|1>+a<rsub|11> b<rsub|2>=0>|<cell|>>>>
  </eqnarray*>

  <\enumerate>
    <item>(<reference|line1>) besagt, dass es sicher eine Lösung gibt, wenn
    die erste Gleichung des Systems lauter 0 ist (also ist sie löschbar), und
    die rechte Seite der zweiten Gleichung des Systems 0 ist. Diese bedeutet
    also:

    <\equation*>
      a<rsub|21> x+a<rsub|22> y=0,
    </equation*>

    welche beispielsweise die Lösung <math|x=y=0> besitzt.

    <item>(<reference|line2>) besagt, dass es eine Lösung gibt, wenn <math|x>
    in der ersten Gleichung fehlt und <math|y> nicht, <math|x> aber in der
    zweiten Gleichung vorhanden ist. Somit ergibt sich aus der ersten
    Gleichung ein konkretes <math|y>, das, wenn man es in der zweiten
    Gleichung durch <math|x> ersetzt, in jedem Fall eine Lösung ergibt (da
    <math|x> nicht verschwindet).

    <item>(<reference|line3>) zeigt auch, dass eine Lösung möglich ist, wenn
    <math|x> in der ersten Gleichung fehlt und <math|y> nicht, aber <math|x>
    kann in der zweiten Gleichung fehlen. Diese letzte Bedingung ist nicht
    explizit zu lesen, sondern ergibt sich aus der Bedingung in
    (<reference|line2>). Nach (<reference|line3>) ist aber noch nicht alles
    verloren, denn wenn die Bedingung <math|-a<rsub|22> b<rsub|1>+a<rsub|12>
    b<rsub|2>=0> für die Koeffizienten von <math|y> gilt, dann gibt es immer
    noch eine Lösung. Was bedeutet das für den sterblichen Menschen? Etwas
    wie

    <\equation*>
      <frac|a<rsub|12>|a<rsub|22>>=<frac|b<rsub|1>|b<rsub|2>>,
    </equation*>

    falls keine unangenehme Division durch 0 dazwischen kommt, aber in der
    linearen Algebra bedeutet dies so etwas wie, dass die zweite Gleichung
    ein Vielfaches der ersten ist (da die Verhältnisse der entsprechenden
    Koeffizienten gleich sind).
  </enumerate>

  Das ist anstrengend, nicht wahr? Und wir haben noch nicht einmal über
  (<reference|line3>) nachgedacht. Aber auch die anderen werden wir nicht
  machen, sondern uns auf die eiserne Logik von Mathematica verlassen, denn
  ihre Antworten auf die ersten Zeilen zeigen überzeugend, dass sie sich mit
  der Frage auskennt.

  Die obigen Ausführungen verdeutlichen, dass man nicht nur gut im Stellen
  von Fragen sein muss (was nicht immer trivial ist), sondern dass das
  Ablesen der Antwort eine anspruchsvolle Aufgabe sein kann.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Überprüfen Sie, dass die Antwort (<reference|quadr>) richtig ist.

    <item>Geben Sie eine vollständige Analyse für die von Mathematica
    angegebene Antwort auf die Lösbarkeit des linearen Gleichungssystems in
    zwei Variablen an.

    <item>Formalisieren Sie folgende Aussage aus der Analysis: Die Funktion
    <math|y=x<rsup|2>> ist streng monoton steigend für <math|x\<gtr\>0>.
    Hinweis: Verwenden Sie eine Implikation!

    <item>Betrachten Sie folgende Aussagen:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<forall\>x (x\<gtr\>0
      \<rightarrow\> (\<exists\>y(y\<gtr\>0 \<wedge\>
      y\<less\>x)))>|<cell|<eq-number><label|prenex>>>|<row|<cell|>|<cell|\<forall\>x
      (x\<geqslant\>0 \<rightarrow\> (\<exists\>y(y\<geqslant\>0 \<wedge\>
      y\<less\>x)))>|<cell|<eq-number>>>>>
    </eqnarray*>

    <\enumerate-alpha>
      <item>Welche Aussage ist richtig? Überprüfen Sie Ihre Vermutung mit
      Hilfe von GeoGebra Discovery.

      <item>Welche wichtigen Aussagen der Analysis wurden hier formalisiert?

      <item>Negieren Sie die beiden Aussagen. Überprüfen Sie Ihre Ergebnisse
      auch mit Technologieeinsatz!

      <item>Beweisen Sie die wahre Aussage aus den obigen Formeln \U und
      widerlegen Sie die falsche.
    </enumerate-alpha>

    Hinweis: Im Programm GeoGebra Discovery können Sie die
    Tastenkombinationen <key|A-v> (\<forall\>), <key|A-x> (\<exists\>),
    <key|A-y> (<math|\<rightarrow\>>), <key|A-k> (<math|\<wedge\>>),
    <key|A-j> (<math|\<vee\>>), <key|A-z> (<math|\<neg\>>) und <key|A-h>
    (<math|\<neq\>>) verwenden.
  </enumerate>

  <section|Pränexforme>

  <nocite|RISC3848>Wir haben festgestellt, dass GeoGebra Discovery manchmal
  unsere Formeln neu schreibt, während wir sie eingeben. Zum Beispiel wurde
  die Formel (<reference|prenex>) wie folgt umgewandelt:

  <\equation*>
    \<forall\>x <around*|(|\<exists\>y <around*|(|x\<leqslant\>0\<vee\>y\<gtr\>0\<wedge\>y-x\<less\>0|)>|)>
  </equation*>

  \U was mehrere Änderungen darstellt, da die Implikation offensichtlich in
  eine Disjunktion umgeschrieben und die Ungleichung auf 0 gesetzt wurde. Uns
  interessiert nun ein dritter Schritt: Das Programm hat die Quantoren direkt
  hintereinander geschrieben und alles, was keinen Quantor mehr enthält, in
  die innersten Klammern gepackt. Nach einigen einfachen Umformulierungen
  lässt sich folgern, dass eine solche Umwandlung immer möglich ist,
  unabhängig von der Eingabeformel. Eine solche Form -- bei der die Quantoren
  an erster Stelle stehen und nach ihnen, innerhalb der Klammern, der nicht
  quantifizierte logische Ausdruck -- wird als
  <with|font-shape|italic|Pränexform><index|Pränexform> bezeichnet.

  GeoGebra Discovery tut dies ohnehin mit allen Eingaben. Der einfache Grund
  dafür ist, dass das Programm alles als Pränexform in seinem internen System
  speichert, was bedeutet, dass es keine Nicht-Pränexforme verarbeiten kann.

  Selbst einfache Formeln wie <math|(\<exists\>x (x\<gtr\>0)) \<wedge\>
  (\<exists\>x (x\<less\>0))> werden in pränex umgewandelt, was auf den
  ersten Blick wie eine alberne Formel wie <math|\<exists\>x (\<exists\>xx0
  (x\<gtr\>0\<wedge\>xx0\<less\>0))> aussieht. <math|xx0> wird hier
  absichtlich seltsam geschrieben, da es sich um eine neu eingeführte
  technische Variable handelt. Sie ist erforderlich, weil die Beschreibung
  der Eingabe als eine einzige Pränexform bereits eine zweite Variable
  impliziert, die nicht das im ersten Teil der Konjunktion angegebene
  <math|x> sein kann. Natürlich wäre es besser, einen schöneren
  Variablennamen (z.B. <math|x<rprime|'>> oder <math|x<rsub|1>>) anstelle von
  <math|xx0> zu schreiben, aber das sollten wir dem Programm erklären!

  Die Möglichkeit, Pränexforme zu erstellen, eröffnet eine neue Strategie,
  indem die zu prüfenden Formeln auf eine alternierende Reihe von Quantoren
  eingegrenzt werden. Die identischen Quantoren der Reihe nach -- im
  mathematischen Sinne, d.h.<abbr|> nicht im Programm! -- kann durch einen
  gemeinsamen Quantor ersetzt werden. In unserem Fall sieht die Formel
  folgendermaÿen aus (geben Sie dies nicht in GeoGebra Discovery ein, es wird
  nicht funktionieren!):

  <\equation*>
    \<exists\>x,xx0 <around*|(|x\<gtr\>0\<wedge\>xx0\<less\>0|)>
  </equation*>

  Man kann sich das auch so vorstellen, dass man nach einem Paar
  <math|(x,xx0)> sucht, d.h.<abbr|> die Grundmenge auf
  <math|\<bbb-R\><rsup|2>> erweitert. (Wenn man noch mehr Variablen unter
  einem Quantor einbezieht, handelt es sich um eine Descartes-Potenz mit
  einem noch höheren Exponenten).

  Im Moment haben wir nur einen Quantor zu kombinieren, aber wir können die
  Dinge verkomplizieren, damit der andere Quantor erscheint. Zum Beispiel:

  <\equation*>
    \<exists\>x,y <around*|(|\<forall\>a <around*|(|x\<leqslant\>a\<wedge\>a\<leqslant\>y|)>|)>
  </equation*>

  Damit wird behauptet, dass die Menge der reellen Zahlen in einem
  geschlossenen Intervall <math|[x,y]> enthalten sein kann (was falsch ist).
  Wenn wir diese Aussage nun verallgemeinern wollen (d.h.<abbr|> behaupten,
  dass <math|\<bbb-R\><rsup|2>> in ein Rechteck gezeichnet werden kann),
  würden wir schreiben:

  <\equation*>
    \<exists\>x<rsub|1>,x<rsub|2>,y<rsub|1>,y<rsub|2>
    <around*|(|\<forall\>a<rsub|1>,a<rsub|2>
    <around*|(|x<rsub|1>\<leqslant\>a<rsub|1>\<wedge\>a<rsub|1>\<leqslant\>x<rsub|2>\<wedge\>y<rsub|1>\<leqslant\>a<rsub|2>\<wedge\>a<rsub|2>\<leqslant\>y<rsub|2>|)>|)>
  </equation*>

  Das ist natürlich auch falsch, aber es zeigt, dass der Spaÿ so lange
  weitergehen kann, wie man will.

  Die wirklich Virtuosen können sich die Zeit damit vertreiben, dass sie die
  Quantoren so lange abwechseln, wie sie wollen. Grundsätzlich gibt es zwei
  Möglichkeiten: man beginnt mit dem Existenzquantor, fährt mit dem
  Universalquantor fort, dann wieder mit dem Existenzquantor, dann wieder mit
  dem Universalquantor usw.; die andere Möglichkeit ist umgekehrt: man
  beginnt mit dem Universalquantor, fährt mit dem Existenzquantor fort, dann
  wieder mit dem Universalquantor, dann wieder mit dem Existenzquantor usw.
  Beides macht Spaÿ<text-dots> In der Praxis, sagen wir mal, sind die meisten
  Leute nach zwei oder drei Quantoren verwirrt, aber es ist nie zu spät, mit
  dem Training zu beginnen!

  Schauen wir uns einige Beispiele an.

  <\enumerate>
    <item>Wir wollen sagen, dass die Funktion <math|y=x<rsup|2>> gegen
    \<infty\> geht, wenn <math|x\<rightarrow\>\<infty\>>. Mit Hilfe der
    GeoGebra Discovery Notation können wir nun schreiben:

    <\equation*>
      \<forall\>M ( \<exists\>N (\<forall\>x
      ((x\<gtr\>N)\<rightarrow\>(x<rsup|2>\<gtr\>M))))
    </equation*>

    Es folgt nun der Befehl <verbatim|ReelleQuantorelimination>, um die wahre
    Aussage zu erhalten.

    <item>Wir möchten ausdrücken, dass die Funktion <math|y=x<rsup|2>> stetig
    ist, wenn wir sie an der Stelle <math|x=3> betrachten und der Grenzwert 9
    ist. Strukturell sollten wir ähnlich vorgehen, aber technisch gibt es ein
    paar Herausforderungen:

    <\equation*>
      \<forall\>\<varepsilon\>(\<varepsilon\>\<gtr\>0 \<rightarrow\>
      (\<exists\>\<delta\> \ (\<delta\>\<gtr\>0 \<wedge\>
      (\<forall\>x((\|x\<minus\>3\|\<less\>\<delta\>)\<rightarrow\>(\|x<rsup|2>\<minus\>9\|\<less\>\<varepsilon\>))))))
    </equation*>

    Man beachte, dass die Ungleichungen, die die Positivität von
    <math|\<varepsilon\>> und <math|\<delta\>> beschreiben, nach dem Quantor
    (in die Klammer) verschachtelt sind, und dass die zusätzliche Bedingung
    nach dem universellen Quantor als Präfix einer Implikation und die nach
    dem existenziellen Quantor als Präfix einer Konjunktion angegeben ist.

    GeoGebra Discovery hat kein Problem damit, die letztgenannte Formel in
    pränex umzuschreiben:

    <\equation*>
      \<forall\>\<varepsilon\> \ (\<exists\>\<delta\> (\<forall\>x
      \ (\<varepsilon\> \<leq\> 0 \<vee\> \<delta\> \<gtr\> 0 \<wedge\>
      (\<delta\> - x + 3 \<leq\> 0 \<vee\> \<delta\> + x - 3 \<leq\> 0
      \<vee\> \<varepsilon\> - x<rsup|2> + 9 \<gtr\> 0 \<wedge\>
      \<varepsilon\> + x<rsup|2> - 9 \<gtr\> 0))))
    </equation*>

    Das heiÿt, es ist klar, dass wir eine alternierende Form
    <math|\<forall\>-\<exists\>-\<forall\>> haben. Wenn wir dies verneinen
    (warum nicht?), dann erhalten wir die Form

    <\equation*>
      \<exists\>\<varepsilon\> \ (\<forall\>\<delta\> \ (\<exists\>x
      \ (\<varepsilon\> \<gtr\> 0 \<wedge\> (\<delta\> \<leq\> 0 \<vee\>
      \<delta\> - x + 3 \<gtr\> 0 \<wedge\> \<delta\> + x - 3 \<gtr\> 0
      \<wedge\> (\<varepsilon\> - x<rsup|2> + 9 \<leq\> 0 \<vee\>
      \<varepsilon\> + x<rsup|2> - 9 \<leq\> 0)))))
    </equation*>

    die wieder alternierend ist, aber sie dem Muster
    <math|\<exists\>-\<forall\>-\<exists\>> entspricht.
  </enumerate>

  <subsection|Aufgaben><label|4-5-1>

  <\enumerate>
    <item>Geben Sie die Aussage <math|(\<exists\>x <around*|(|x=0|)>)\<vee\>
    (\<forall\>x <around*|(|x=1|)>)> in einer einzigen Pränexform
    an.<label|4-5-1-1>

    <item>Formalisieren Sie folgende Aussage in Pränexform: \RDie Funktion
    <math|y=x<rsup|2>> ist periodisch.\P Ist diese Aussage wahr?

    <item>Formalisieren Sie folgende Aussage in Pränexform: \RDie Funktion
    <math|y=x<rsup|2>> ist stetig an der Stelle <math|x=3> (und auf einmal
    besitzt sie einen bestimmten Grenzwert).\P Negieren Sie diese Aussage!

    <item>Formalisieren Sie folgende Aussage in Pränexform: \RDie Funktion
    <math|y=x<rsup|2>> ist stetig auf <math|\<bbb-R\>>.\P

    <item>Formalisieren Sie folgende Aussage in Pränexform: \RDie Funktion
    <math|y=x<rsup|2>> hat keine obere Schranke.\P Wie könnte man die
    Formulierung zur Aussage angeben, welche besagt, dass dieselbe Funktion
    eine untere Schranke hat?
  </enumerate>

  <section|Suchen nach Gewinnstrategie>

  Es ist vielleicht schwierig, sich über das bisher Erreichte wirklich zu
  freuen, aber wir versuchen, das jetzt nachzuholen. Im vorangegangenen
  Abschnitt haben wir festgestellt, dass es für jede Quantor-Aussage eine
  alternierende Form gibt, die entweder mit dem Quantor \<forall\> oder
  \<exists\> beginnt. Letzteres wird zuerst analysiert.

  <\enumerate>
    <item>Betrachten wir die Aussage <math|\<exists\> x <around*|(|\<forall\>
    y <around*|(|x\<cdot\> y=0|)>|)>> (für die Grundmenge nehmen wir die
    reellen Zahlen \U von jetzt an nutzen wir immer diese). Dies ist eine
    alternierende Pränexform, die übrigens wahr ist: dies drückt aus, dass es
    unter den reellen Zahlen immer ein multiplikatives Nullelement gibt, und
    tatsächlich gibt es so ein Element, nämlich die Zahl 0.

    Stellen wir uns vor, zwei Spieler, A und B, spielen, der erste Spieler
    nennt <math|x>, der zweite Spieler nennt <math|y>. A gewinnt, wenn
    <math|x\<cdot\> y=0>, aber wenn nicht, dann verliert er und B gewinnt.
    Die Frage ist, ob A eine Gewinnstrategie hat.

    Offensichtlich gibt es eine, nämlich dass sie <math|x=0> wählt. Was auch
    immer B \Rzieht\P, das Produkt <math|x\<cdot\> y> wird in jedem Fall 0
    sein.

    <item>Betrachten wir nun die Aussage <math|\<exists\> x
    <around*|(|\<forall\> y <around*|(|x\<less\>y<rsup|2>|)>|)>>. Dies
    besagt, dass die Funktion <math|f<around*|(|y|)>=y<rsup|2>> eine untere
    Schranke hat. Es wäre besser, die Aussage in die traditionellere Form
    <math|\<exists\> c <around*|(|\<forall\> x
    <around*|(|c\<less\>x<rsup|2>|)>|)>> schreiben, dann könnte es um die
    obere Schranke der Funktion <math|f<around*|(|x|)>=x<rsup|2>> gehen, und
    dies wäre für uns beruhigender. Wir schreiben sie deswegen um, und die
    untere Schranke wird die Zahl <math|c> sein.

    Stellen wir uns wieder vor, dass zwei Spieler, A und B, spielen, wobei
    der erste Spieler <math|c> und der zweite Spieler <math|x> setzt. Wenn
    <math|c\<less\>x<rsup|2>> ist, gewinnt A, andernfalls gewinnt B. Hat A
    eine Gewinnstrategie?

    Offensichtlich, und ein erster Zug wäre ein solcher, der ein negatives
    <math|c> ergibt. Unabhängig davon, wie B ein <math|x> dafür wählt, ist
    der Term <math|x<rsup|2>> in jedem Fall nicht negativ, und somit ist
    <math|c\<less\>x<rsup|2>> erfüllt.
  </enumerate>

  Wir finden nicht immer eine Gewinnstrategie. Vor allem, weil es so etwas
  nicht gibt: A vergeblich versucht zu gewinnen, gewinnt aber nie. Wie kann
  man das mit Formeln testen?

  <\enumerate>
    <item>Betrachten wir die Formel <math|\<exists\> p
    <around*|(|p\<gtr\>0\<wedge\><around*|(|\<forall\> x
    <around*|(|x<rsup|2>=<around*|(|x+p|)><rsup|2>|)>|)>|)>>. Dies ist
    übrigens eine nicht-pränex Lösung der Aufgabe <reference|4-5-1-1> aus
    Kapitel <reference|4-5-1>, also heiÿt das, dass die Funktion
    <math|y=x<rsup|2>> periodisch ist. Die Pränexform schaut so aus:
    <math|\<exists\> p <around*|(|\<forall\> x
    <around*|(|p\<gtr\>0\<wedge\><around*|(|x<rsup|2>=<around*|(|x+p|)><rsup|2>|)>|)>|)>>.

    A könnte nun denken, dass ein <math|p> seiner Wahl eine gute Idee sein
    könnte. Wenn man die Gleichung am Ende der Formel leicht abändert, erhält
    man <math|(2x+p)\<cdot\> p=0>. Da A sofort verliert, wenn <math|p> nicht
    positiv ist, kann die Multiplikation nur dann zu seinen Gunsten 0 sein,
    wenn der erste Faktor 0 ist. Aber B kann -- auf raffinierte Weise --
    dafür sorgen, dass der erste Faktor nicht 0 ist, indem er
    <math|x\<neq\>-<frac|p|2>> wählt. A hat also wirklich keine Chance, aber
    B hat nicht nur eine Chance, sondern gewinnt
    <with|font-shape|italic|immer>, wenn er clever spielt.

    Wir Mathematiker freuen uns, wenn die Gewinnstrategie für B genauer ist.
    Konkret: Wenn ein konkreter Zug <math|p> von A ist, dann ist
    <math|x\<neq\>-<frac| p|2>> keine genaue Antwort; wir wollen etwas
    Besseres. Wir wollen z.B.<abbr|> <math|x=-<frac| p|2>+5>, da dies die
    Nichtgleichwertigkeit gewährleistet. Natürlich ist auch jede andere Zahl
    als 5 (auÿer 0) möglich.

    <item>Wir untersuchen die Aussage, ob die Funktion <math|y=x<rsup|2>> an
    der Stelle <math|x=3> stetig ist und was ihr Grenzwert ist. Wir wissen ja
    aus der Analysis, dass sie stetig ist und dass der Grenzwert 9 ist, aber
    jetzt wollen wir untersuchen, was passiert, wenn wir sagen, dass dies
    nicht wahr ist.

    Dies wird offensichtlich eine falsche Aussage. Ihre formale Gestalt ist
    aber spannend. Früher haben wir schon gesehen, dass dies (in Pränexform)
    wie folgt aussieht:

    <\equation>
      \<exists\>\<varepsilon\> \ (\<forall\>\<delta\> \ (\<exists\>x
      \ (<with|color|red|\<varepsilon\> \<gtr\> 0 \<wedge\> (\<delta\>
      \<leq\> 0 \<vee\> \<delta\> - x + 3 \<gtr\> 0 \<wedge\> \<delta\> + x -
      3 \<gtr\> 0 \<wedge\> (\<varepsilon\> - x<rsup|2> + 9 \<leq\> 0 \<vee\>
      \<varepsilon\> + x<rsup|2> - 9 \<leq\> 0))>))).<label|no-limit>
    </equation>

    Wenn A und B jetzt spielen, A wählt <math|\<varepsilon\>>, B wählt
    <math|\<delta\>>, und dann wählt A <math|x>, kann man sagen, dass A
    gewinnt, wenn der lange logische Ausdruck (ohne Quantoren, in rot)
    erfüllt ist, und B gewinnt, wenn er nicht erfüllt ist.

    Wenn wir uns nun aber die Frage stellen, wie wir beweisen können, dass
    die Funktion <math|y=x<rsup|2>> an der Stelle <math|x=3> stetig ist und
    den Grenzwert 9 hat, dann sollten wir an die Form

    <\equation>
      \<forall\>\<varepsilon\> \ (\<exists\>\<delta\> (\<forall\>x
      \ (<with|color|blue|\<varepsilon\> \<leq\> 0 \<vee\> \<delta\> \<gtr\>
      0 \<wedge\> (\<delta\> - x + 3 \<leq\> 0 \<vee\> \<delta\> + x - 3
      \<leq\> 0 \<vee\> \<varepsilon\> - x<rsup|2> + 9 \<gtr\> 0 \<wedge\>
      \<varepsilon\> + x<rsup|2> - 9 \<gtr\> 0)>)))<label|limit>
    </equation>

    denken, wobei die Quantoren natürlich alle entgegengesetzt sind als in
    der Formel (<reference|no-limit>), und der lange logische blaue Ausdruck
    ist auch negierter Form. Wie wir wissen, ist dies eine wahre Aussage, und
    bei der Suche nach einer gewinnbringenden Strategie können wir nur
    denken, dass, wie auch immer A <math|\<varepsilon\>> wählt, B in der Lage
    sein wird, einen Wert <math|\<delta\>> anzugeben, der den langen
    (quantorlosen) logischen Ausdruck trotz A's bester Bemühungen als wahre
    Aussage ergibt.

    Wir werden versuchen, eine Strategie für B zu finden. Wenn Sie Profis in
    Analysis sind, wird dies einfacher sein -- aber es ist nicht ganz
    trivial! Die lange blaue logische Formel beginnt mit
    <math|\<varepsilon\>\<leq\>0>: Das bedeutet, wenn A gut gelaunt ist und
    eine negative Zahl wählt, dann gewinnt B sofort. Aber B muss sich auf das
    Schlimmste vorbereiten: dass A es ihm nicht leicht machen wird, zu
    gewinnen. Also wählt er ein positives <math|\<varepsilon\>>. (Im
    ursprünglichen Analysisproblem ist dies übrigens das Einzige, was Sinn
    macht.) B's Wahl von <math|\<delta\>\<gtr\>0> ist eine Voraussetzung,
    also ist dies alles, woran wir denken. Wir konzentrieren uns also auf die
    innerste Klammer, die aus drei Disjunktionen besteht: Die ersten beiden
    lassen sich wie folgt zusammenfassen: Wenn <math|x> nicht im Intervall
    <math|(3-\<delta\>,3+\<delta\>)> liegt, dann hat B bereits gewonnen. (Wir
    wissen aus der Analysis, dass <math|x> aus einem kleinen Intervall
    gewählt werden muss, das <math|3-\<delta\>> einschlieÿt, und dass die
    beiden Ränder dieses Intervalls <math|3-\<delta\>> und <math|3+\<delta\>>
    sind.) Wir nehmen also an, dass A <math|x> ohnehin aus diesem Intervall
    wählt, weil er den Sieg nicht verschenkt. Der letzte Teil der Disjunktion
    ist eine Konjunktion, die als <math|9-\<varepsilon\>\<less\>x<rsup|2>\<less\>9+\<varepsilon\>>
    oder <math|<around*|\||x<rsup|2>-9|\|>\<less\>\<varepsilon\>>
    umformuliert werden kann.

    Wir fassen die obigen Ausführungen zusammen. A wählt ein positives
    <math|\<varepsilon\>>, woraufhin B ebenfalls ein positives
    <math|\<delta\>> wählt, und das Ziel ist, dass, wenn A ein beliebiges
    <math|x> aus dem Intervall <math|(3-\<delta\>,3+\<delta\>)> wählt,
    <math|<around*|\||x<rsup|2>-9|\|>\<less\>\<varepsilon\>> in jedem Fall
    erfüllt ist. Die Frage ist, ob B ein solches Spiel spielen kann, dass
    seine Wahl (<math|\<delta\>>) dieses Ziel erreicht.

    Nehmen Sie sich genug Zeit, diese Aufgabe zu durchdenken! Um die
    Grundlagen der Analysis zu verstehen und zu lehren, ist es unerlässlich,
    dieses Spiel für zwei Spieler sehr gut zu verstehen. Eine interaktive
    Version des Spiels ist in vielen Versionen im Internet verfügbar, und wir
    analysieren sie in einer eigenen Ausgabe (siehe
    <slink|https://www.geogebra.org/m/jtbbgy9w>).

    <\big-figure>
      <image|limes1.eps|200pt|||>
    <|big-figure>
      <label|limes1>
    </big-figure>

    Nehmen wir zunächst an (Abbildung <reference|limes1>), dass A den Zug
    <math|\<varepsilon\>=1> wählt, woraufhin B in gutem Glauben
    <math|\<delta\>=0.4> wählt. Aber das ist keine so gute Idee, denn wenn A
    zum Beispiel <math|x=3.23> wählt (das kann er, denn er kann alles
    zwischen 2.6 und 3.4 wählen), dann wird der Wert von <math|x<rsup|2>>
    nicht nahe genug an 9 liegen (er wird ganz genau 10.4329 sein, was
    auÿerhalb von 1 Einheit liegt), und so verliert B.

    Also versucht B stattdessen ein kleineres <math|\<delta\>>, um zu sehen,
    ob er A unter Druck setzen kann. Wie in Abbildung <reference|limes2> zu
    sehen ist, hat er nun mit <math|\<delta\>=0.17> experimentiert, was eine
    bessere Idee ist, weil das untere rosa Rechteck verschwunden ist, was
    gerade gezeigt hat, dass weder dort noch im oberen rosa Rechteck der
    Punkt <math|<around*|(|x,x<rsup|2>|)>> eingefügt werden sollte, weil dann
    seine <math|y>-Koordinate zu weit von der Linie <math|y=9> entfernt ist.
    A kann aber auch ganz schlau sein und durch die Wahl von <math|x=3.17>
    gerade noch erreichen, dass <math|<around*|(|3.17,3.17<rsup|2>|)>=<around*|(|3.17,10.0489|)>>
    auÿerhalb des grünen Rechtecks liegt.

    <\big-figure>
      <image|limes2.eps|200pt|||>
    <|big-figure>
      <label|limes2>
    </big-figure>

    Durch eine weitere Verringerung von <math|\<delta\>> werden die
    Möglichkeiten von A noch weiter eingeschränkt, und beim dritten Versuch
    (Abbildung <reference|limes3>) verschwinden die rosafarbenen Rechtecke
    (einschlieÿlich des oberen) vollständig. A kämpft also vergeblich darum,
    ein <math|x> zu wählen, für das das entsprechende <math|y> zu weit von
    der Linie <math|y=9> entfernt ist. Das heiÿt, in dieser Runde hat B
    eindeutig gewonnen.

    <\big-figure>
      <image|limes3.eps|200pt|||>
    <|big-figure>
      <label|limes3>
    </big-figure>

    Das Spiel ist jedoch noch nicht ganz vorbei, denn A vermutet, dass sein
    erster Zug derjenige sein könnte, der ihn aus der Bahn wirft. Also denkt
    er daran, ein anderes <math|\<varepsilon\>> zu wählen, etwas Kleineres,
    z.B.<abbr|> <math|\<varepsilon\>=0.095>! B ist auch unentschlossen, er
    gibt auch ein kleineres <math|\<delta\>> an: 0.025, aber wie man sieht
    (Abbildung <reference|limes4b>), kann A ein <math|x> wählen, das ihn ins
    Rosa bringt. Hier hat er 2.9802 gewählt, was von der Linie <math|y=9> um
    0.11840796 abweicht, mehr als sein <math|\<varepsilon\>>-Wert zulassen
    würde.

    <\big-figure>
      <image|limes4b.eps|200pt|||>
    <|big-figure>
      <label|limes4b>
    </big-figure>

    Aber B gibt nicht auf, denn er vermutet, dass ein noch kleineres
    <math|\<delta\>> die rosa Rechtecke beseitigen könnte. Und genau das tut
    er: Er experimentiert so lange, bis er feststellt, dass die Wahl
    <math|\<delta\>=0.015> definitiv passend ist (Abbildung
    <reference|limes5b>). Und tatsächlich liegen sowohl der Randfall
    <math|<around*|(|3-0.015|)><rsup|2>=8.910225> als auch der Randfall
    <math|<around*|(|3+0.015|)><rsup|2>=9.09225> näher an 9 als der durch
    <math|\<varepsilon\>> bestimmte Wert von 0.095. B hat also einen guten
    <math|\<delta\>>-Wert für <math|\<varepsilon\>> gefunden (welches von A
    ausgedacht wurde).

    <\big-figure>
      <image|limes5b.eps|200pt|||>
    <|big-figure>
      <label|limes5b>
    </big-figure>

    Es ist sehr wichtig, hier zu betonen, dass wir uns erst in der Phase der
    Analyse des Spiels befinden, in der wir empirische Informationen sammeln.
    Wir halten diese Randfälle für relevant, weil die Parabelfunktion
    zwischen ihnen monoton ansteigt, d.h.<abbr|> wenn wir uns nur auf die
    Beobachtung der Randfälle konzentrieren, können wir die unendliche
    Vielfalt der Spielprozesse reduzieren<text-dots> vielleicht auf 2 oder 3.
    Erst wenn wir die Logik des Spiels und die Gedankengänge der Spieler in
    diesen speziellen Fällen verstehen, können wir eine plausible Antwort auf
    den allgemeinen Fall geben.

    Nachdem wir das Spiel mehrmals gespielt haben, stellen wir fest, dass der
    obere Teil der Parabel (der sich rechts von <math|(3,9)> befindet)
    schneller wächst als der untere Teil (der sich links von <math|(3,9)>
    befindet). Das bedeutet, dass, wenn A <math|\<varepsilon\>> festlegt, B
    in der Lage ist, das untere rosafarbene Rechteck zuerst zu entfernen,
    indem er <math|\<delta\>> verringert, aber das obere Rechteck wird noch
    eine Weile bestehen bleiben. Das heiÿt, wenn A es geschickt anstellt,
    wird er sich mehr auf das obere rosa Rechteck konzentrieren -- da das
    untere möglicherweise nicht mehr existiert, wenn B ein ausreichend
    kleines <math|\<delta\>> gegeben hat. Deshalb muss B -- der davon
    ausgeht, dass A klug genug ist -- dafür sorgen, dass das obere Rechteck
    vollständig entfernt wird. Und das kann er (von nun an mit Algebra),
    indem er den Schnittpunkt der Parabel <math|y=x<rsup|2>> mit der Geraden
    <math|y=9+\<varepsilon\>> berechnet, die die obere Begrenzung des grünen
    Rechtecks darstellt.

    Wenn wir nun den Schnittpunkt dieser beiden geometrischen Formen bestimmt
    haben (der natürlich an dem Punkt liegt, der durch
    <math|x=<sqrt|9+\<varepsilon\>>> und <math|y=9+\<varepsilon\>> gegeben
    ist), dann kann B <math|\<delta\>> mit seiner von 3 abweichenden
    <math|x>-Koordinate den von A definierten Punkt
    <math|<around*|(|x,x<rsup|2>|)>> in das grüne Rechteck zwingen. In diesem
    Fall ist die Extremposition von <math|x> <math|<sqrt|9+\<varepsilon\>>>,
    die entsprechende Koordinate von <math|y> ist <math|9+\<varepsilon\>>,
    und in dieser Extremposition liegt der von A bestimmte Punkt
    <math|<around*|(|x,x<rsup|2>|)>> genau in der oberen rechten Ecke des
    grünen Rechtecks. Die andere Extremposition sollte, wie oben beschrieben,
    \Retwas\P oberhalb der linken unteren Ecke des grünen Rechtecks liegen;
    zwischen den beiden Extrempositionen werden alle Punkte innerhalb des
    grünen Rechtecks landen.

    Wichtig ist, dass wir davon ausgehen, dass B kein <math|\<delta\>> wählt,
    das \Rzu groÿ\P ist, d.h.<abbr|> in keinem Fall gröÿer als 3. Andernfalls
    müssten wir uns mit dem Teil der Parabel befassen, der im Bereich
    <math|x\<less\>0> liegt, und dort gelten diese Monotoniebeziehungen
    nicht. Es stimmt aber auch, dass B nicht daran interessiert ist, einen zu
    groÿen <math|\<delta\>>-Wert zu wählen, sondern im Gegenteil: Er ist eher
    an \Rkleinen\P <math|\<delta\>>-Werten interessiert, um die Optionen von
    A einzuschränken. Hierauf wird später eingegangen, wenn wir eine genaue
    Strategie für B formulieren.

    Nehmen wir also an, dass A das Spiel beginnt und ein
    <math|\<varepsilon\>> wählt, das er für sympathisch hält. Dann ist B an
    der Reihe, oder besser gesagt, wir sind an der Reihe, ihm konkret zu
    sagen, was er tun soll. <math|\<delta\>=<sqrt|9+\<varepsilon\>>-3>
    scheint im Lichte der obigen Ausführungen eine gute Wahl zu sein. Was
    aber, wenn diese Zahl immer noch gröÿer als 3 ist? Das ist möglich,
    z.B.<abbr|> wenn <math|\<varepsilon\>\<gtr\>27> ist, passiert genau das.
    Was kann in einem solchen Fall getan werden? Kein Problem, B wählt
    einfach 3, denn dann bleiben die Monotoniebeziehungen erhalten, und
    unsere Beobachtungen über den grünen Ziegelstein bleiben gültig. Wir
    können diese Strategie als <math|\<delta\>\<assign\>min<around*|(|<sqrt|9+\<varepsilon\>>-3,3|)>>
    formulieren. Dann wird das von A gewählte <math|x>, egal wie er es
    versucht, in das grüne Rechteck fallen, was bedeutet, dass B gewinnt. Und
    für die Mitarbeiter in der Analysisabteilung (und ihre Freunde und
    Bekannten) bedeutet dies, dass die Funktion <math|y=x<rsup|2>> an der
    Stelle <math|x=3> tatsächlich stetig ist und gegen 9 geht.
  </enumerate>

  Es ist wichtig zu betonen, dass alle mathematischen Aussagen, die durch
  Quantoren gegeben werden, entweder wahr oder falsch sind. Es gibt keine
  dritte Möglichkeit. Da jede mathematische Aussage, die durch Quantoren
  gegeben ist, in ein äquivalentes Spiel mit zwei Spielern umformuliert
  werden kann, kommt man eindeutig zu dem Schluss, dass entweder der Anfänger
  eine Gewinnstrategie hat oder der zweite Spieler, es gibt keine dritte
  Möglichkeit. Wenn wir die Gewinnstrategie des Anfängers sehen wollen, dann
  müssen die alternierenden Quantoren in der Pränexform mit einem
  Existenzquantor beginnen. Wenn wir die Gewinnstrategie des zweiten Spielers
  sehen wollen, beginnen wir mit einem universellen Quantor in der gleichen
  Form.

  Man kann diese Verallgemeinerung auch anders formulieren. Gegeben ist eine
  alternierende Pränexform <math|F>.

  <\itemize>
    <item>Wenn <math|F> wahr ist

    <\itemize>
      <item>und mit \<exists\> beginnt (also steht \<exists\> auf Platz 1),
      dann geht es um ein Spiel, wo der erste Spieler eine Gewinnstrategie
      hat,

      <item>aber mit \<forall\> beginnt (also steht \<exists\> auf Platz 2),
      dann geht es um ein Spiel, wo der zweite Spieler eine Gewinnstrategie
      hat.
    </itemize>

    <item>Wenn <math|F > falsch ist

    <\itemize>
      <item>und mit \<exists\> beginnt, dann ist <math|\<neg\>F> wahr und die
      alternierende Pränexform von <math|\<neg\>F> beginnt mit \<forall\>
      (also steht \<exists\> auf Platz 2), also untersuchen wir ein Spiel, wo
      der zweite Spieler eine Gewinnstrategie hat,

      <item>aber mit \<forall\> beginnt, dann ist <math|\<neg\>F> wahr und
      die alternierende Pränexform von <math|\<neg\>F> beginnt mit \<exists\>
      (also steht \<exists\> auf Platz 1), also untersuchen wir ein Spiel, wo
      der erste Spieler eine Gewinnstrategie hat.
    </itemize>
  </itemize>

  Im letzten Beispiel, das im Detail ausgearbeitet wurde, gab es tatsächlich
  3 Quantoren in einem \<forall\>--\<exists\>--\<forall\>-Schema. Aus der
  Sicht des Schemas hat der 3.<strong|> Quantor keine relevante Rolle, wir
  würden im \<forall\>--\<exists\>-Schema die gleiche Argumentation erhalten.
  Es ist wie beim Lösen eines mehrzügigen Schachproblems: Ein Zug besteht
  eigentlich aus zwei Halbzügen. Wenn wir also lesen \RWeiÿ beginnt und setzt
  in 2 Zügen matt\P, sind es drei Halbzüge: der erste ist der erste Zug von
  Weiÿ, der zweite ist die Antwort von Schwarz auf Zug 1 und der dritte ist
  der zweite Zug von Weiÿ (das eigentliche Matt).

  Bei Schachrätseln ist es jedoch in der Regel Weiÿ, der beginnt und matt
  setzt. Es ist also ein Spiel, bei dem der Anfänger eine Gewinnstrategie
  hat. Ein \RWeiÿ beginnt und setzt in 2 Zügen schachmatt\P ist in der Tat
  ein \<exists\>--\<forall\>--\<exists\>-Schema, oder, wenn man das
  Schachspiel so spielt, dass der schwarze König nach dem Schachmatt noch
  einen letzten Zug machen kann (aber Weiÿ würde dann trotzdem schlagen und
  somit schachmatt setzen), dann sprechen wir von einem
  \<exists\>--\<forall\>--\<exists\>--\<forall\>-Schema. Und wenn der
  schwarze König im Matt tatsächlich vom Weiÿ gefangen wird, haben wir ein
  \<exists\>--\<forall\>--\<exists\>--\<forall\>--\<exists\>-Schema. Im
  nächsten Abschnitt werden wir dies anhand einiger Beispiele
  veranschaulichen.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Zeigen Sie, dass die Funktion <math|y=x<rsup|2>> keine obere
    Schranke besitzt. Geben Sie dafür ein zweipersönliches Spiel an, und
    suchen Sie nach einer Gewinnstrategie für den einen Spieler.

    <item>Beweisen Sie mit Hilfe der Methode aus diesem Kapitel, dass die
    Funktion <math|y=x<rsup|2>-1> an der Stelle <math|x=2> stetig ist und ihr
    Grenzwert 3 ist. Also geben Sie dafür ein zweipersönliches Spiel an, und
    suchen Sie nach einer Gewinnstrategie für den einen Spieler.

    <item>Was bedeutet formal, dass der obere Teil der Parabel
    <math|y=x<rsup|2>> (<math|x\<gtr\>0>) schneller steigt als der untere?
    Hinweis: Betrachten Sie drei <math|x>-Werte
    <math|0\<less\>x<rsub|1>\<less\>x<rsub|2>\<less\>x<rsub|3>>, und
    untersuchen Sie die zugehörigen Differenzenquotienten in den
    Zwischenintervallen.
  </enumerate>

  <section|Schach und Matt!>

  Abbildung <reference|chess1> zeigt eine Position, die Wei<math|ÿ> in zwei
  Zügen gewinnen kann.<nocite|gdm>

  <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
  brown>|<cwith|7|7|3|3|cell-background|pastel
  brown>|<cwith|6|6|2|2|cell-background|pastel
  brown>|<cwith|8|8|4|4|cell-background|pastel
  brown>|<cwith|6|6|4|4|cell-background|pastel
  brown>|<cwith|4|4|4|4|cell-background|pastel
  brown>|<cwith|2|2|4|4|cell-background|pastel
  brown>|<cwith|4|4|6|6|cell-background|pastel
  brown>|<cwith|2|2|6|6|cell-background|pastel
  brown>|<cwith|4|4|8|8|cell-background|pastel
  brown>|<cwith|2|2|8|8|cell-background|pastel
  brown>|<cwith|5|5|5|5|cell-background|pastel
  brown>|<cwith|3|3|5|5|cell-background|pastel
  brown>|<cwith|5|5|7|7|cell-background|pastel
  brown>|<cwith|3|3|7|7|cell-background|pastel
  brown>|<cwith|5|5|9|9|cell-background|pastel
  brown>|<cwith|3|3|9|9|cell-background|pastel
  brown>|<cwith|8|8|8|8|cell-background|pastel
  brown>|<cwith|6|6|8|8|cell-background|pastel
  brown>|<cwith|8|8|6|6|cell-background|pastel
  brown>|<cwith|6|6|6|6|cell-background|pastel
  brown>|<cwith|5|5|3|3|cell-background|pastel
  brown>|<cwith|3|3|3|3|cell-background|pastel
  brown>|<cwith|4|4|2|2|cell-background|pastel
  brown>|<cwith|2|2|2|2|cell-background|pastel
  brown>|<cwith|1|1|5|5|cell-background|pastel
  brown>|<cwith|1|1|7|7|cell-background|pastel
  brown>|<cwith|1|1|9|9|cell-background|pastel
  brown>|<cwith|1|1|3|3|cell-background|pastel
  brown>|<cwith|7|7|5|5|cell-background|pastel
  brown>|<cwith|7|7|9|9|cell-background|pastel
  brown>|<cwith|7|7|7|7|cell-background|pastel
  brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|7>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265A\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|6>|<cell|\<#2656\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|1>|<cell|>|<cell|\<#2656\>>|<cell|>|<cell|>|<cell|\<#2654\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
    <label|chess1>
  </big-figure>

  Der Gewinnzug ist 1.<abbr|> \<#2656\>b7+. Von hier aus hat der schwarze
  König drei Möglichkeiten: \<#265A\>d8, \<#265A\>e8 oder \<#265A\>f8. Keine
  davon ist besonders rosig. Denn Weiÿ setzt mit seinem Zug 2.<abbr|>
  \<#2656\>a8# matt.

  Der schwarze König kann, obwohl dies im Schach nicht üblich ist, versuchen,
  aus dem Matt zu kommen und zu vermeiden, dass er gefangen wird. Das wird
  ihm nicht gelingen: wenn er z.B.<abbr|> \<#265A\>e7 versucht (d.h.<abbr|>
  zu seinem Ausgangspunkt zurückgeht), wird er von Weiÿ mit 3.<abbr|
  >\<#2656\>xe7 geschlagen.

  Wenn wir die Partie nur bis zum Zug 2.<abbr|> \<#2656\>a8# spielen, sehen
  wir hier ein \<exists\>--\<forall\>--\<exists\>-Muster: Weiÿ hat einen
  Gewinnzug, auf den der schwarze König eine der drei Möglichkeiten zieht,
  und Weiÿ hat eine Gewinnantwort: Schachmatt.

  Wenn der schwarze König dann -- hartnäckig -- einen weiteren Zug macht und
  versucht, aus dem Matt zu kommen, wird das Muster
  \<exists\>--\<forall\>--\<exists\>--\<forall\>: der schwarze König zieht
  etwas, irgendetwas, aber aus dem Matt heraus! Wenn Weiÿ auch darauf
  reagiert (indem er den schwaren König schlägt), dann ergibt sich das
  \<exists\>--\<forall\>--\<exists\>--\<forall\>--\<exists\>-Schema.

  Es stimmt, dass dies beim Schach nicht wirklich der Fall ist, aber einige
  Schachprogramme simulieren tatsächlich diese letzten beiden virtuellen Züge
  (auch wenn sie sie dem Benutzer nicht zeigen, siehe z.B.<abbr|
  ><cite|checkmate>). Mit anderen Worten: \RSchachmatt in 2 Zügen\P ist
  faktisch das Äquivalent zu \Rden König in 3 Zügen schlagen\P -- auch wenn
  der König nach den Schachregeln nicht tatsächlich geschlagen wird.

  Aber wir können uns das Muster \<exists\>--\<forall\>--\<exists\>--\<forall\>--\<exists\>
  als ein Problem vom Typ \RWeiÿ beginnt und setzt Schachmatt in 3 Zügen\P
  vorstellen. Hier ist ein solches Rätsel von
  <slink|www.chesspuzzles.com/mate-in-three>, Nummer #23, siehe Abbildung
  <reference|chess2>.

  <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
  brown>|<cwith|7|7|3|3|cell-background|pastel
  brown>|<cwith|6|6|2|2|cell-background|pastel
  brown>|<cwith|8|8|4|4|cell-background|pastel
  brown>|<cwith|6|6|4|4|cell-background|pastel
  brown>|<cwith|4|4|4|4|cell-background|pastel
  brown>|<cwith|2|2|4|4|cell-background|pastel
  brown>|<cwith|4|4|6|6|cell-background|pastel
  brown>|<cwith|2|2|6|6|cell-background|pastel
  brown>|<cwith|4|4|8|8|cell-background|pastel
  brown>|<cwith|2|2|8|8|cell-background|pastel
  brown>|<cwith|5|5|5|5|cell-background|pastel
  brown>|<cwith|3|3|5|5|cell-background|pastel
  brown>|<cwith|5|5|7|7|cell-background|pastel
  brown>|<cwith|3|3|7|7|cell-background|pastel
  brown>|<cwith|5|5|9|9|cell-background|pastel
  brown>|<cwith|3|3|9|9|cell-background|pastel
  brown>|<cwith|8|8|8|8|cell-background|pastel
  brown>|<cwith|6|6|8|8|cell-background|pastel
  brown>|<cwith|8|8|6|6|cell-background|pastel
  brown>|<cwith|6|6|6|6|cell-background|pastel
  brown>|<cwith|5|5|3|3|cell-background|pastel
  brown>|<cwith|3|3|3|3|cell-background|pastel
  brown>|<cwith|4|4|2|2|cell-background|pastel
  brown>|<cwith|2|2|2|2|cell-background|pastel
  brown>|<cwith|1|1|5|5|cell-background|pastel
  brown>|<cwith|1|1|7|7|cell-background|pastel
  brown>|<cwith|1|1|9|9|cell-background|pastel
  brown>|<cwith|1|1|3|3|cell-background|pastel
  brown>|<cwith|7|7|5|5|cell-background|pastel
  brown>|<cwith|7|7|9|9|cell-background|pastel
  brown>|<cwith|7|7|7|7|cell-background|pastel
  brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|\<#265C\>>|<cell|>|<cell|\<#265D\>>|<cell|>|<cell|>|<cell|>|<cell|\<#265A\>>|<cell|\<#265C\>>>|<row|<cell|7>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|>|<cell|\<#265B\>>|<cell|\<#265D\>>|<cell|\<#265F\>>>|<row|<cell|6>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265F\>>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|\<#2655\>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|\<#2659\>>|<cell|\<#2659\>>|<cell|\<#2659\>>|<cell|>|<cell|>|<cell|>|<cell|\<#2659\>>|<cell|\<#2659\>>>|<row|<cell|1>|<cell|\<#2656\>>|<cell|\<#2658\>>|<cell|\<#2657\>>|<cell|>|<cell|\<#2656\>>|<cell|>|<cell|\<#2654\>>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
    <label|chess2>
  </big-figure>

  Die Frage ist nun, ob Weiÿ einen erfolgreichen Start hat. Diejenigen, die
  gerne Schachrätsel lösen, können diesen Abschnitt überspringen, denn wir
  werden Ihnen jetzt die Lösung verraten. Die Antwort ist also, dass es einen
  gewinnbringenden Anfangszug gibt, nämlich 1.<abbr| >\<#2656\>e8+. Da er im
  Schach steht, hat Schwarz eine von zwei Möglichkeiten: Er kann entweder den
  Turm schlagen (er könnte dies mit der Dame tun, aber er kann sie nicht
  bewegen, weil die weiÿe Dame seinen König angreifen würde) oder er kann vor
  den Turm ziehen. Der Zug ist auch nur mit dem Läufer möglich, so dass hier
  die Antwort von Schwarz erzwungen und offensichtlich ist: \<#265D\>f8. Als
  zweiter Zug braucht Weiÿ wieder etwas Kreativität. Aber er hat auch
  Freiheiten: Er kann entscheiden, welchen Zug er machen will. Jetzt zieht er
  2.<abbr|> \<#2657\>h6. Die derzeitige Situation ist in Abbildung
  <reference|chess2b> dargestellt. Schwarz ist am Zug. Er muss etwas tun,
  denn im nächsten Zug wird Weiÿ mit 3.<abbr|> \<#2656\>xf8# schachmatt
  setzen. Aber Tatsache ist, dass Schwarz, egal was er zieht, nicht
  ausweichen kann: seine Dame kann nicht gezogen werden (er könnte höchstens
  die weiÿe Dame damit schlagen, aber das hilft jetzt nicht), der Läufer auf
  f8 kann auch nicht gezogen werden, das Bewegen der Bauern hat keine
  Auswirkung auf die Situation, und der König kann nicht nach g7 ziehen, weil
  dieses Feld vom weiÿen Läufer angegriffen wird.

  <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
  brown>|<cwith|7|7|3|3|cell-background|pastel
  brown>|<cwith|6|6|2|2|cell-background|pastel
  brown>|<cwith|8|8|4|4|cell-background|pastel
  brown>|<cwith|6|6|4|4|cell-background|pastel
  brown>|<cwith|4|4|4|4|cell-background|pastel
  brown>|<cwith|2|2|4|4|cell-background|pastel
  brown>|<cwith|4|4|6|6|cell-background|pastel
  brown>|<cwith|2|2|6|6|cell-background|pastel
  brown>|<cwith|4|4|8|8|cell-background|pastel
  brown>|<cwith|2|2|8|8|cell-background|pastel
  brown>|<cwith|5|5|5|5|cell-background|pastel
  brown>|<cwith|3|3|5|5|cell-background|pastel
  brown>|<cwith|5|5|7|7|cell-background|pastel
  brown>|<cwith|3|3|7|7|cell-background|pastel
  brown>|<cwith|5|5|9|9|cell-background|pastel
  brown>|<cwith|3|3|9|9|cell-background|pastel
  brown>|<cwith|8|8|8|8|cell-background|pastel
  brown>|<cwith|6|6|8|8|cell-background|pastel
  brown>|<cwith|8|8|6|6|cell-background|pastel
  brown>|<cwith|6|6|6|6|cell-background|pastel
  brown>|<cwith|5|5|3|3|cell-background|pastel
  brown>|<cwith|3|3|3|3|cell-background|pastel
  brown>|<cwith|4|4|2|2|cell-background|pastel
  brown>|<cwith|2|2|2|2|cell-background|pastel
  brown>|<cwith|1|1|5|5|cell-background|pastel
  brown>|<cwith|1|1|7|7|cell-background|pastel
  brown>|<cwith|1|1|9|9|cell-background|pastel
  brown>|<cwith|1|1|3|3|cell-background|pastel
  brown>|<cwith|7|7|5|5|cell-background|pastel
  brown>|<cwith|7|7|9|9|cell-background|pastel
  brown>|<cwith|7|7|7|7|cell-background|pastel
  brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|4|4|cell-halign|c>|<cwith|9|9|5|5|cell-halign|c>|<cwith|9|9|6|6|cell-halign|c>|<cwith|9|9|7|7|cell-halign|c>|<cwith|9|9|8|8|cell-halign|c>|<cwith|9|9|9|9|cell-halign|c>|<table|<row|<cell|8>|<cell|\<#265C\>>|<cell|>|<cell|\<#265D\>>|<cell|>|<cell|\<#2656\>>|<cell|\<#265D\>>|<cell|\<#265A\>>|<cell|\<#265C\>>>|<row|<cell|7>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|>|<cell|\<#265B\>>|<cell|>|<cell|\<#265F\>>>|<row|<cell|6>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265F\>>|<cell|\<#2657\>>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|\<#2655\>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|\<#2659\>>|<cell|\<#2659\>>|<cell|\<#2659\>>|<cell|>|<cell|>|<cell|>|<cell|\<#2659\>>|<cell|\<#2659\>>>|<row|<cell|1>|<cell|\<#2656\>>|<cell|\<#2658\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2654\>>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
    <label|chess2b>
  </big-figure>

  Wir haben also gezeigt, dass Weiÿ in 3 Zügen mattsetzen kann, weil wir
  gesehen haben, dass es einen Zug 1 gibt, für den Schwarz einen beliebigen
  (regulären) Zug macht, kann Weiÿ einen Zug 2 ziehen, für den Schwarz einen
  beliebigen Zug macht, wird Weiÿ ihn in Zug 3 mattsetzen können.

  <subsection|Alternative: Das Bachet-Spiel>

  <index|Bachet-Spiel>Diejenigen, die sich mit Schach nicht so gut auskennen,
  werden sich jetzt vielleicht unwohl fühlen, denn es gibt nichts, womit man
  das oben Gesagte in Verbindung bringen könnte. Macht nichts, wir haben
  einen Plan B, und dies ist ein einfaches Spiel für zwei Spieler. Es liegen
  10 Kieselsteine auf einem Haufen, A und B nehmen abwechselnd 1, 2 oder 3
  Kieselsteine. A beginnt. Wer den letzten Kieselstein nimmt, gewinnt. Wer
  hat eine Gewinnstrategie?

  Es ist schnell klar, dass A zunächst 2 Kieselsteine nehmen sollte. Damit
  bleiben insgesamt 8 Kieselsteine übrig. Wenn B nun <math|x> Kieselsteine
  nimmt, dann muss A <math|4-x> Kieselsteine nehmen, damit 4 Kieselsteine
  übrig bleiben. Und schlieÿlich, wenn B <math|y> Kieselsteine nimmt, nimmt A
  wieder <math|4-y> Kieselsteine, um den letzten Kiesel zu haben.

  Sie sehen, dass es sich auch hier um ein
  \<exists\>--\<forall\>--\<exists\>--\<forall\>--\<exists\>-Schema handelt.
  A hat einen guten Anfangszug (die \R2\P), auf den, egal was B macht
  (<math|x>), A eine gute Antwort hat (<math|4-x>), auf die, egal was B macht
  (<math|y>), A schlieÿlich gewinnt (mit <math|4-y>).

  <subsection|Anwendungen>

  Wir sind nun an dem Punkt angelangt, unsere Methode erneut in der Analysis
  anzuwenden. Schauen wir uns einige konkrete Anwendungen an!

  <\enumerate>
    <item>Wir möchten beweisen, dass die Funktion <math|y=x<rsup|2>> an der
    Stelle <math|x=3> stetig ist, wir gehen jedoch nicht davon aus, dass ihr
    Grenzwert 9 ist. Dazu werden wir die Defintion

    <\equation*>
      \<forall\>\<varepsilon\>(\<varepsilon\>\<gtr\>0 \<rightarrow\>
      (\<exists\>\<delta\> \ (\<delta\>\<gtr\>0 \<wedge\>
      (\<forall\>x((\|x\<minus\>3\|\<less\>\<delta\>)\<rightarrow\>(\|x<rsup|2>\<minus\>9\|\<less\>\<varepsilon\>))))))
    </equation*>

    ein bisschen wie folgt weiterentwickeln:

    <\equation*>
      <with|color|red|\<exists\>a> <around*|(|\<forall\>\<varepsilon\>(\<varepsilon\>\<gtr\>0
      \<rightarrow\> (\<exists\>\<delta\> \ (\<delta\>\<gtr\>0 \<wedge\>
      (\<forall\>x((\|x\<minus\>3\|\<less\>\<delta\>)\<rightarrow\>(\|x<rsup|2>\<minus\>a\|\<less\>\<varepsilon\>))))))|)>.
    </equation*>

    Dies könnte in Pränexform umgewandelt werden, aber wir überspringen
    diesen Schritt vorerst. Wir betonen nur, dass das Schema der auftretenden
    Quantoren jetzt \<exists\>--\<forall\>--\<exists\>--\<forall\> ist, so
    dass wir hier ein Spiel mit zwei Spielern spielen, bei dem A beginnt und
    in 2 Zügen gewinnt. Und tatsächlich wählt A <math|a=9>, woraufhin B ein
    <math|\<varepsilon\>\<gtr\>0> wählt. A kann sicher den Zug
    <math|\<delta\>\<assign\>min(sqrt(9+\<varepsilon\>)-3,3)> wählen,
    woraufhin die Antwort von B, so klug sie auch sein mag, nicht verhindern
    wird, dass die Bedingung <math|<around*|\||x<rsup|2>-a|\|>\<less\>\<varepsilon\>>
    erfüllt ist.

    <item>Wir wollen zeigen, dass die Funktion <math|y=x<rsup|2>> an jeder
    reellen Stelle <math|x<rsub|0>> stetig ist, wobei wir wiederum keine
    Überlegungen über den Grenzwert anstellen. Die natürliche (nicht-pränex)
    Form ist dann

    <\equation*>
      <with|color|red|\<forall\>x<rsub|0>> <around*|(|\<exists\>a
      <around*|(|\<forall\>\<varepsilon\>(\<varepsilon\>\<gtr\>0
      \<rightarrow\> (\<exists\>\<delta\> \ (\<delta\>\<gtr\>0 \<wedge\>
      (\<forall\>x((\|x\<minus\>x<rsub|0>\|\<less\>\<delta\>)\<rightarrow\>(\|x<rsup|2>\<minus\>a\|\<less\>\<varepsilon\>))))))|)>|)>.
    </equation*>

    Das Quantorschema lautet \<forall\>--\<exists\>--\<forall\>--\<exists\>--\<forall\>.
    Auch hier können wir ein Spiel mit zwei Spielern machen, bei dem A keine
    Gewinnstrategie hat, weil B immer einen Ausweg findet. In diesem Spiel
    gewinnt B also immer, wenn er clever ist. Wie ist das möglich? Die
    Antwort ist ein beliebiges reelles <math|x<rsub|0>>. B wählt dann
    <math|a\<assign\>x<rsub|0><rsup|2>> (da er aus der Analysis weiÿ, dass
    dies der Grenzwert an der Stelle <math|x<rsub|0>> sein wird). Nun wählt A
    ein beliebiges positives <math|\<varepsilon\>>. Aus dem Vorangegangenen
    können wir vermuten, dass B <math|\<delta\>\<assign\>min<around*|(|<sqrt|x<rsub|0><rsup|2>+\<varepsilon\>>-x<rsub|0>,x<rsub|0>|)>>
    wählen muss, aber wir sollten vorsichtig sein, weil unsere frühere
    Argumentation vielleicht nur für positive <math|x<rsub|0>> funktionieren
    kann. Und in der Tat, wenn z.B.<abbr|> <math|x<rsub|0>=-1> ist, dann ist
    der Wert von <math|\<delta\>> <math|-1>, und das ist natürlich nicht gut,
    denn nur positive <math|\<delta\>>-Werte sind sinnvoll. In jedem Fall
    funktioniert die Strategie für positive <math|x<rsub|0>> ohne Bedenken,
    denn wie auch immer A schlieÿlich ein <math|x> wählt, er kann nicht
    verhindern, dass die Bedingung <math|<around*|\||x<rsup|2>-a|\|>\<less\>\<varepsilon\>>
    erfüllt ist.
  </enumerate>

  <subsection|Aufgaben>

  <\enumerate>
    <item>Vervollständigen Sie die Strategie aus der letzten Aufgabe, indem
    wir auch den Fall betrachten, dass A -- böswillig -- ein negatives
    <math|x<rsub|0>> (oder 0) angibt.

    <item>Überprüfen Sie mit GeoGebra Discovery oder Mathematica, ob die
    obigen Formeln wahre Ergebnisse liefern -- d.h.<abbr|> verwenden Sie
    reelle Quantorenelimination.

    <item>Bei der Definition des Grenzwerts einer Funktion in der Analysis
    wird in der Regel davon ausgegangen, dass sich das gewählte endgültige
    <math|x> von dem vordefinierten <math|x<rsub|0>> unterscheidet. Dann
    entfällt die Überprüfung der Stetigkeit. Wie können wir die Bedingung
    <math|x\<neq\>x<rsub|0>> in unsere Formeln angeben? Zeigen Sie ein
    konkretes Beispiel mit GeoGebra Discovery oder Mathematica. Ändert sich
    die Antwort, wenn für die neue Formel eine reelle Quantorenelimination
    verlangt wird? Warum \U oder warum nicht?

    <item>In der nächsten Stellung (Abbildung <reference|chess3>) wird Weiÿ
    beginnen und in einem Zug matt setzen. Nennen Sie das Quantorschema des
    Spiels. Welcher ist der Gewinnzug für Weiÿ? (Ist dieser Zug eindeutig,
    oder gibt es noch mehr Möglichkeiten?) Zeichnen Sie ein Baumdiagramm, das
    den hartnäckigen Versuch des Königs nach dem Matt zeigt, und stellen Sie
    dar, dass Weiÿ den König in jedem Fall \Rschlagen\P kann.

    <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
    brown>|<cwith|7|7|3|3|cell-background|pastel
    brown>|<cwith|6|6|2|2|cell-background|pastel
    brown>|<cwith|8|8|4|4|cell-background|pastel
    brown>|<cwith|6|6|4|4|cell-background|pastel
    brown>|<cwith|4|4|4|4|cell-background|pastel
    brown>|<cwith|2|2|4|4|cell-background|pastel
    brown>|<cwith|4|4|6|6|cell-background|pastel
    brown>|<cwith|2|2|6|6|cell-background|pastel
    brown>|<cwith|4|4|8|8|cell-background|pastel
    brown>|<cwith|2|2|8|8|cell-background|pastel
    brown>|<cwith|5|5|5|5|cell-background|pastel
    brown>|<cwith|3|3|5|5|cell-background|pastel
    brown>|<cwith|5|5|7|7|cell-background|pastel
    brown>|<cwith|3|3|7|7|cell-background|pastel
    brown>|<cwith|5|5|9|9|cell-background|pastel
    brown>|<cwith|3|3|9|9|cell-background|pastel
    brown>|<cwith|8|8|8|8|cell-background|pastel
    brown>|<cwith|6|6|8|8|cell-background|pastel
    brown>|<cwith|8|8|6|6|cell-background|pastel
    brown>|<cwith|6|6|6|6|cell-background|pastel
    brown>|<cwith|5|5|3|3|cell-background|pastel
    brown>|<cwith|3|3|3|3|cell-background|pastel
    brown>|<cwith|4|4|2|2|cell-background|pastel
    brown>|<cwith|2|2|2|2|cell-background|pastel
    brown>|<cwith|1|1|5|5|cell-background|pastel
    brown>|<cwith|1|1|7|7|cell-background|pastel
    brown>|<cwith|1|1|9|9|cell-background|pastel
    brown>|<cwith|1|1|3|3|cell-background|pastel
    brown>|<cwith|7|7|5|5|cell-background|pastel
    brown>|<cwith|7|7|9|9|cell-background|pastel
    brown>|<cwith|7|7|7|7|cell-background|pastel
    brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265A\>>>|<row|<cell|7>|<cell|>|<cell|\<#2656\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|6>|<cell|\<#2656\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|1>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2654\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
      <label|chess3>
    </big-figure>

    <item>In der nächsten Stellung (Abbildung <reference|chess4>) kann Weiÿ
    sofort in einem Zug gewinnen. Wie genau?

    <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
    brown>|<cwith|7|7|3|3|cell-background|pastel
    brown>|<cwith|6|6|2|2|cell-background|pastel
    brown>|<cwith|8|8|4|4|cell-background|pastel
    brown>|<cwith|6|6|4|4|cell-background|pastel
    brown>|<cwith|4|4|4|4|cell-background|pastel
    brown>|<cwith|2|2|4|4|cell-background|pastel
    brown>|<cwith|4|4|6|6|cell-background|pastel
    brown>|<cwith|2|2|6|6|cell-background|pastel
    brown>|<cwith|4|4|8|8|cell-background|pastel
    brown>|<cwith|2|2|8|8|cell-background|pastel
    brown>|<cwith|5|5|5|5|cell-background|pastel
    brown>|<cwith|3|3|5|5|cell-background|pastel
    brown>|<cwith|5|5|7|7|cell-background|pastel
    brown>|<cwith|3|3|7|7|cell-background|pastel
    brown>|<cwith|5|5|9|9|cell-background|pastel
    brown>|<cwith|3|3|9|9|cell-background|pastel
    brown>|<cwith|8|8|8|8|cell-background|pastel
    brown>|<cwith|6|6|8|8|cell-background|pastel
    brown>|<cwith|8|8|6|6|cell-background|pastel
    brown>|<cwith|6|6|6|6|cell-background|pastel
    brown>|<cwith|5|5|3|3|cell-background|pastel
    brown>|<cwith|3|3|3|3|cell-background|pastel
    brown>|<cwith|4|4|2|2|cell-background|pastel
    brown>|<cwith|2|2|2|2|cell-background|pastel
    brown>|<cwith|1|1|5|5|cell-background|pastel
    brown>|<cwith|1|1|7|7|cell-background|pastel
    brown>|<cwith|1|1|9|9|cell-background|pastel
    brown>|<cwith|1|1|3|3|cell-background|pastel
    brown>|<cwith|7|7|5|5|cell-background|pastel
    brown>|<cwith|7|7|9|9|cell-background|pastel
    brown>|<cwith|7|7|7|7|cell-background|pastel
    brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265A\>>>|<row|<cell|7>|<cell|\<#265E\>>|<cell|\<#265F\>>|<cell|>|<cell|>|<cell|>|<cell|\<#265F\>>|<cell|\<#265B\>>|<cell|\<#265F\>>>|<row|<cell|6>|<cell|\<#265F\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265F\>>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2658\>>|<cell|>>|<row|<cell|4>|<cell|>|<cell|\<#2659\>>|<cell|>|<cell|\<#2656\>>|<cell|\<#2657\>>|<cell|\<#265E\>>|<cell|>|<cell|>>|<row|<cell|3>|<cell|\<#2659\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2655\>>|<cell|\<#2659\>>|<cell|>>|<row|<cell|2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2659\>>>|<row|<cell|1>|<cell|\<#2657\>>|<cell|>|<cell|\<#2656\>>|<cell|>|<cell|\<#2654\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
      <label|chess4>
    </big-figure>

    <item>In der nächsten Stellung (Abbildung <reference|chess5>) kann Weiÿ
    in zwei Zügen gewinnen. Wie genau?

    <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
    brown>|<cwith|7|7|3|3|cell-background|pastel
    brown>|<cwith|6|6|2|2|cell-background|pastel
    brown>|<cwith|8|8|4|4|cell-background|pastel
    brown>|<cwith|6|6|4|4|cell-background|pastel
    brown>|<cwith|4|4|4|4|cell-background|pastel
    brown>|<cwith|2|2|4|4|cell-background|pastel
    brown>|<cwith|4|4|6|6|cell-background|pastel
    brown>|<cwith|2|2|6|6|cell-background|pastel
    brown>|<cwith|4|4|8|8|cell-background|pastel
    brown>|<cwith|2|2|8|8|cell-background|pastel
    brown>|<cwith|5|5|5|5|cell-background|pastel
    brown>|<cwith|3|3|5|5|cell-background|pastel
    brown>|<cwith|5|5|7|7|cell-background|pastel
    brown>|<cwith|3|3|7|7|cell-background|pastel
    brown>|<cwith|5|5|9|9|cell-background|pastel
    brown>|<cwith|3|3|9|9|cell-background|pastel
    brown>|<cwith|8|8|8|8|cell-background|pastel
    brown>|<cwith|6|6|8|8|cell-background|pastel
    brown>|<cwith|8|8|6|6|cell-background|pastel
    brown>|<cwith|6|6|6|6|cell-background|pastel
    brown>|<cwith|5|5|3|3|cell-background|pastel
    brown>|<cwith|3|3|3|3|cell-background|pastel
    brown>|<cwith|4|4|2|2|cell-background|pastel
    brown>|<cwith|2|2|2|2|cell-background|pastel
    brown>|<cwith|1|1|5|5|cell-background|pastel
    brown>|<cwith|1|1|7|7|cell-background|pastel
    brown>|<cwith|1|1|9|9|cell-background|pastel
    brown>|<cwith|1|1|3|3|cell-background|pastel
    brown>|<cwith|7|7|5|5|cell-background|pastel
    brown>|<cwith|7|7|9|9|cell-background|pastel
    brown>|<cwith|7|7|7|7|cell-background|pastel
    brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|\<#265A\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265C\>>|<cell|>>|<row|<cell|7>|<cell|\<#265F\>>|<cell|\<#265F\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265D\>>|<cell|>>|<row|<cell|6>|<cell|\<#2658\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2655\>>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|\<#2659\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|\<#2659\>>|<cell|>|<cell|\<#2659\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2657\>>>|<row|<cell|1>|<cell|>|<cell|\<#2654\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
      <label|chess5>
    </big-figure>

    <item>In der nächsten Stellung (Abbildung <reference|chess6>) kann Weiÿ
    in 3 Zügen gewinnen. Wie genau?

    <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
    brown>|<cwith|7|7|3|3|cell-background|pastel
    brown>|<cwith|6|6|2|2|cell-background|pastel
    brown>|<cwith|8|8|4|4|cell-background|pastel
    brown>|<cwith|6|6|4|4|cell-background|pastel
    brown>|<cwith|4|4|4|4|cell-background|pastel
    brown>|<cwith|2|2|4|4|cell-background|pastel
    brown>|<cwith|4|4|6|6|cell-background|pastel
    brown>|<cwith|2|2|6|6|cell-background|pastel
    brown>|<cwith|4|4|8|8|cell-background|pastel
    brown>|<cwith|2|2|8|8|cell-background|pastel
    brown>|<cwith|5|5|5|5|cell-background|pastel
    brown>|<cwith|3|3|5|5|cell-background|pastel
    brown>|<cwith|5|5|7|7|cell-background|pastel
    brown>|<cwith|3|3|7|7|cell-background|pastel
    brown>|<cwith|5|5|9|9|cell-background|pastel
    brown>|<cwith|3|3|9|9|cell-background|pastel
    brown>|<cwith|8|8|8|8|cell-background|pastel
    brown>|<cwith|6|6|8|8|cell-background|pastel
    brown>|<cwith|8|8|6|6|cell-background|pastel
    brown>|<cwith|6|6|6|6|cell-background|pastel
    brown>|<cwith|5|5|3|3|cell-background|pastel
    brown>|<cwith|3|3|3|3|cell-background|pastel
    brown>|<cwith|4|4|2|2|cell-background|pastel
    brown>|<cwith|2|2|2|2|cell-background|pastel
    brown>|<cwith|1|1|5|5|cell-background|pastel
    brown>|<cwith|1|1|7|7|cell-background|pastel
    brown>|<cwith|1|1|9|9|cell-background|pastel
    brown>|<cwith|1|1|3|3|cell-background|pastel
    brown>|<cwith|7|7|5|5|cell-background|pastel
    brown>|<cwith|7|7|9|9|cell-background|pastel
    brown>|<cwith|7|7|7|7|cell-background|pastel
    brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265A\>>>|<row|<cell|7>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|6>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2658\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|\<#2658\>>|<cell|>|<cell|>|<cell|\<#2658\>>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|1>|<cell|\<#2654\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
      <label|chess6>
    </big-figure>

    <item>In der nächsten Stellung (Abbildung <reference|chess7>) kann Weiÿ
    in 4 Zügen gewinnen. Wie genau?

    <\big-figure|<tabular|<tformat|<cwith|8|8|2|2|cell-background|pastel
    brown>|<cwith|7|7|3|3|cell-background|pastel
    brown>|<cwith|6|6|2|2|cell-background|pastel
    brown>|<cwith|8|8|4|4|cell-background|pastel
    brown>|<cwith|6|6|4|4|cell-background|pastel
    brown>|<cwith|4|4|4|4|cell-background|pastel
    brown>|<cwith|2|2|4|4|cell-background|pastel
    brown>|<cwith|4|4|6|6|cell-background|pastel
    brown>|<cwith|2|2|6|6|cell-background|pastel
    brown>|<cwith|4|4|8|8|cell-background|pastel
    brown>|<cwith|2|2|8|8|cell-background|pastel
    brown>|<cwith|5|5|5|5|cell-background|pastel
    brown>|<cwith|3|3|5|5|cell-background|pastel
    brown>|<cwith|5|5|7|7|cell-background|pastel
    brown>|<cwith|3|3|7|7|cell-background|pastel
    brown>|<cwith|5|5|9|9|cell-background|pastel
    brown>|<cwith|3|3|9|9|cell-background|pastel
    brown>|<cwith|8|8|8|8|cell-background|pastel
    brown>|<cwith|6|6|8|8|cell-background|pastel
    brown>|<cwith|8|8|6|6|cell-background|pastel
    brown>|<cwith|6|6|6|6|cell-background|pastel
    brown>|<cwith|5|5|3|3|cell-background|pastel
    brown>|<cwith|3|3|3|3|cell-background|pastel
    brown>|<cwith|4|4|2|2|cell-background|pastel
    brown>|<cwith|2|2|2|2|cell-background|pastel
    brown>|<cwith|1|1|5|5|cell-background|pastel
    brown>|<cwith|1|1|7|7|cell-background|pastel
    brown>|<cwith|1|1|9|9|cell-background|pastel
    brown>|<cwith|1|1|3|3|cell-background|pastel
    brown>|<cwith|7|7|5|5|cell-background|pastel
    brown>|<cwith|7|7|9|9|cell-background|pastel
    brown>|<cwith|7|7|7|7|cell-background|pastel
    brown>|<cwith|1|8|2|-1|cell-halign|c>|<cwith|1|8|2|-1|cell-tborder|1ln>|<cwith|1|8|2|-1|cell-bborder|1ln>|<cwith|1|8|2|-1|cell-lborder|1ln>|<cwith|1|8|2|-1|cell-rborder|1ln>|<cwith|9|9|2|-1|cell-tborder|1ln>|<cwith|1|8|1|1|cell-rborder|1ln>|<cwith|1|8|2|-1|font-base-size|12>|<cwith|1|8|2|-1|cell-valign|c>|<cwith|1|8|2|-1|cell-width|0.5cm>|<cwith|1|8|2|-1|cell-hmode|exact>|<cwith|1|8|2|-1|cell-height|0.5cm>|<cwith|1|8|2|-1|cell-vmode|exact>|<cwith|9|9|1|-1|cell-halign|c>|<table|<row|<cell|8>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|7>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#265A\>>|<cell|>|<cell|>>|<row|<cell|6>|<cell|>|<cell|\<#2656\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<#2659\>>|<cell|\<#2658\>>|<cell|\<#2657\>>|<cell|>>|<row|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|\<#2654\>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|1>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|h>>>>>>
      <label|chess7>
    </big-figure>

    <item>Im Bachet-Spiel gibt es jetzt 5 Kieselsteine; jeder Spieler kann 1,
    2 oder 3 Kieselsteine nehmen. Wer hat die Gewinnstrategie? Erstellen Sie
    ein Baumdiagramm, das die Gewinnstrategie gut präsentiert.

    <item>Die Funktion <math|f> heiÿt <with|font-shape|italic|achsensymmetrisch>,
    wenn es eine Zahl <math|a> gibt, so dass für jedes <math|x>
    <math|f<around*|(|x|)>=f<around*|(|2a-x|)>> gilt.

    <\enumerate>
      <item>Überprüfen Sie, ob die algebraische Definition den geometrischen
      Inhalt getreu wiedergibt.

      <item>Zeigen Sie mit Hilfe von GeoGebra Discovery oder Mathematica,
      dass die Funktion <math|f<around*|(|x|)>=x<rsup|2>+x> achsensymmetrisch
      ist.

      <item>Geben Sie ein Spiel für zwei Spieler an, das dieses Problem
      modelliert. Welches Quantorschema können wir angeben? Welcher Spieler
      hat eine Gewinnstrategie? Nennen Sie eine konkrete Gewinnstrategie.
    </enumerate>

    <item>Die Funktion <math|f> heiÿt <with|font-shape|italic|punktsymmetrisch>,
    wenn es Zahlen <math|a> und <math|b> gibt, so dass für jedes <math|x>
    <math|f<around*|(|x|)>=2b-f<around*|(|2a-x|)>> gilt.

    <\enumerate>
      <item>Überprüfen Sie, ob die algebraische Definition den geometrischen
      Inhalt getreu wiedergibt.

      <item>Zeigen Sie mit Hilfe von GeoGebra Discovery oder Mathematica,
      dass die Funktion <math|f<around*|(|x|)>=x<rsup|2>+x> nicht
      punktsymmetrisch ist.

      <item>Geben Sie ein Spiel für zwei Spieler an, das dieses Problem
      modelliert. Welches Quantorschema können wir angeben? Welcher Spieler
      hat eine Gewinnstrategie? Nennen Sie eine konkrete Gewinnstrategie.
    </enumerate>
  </enumerate>

  <section|CAD>

  Österreich ist ein prominenter Ort in der Welt, an dem Abkürzungen eine
  groÿe Rolle spielen. Wir haben also keine Angst, eine neue Abkürzung
  einzuführen, und wir hoffen sogar, dass die Abkürzung \RCAD\P
  <glossary-explain|CAD|Cylindrical Algebraic Decomposition>einigen Leuten
  gefallen wird.

  CAD <index|CAD>steht für <with|font-shape|italic|Cylindrical Algebraic
  Decomposition> (zylindrische algebraische Zerlegung), was vielleicht nicht
  mehr so viel Spaÿ macht. Aber wir werden sehen, dass wir uns auch davon
  nicht einschüchtern lassen müssen. Beginnen wir mit dem letzten Wort, der
  <with|font-shape|italic|Zerlegung>, denn das ist das einfachste. Wir werden
  den zu betrachtenden Raum in disjunkte Teile zerlegen. Jeder Teil (oder
  mehrere Teile zusammen) besteht aus so genannten
  <with|font-shape|italic|Zylindern>, d.h.<abbr|> aus Scheiben, die parallel
  zu einer Achse verlaufen. Um welchen Raum handelt es sich? Die Anzahl der
  Variablen in unserer Quantorenaussage ist die Potenz von <math|\<bbb-R\>>.
  Zum Beispiel: <math|\<bbb-R\><rsup|2>> für zwei Variablen,
  <math|\<bbb-R\><rsup|3>> für drei Variablen.

  Betrachten wir ein konkretes Beispiel: Eine zylindrische Zerlegung von
  <math|\<bbb-R\><rsup|2>> kann mit 3 Geraden durchgeführt werden:
  <math|x=1>, <math|x=3> und <math|x=10>. Diese Schnittgeraden verlaufen dann
  parallel zur <math|y>-Achse, und die Zerlegung besteht aus 7 Teilen:
  <math|x\<less\>1>, <math|x=1>, <math|1\<less\>x\<less\>3>, <math|x=3>,
  <math|3\<less\>x\<less\>10>, <math|x=10> und <math|x\<gtr\>10>. Diese
  Scheiben werden demnächst noch weiter zerlegt, aber bis dahin begnügen wir
  uns mit dem hier. Ein weiteres Beispiel: Die Gerade <math|y=-1> (diese ist
  parallel zur <math|x>-Achse) zerlegt die Ebene in 3 Teilen:
  <math|y\<less\>-1>, <math|y=1>, <math|y\<gtr\>-1>. Bei jeder Teilung halten
  wir fest, zu welcher Achse wir parallel schneiden werden. Für die Ebene
  gibt es also nur zwei Möglichkeiten. (Für den 3D-Raum schneiden wir
  entweder parallel zur <math|(x,y)>-Ebene oder zur <math|(x,z)>-Ebene oder
  zur <math|(y,z)>-Ebene. Es gibt also 3 Möglichkeiten. Der Einfachheit
  halber werden wir jedoch nur 2 Dimensionen betrachten.)

  Wenn wir eine solche einfache zylindrische Zerlegung haben, können wir die
  resultierenden Scheiben mit ein paar gezielten Schnitten kreuzweise
  schneiden. Die Querschnitte müssen nicht unbedingt gerade sein, aber (wie
  unsere üblichen Funktionskurven, die von links nach rechts gezeichnet
  werden) können sie nicht umgekehrt werden. Abbildung <reference|cad1> zeigt
  eine solche Konstruktion: Man beginnt mit einer Menge von 9 Zylindern (die
  Schnittgeraden verlaufen parallel zur <math|y>-Achse) und zerschneidet
  diese dann in 3, 5, 7, 9, 11, 9, 7, 5, 3 weitere Scheiben, so dass man
  insgesamt 59 Scheiben erhält. Es ist wichtig zu beachten, dass Streifen
  ohne Ausdehnung (0 Breite) ebenfalls als Scheiben gezählt werden.

  <\big-figure|<image|cad/cad1.png|162pt|||>>
    <label|cad1>
  </big-figure>

  Jemand könnte sagen, dass sich diese Kurve umkehrt! Ja, aber beim
  Rückwärtsfahren achten wir immer darauf, dass eine Schnittgerade parallel
  zur festen Achse verläuft.

  Der Vorteil dieser Methode ist, dass die Ebene (oder eine andere Potenz von
  <math|\<bbb-R\>>), die unendlich viele Punkte enthält, in endlich viele
  Zellen zerlegt wird, so dass sich unser Problem in jeder Zelle
  <with|font-shape|italic|homogen> verhält. Das bedeutet, dass wir unser
  Problem nicht für jeden Punkt des unendlich groÿen Raums berechnen müssen:
  Es reicht aus, in jeder Zelle eine Proberechnung durchzuführen, denn
  innerhalb dieser Zelle würde diese Proberechnung ein Ergebnis liefern, das
  im Wesentlichen mit allen möglichen Berechnungen identisch ist, die sich
  ergeben könnten. Wenn wir also eine Aussage über die obige Kurve machen
  wollen, ist es nicht notwendig, alle Punkte der Ebene in unsere
  Überlegungen einzubeziehen: Es würde ausreichen, nur 59 Sonderfälle zu
  betrachten. Das mag aus menschlicher Sicht viel erscheinen, aber für einen
  Computer sind es nur ein paar Augenblicke.

  Wir müssen noch herausfinden, was eine Zerlegung
  <with|font-shape|italic|algebraisch> macht. Die Antwort ist, dass wir bei
  der Verwendung von Querschnitten Kurven verwenden, die durch eine
  Polynomgleichung (d.h.<abbr|> eine algebraische Gleichung) beschrieben
  werden können. Bei der in der obigen Abbildung dargestellten Kurve handelt
  es sich um die Polynomgleichung <math|x=(y-2)\<cdot\>(y-1)\<cdot\>y\<cdot\>(y+1)\<cdot\>(y+2)>
  (hier haben wir absichtlich eine Seite in ein Produkt umgewandelt, damit
  der interessierte Leser weiter experimentieren kann).

  Wenn mehr als ein Polynom in der Aufgabe vorkommt, muss die Zerlegung so
  erfolgen, dass alle Polynomkurven entlang ihrer gesamten Länge geschnitten
  werden. Wir zeigen einige konkrete Anwendungen, wie dies in der Praxis
  umgesetzt wird.

  <\enumerate>
    <item>Betrachten wir erneut die Aussage <math|\<exists\> x
    <around*|(|\<forall\> y <around*|(|x\<cdot\> y=0|)>|)>>. Das Polynom
    <math|x\<cdot\> y=0> definiert eine Kurve, die die Vereinigung der beiden
    Achsen ist. In Abbildung <reference|cad2> sehen wir diese Situation, aber
    die Achsen sind nicht getrennt aufgetragen.

    <\big-figure|<image|cad/cad2.png|162pt|||>>
      <label|cad2>
    </big-figure>

    Diese Kurve führt zu einem CAD, das auf zwei Arten interpretiert werden
    kann: Die Zylinder können parallel zur <math|x>-Achse oder parallel zur
    <math|y>-Achse liegen. Für unsere Zwecke sind die Schnitte parallel zur
    <math|y>-Achse von Interesse, weil der erste Quantor des Ausdrucks
    <math|x> ist, so dass wir das <math|x> ändern müssen, während jedes
    <math|y> darin in die mögliche vollständige Zahlenmenge läuft.

    Hier sind also unsere Hauptschnitte <math|x\<less\>0>, <math|x=0> und
    <math|x\<gtr\>0>, und innerhalb dieser ergeben sich 3--3--3 Zellen mit
    1--1--1 Querschnitten, d.h.<abbr|> wir haben <math|\<bbb-R\><rsup|2>> in
    9 Zellen unterteilt:

    <\with|par-mode|center>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|2|2|2|-1|cell-tborder|1ln>|<cwith|1|1|2|-1|cell-bborder|1ln>|<cwith|4|4|2|-1|cell-bborder|0ln>|<cwith|2|-1|2|2|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|1ln>|<cwith|2|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|<math|x\<less\>0>>|<cell|<math|x=0>>|<cell|<math|x\<gtr\>0>>>|<row|<cell|<math|y\<gtr\>0>>|<cell|A1>|<cell|B1>|<cell|C1>>|<row|<cell|<math|y=0>>|<cell|A2>|<cell|B2>|<cell|C2>>|<row|<cell|<math|y\<less\>0>>|<cell|A3>|<cell|B3>|<cell|C3>>>>>
    </with>

    Hier sind A, B und C die Hauptscheiben, und innerhalb dieser Scheiben
    sind A1, A2, A3 bzw.<abbr|> B1, B2, B3 bzw.<abbr|> C1, C2 und C3 die
    Zellen.

    Was wir uns ansehen müssen, ist das <with|font-shape|italic|Vorzeichen>
    des <math|x\<cdot\> y>-Terms in diesen Zellen:

    <\with|par-mode|center>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|2|2|2|-1|cell-tborder|1ln>|<cwith|1|1|2|-1|cell-bborder|1ln>|<cwith|4|4|2|-1|cell-bborder|0ln>|<cwith|2|-1|2|2|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|1ln>|<cwith|2|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|<math|x\<less\>0>>|<cell|<math|x=0>>|<cell|<math|x\<gtr\>0>>>|<row|<cell|<math|y\<gtr\>0>>|<cell|<math|->>|<cell|<math|0>>|<cell|<math|+>>>|<row|<cell|<math|y=0>>|<cell|<math|0>>|<cell|<math|0>>|<cell|<math|0>>>|<row|<cell|<math|y\<less\>0>>|<cell|<math|+>>|<cell|<math|0>>|<cell|<math|->>>>>>
    </with>

    Dies ist das wichtigste Element der Methode: Die algebraischen Ausdrücke
    (d.h.<abbr|> die Polynome) innerhalb der Zellen müssen immer das gleiche
    Vorzeichen haben. Das bedeutet für die oben erwähnte Homogenität: Es
    genügt, einen Versuch in jeder der 9 Zellen durchzuführen, und das
    Ergebnis des Versuchs gibt uns einen klaren Hinweis auf das Vorzeichen
    aller anderen Ausdrücke in dieser Zelle.

    Um dies zu veranschaulichen, sehen wir uns an, wie eine Probe
    <math|x=-2>, <math|y=3> in Zelle A1 ein Produkt <math|x\<cdot\> y> mit
    einem bestimmten Vorzeichen ergibt. Das Ergebnis ist <math|-6>,
    d.h.<abbr|> negativ. Daraus ergibt sich, dass
    <with|font-shape|italic|alle> <math|x\<cdot\> y>-Multiplikationen für die
    Zelle A1 negativ sein werden. Wir brauchen also nicht alle Zahlenpaare
    dieser Zelle auszuprobieren, aber diese eine Multiplikation
    <math|-2\<cdot\> 3> sagt uns eindeutig das Vorzeichen des Ergebnisses,
    das mit dieser Zelle verbunden ist.

    Wir betonen, dass wir die Tatsache, dass es sich nur um
    <with|font-shape|italic|Polynomfunktionen> handeln kann, sehr stark
    ausnutzen, da die <with|font-shape|italic|Stetigkeit> in jedem Fall
    erfüllt ist und die Kontinuitätsbedingung sicherstellt, dass das
    Vorzeichen innerhalb der Zellen nicht wechselt.

    Jetzt können wir die ursprüngliche Frage beantworten: Gibt es ein
    <math|x>, für das das Produkt <math|x\<cdot\> y> für alle <math|y> gleich
    0 ist? Ein Blick auf unsere letzte Tabelle gibt uns eine klare Antwort:
    Ja, es gibt ein solches <math|x>, und die Scheibe in der mittleren Spalte
    ist für alle ihre Unterscheiben die richtige, d.h.<abbr|> sie liefert das
    Ergebnis 0. Unsere Antwort auf die ursprüngliche Frage lautet daher: Ja.

    <item>Betrachten wir nun erneut die Aussage <math|\<exists\> x
    <around*|(|\<forall\> y <around*|(|x\<less\>y<rsup|2>|)>|)>>. Anstelle
    der Relation <math|x\<less\> y<rsup|2>> nehmen wir die Relation
    <math|x-y<rsup|2>\<less\>0>, die die Kurve <math|x-y<rsup|2>=0>
    definiert. Da die gesamte Formel mit <math|x> beginnt, schneiden wir
    parallel zur <math|y>-Achse. Abbildung <reference|cad3> zeigt diese
    Situation (wiederum ohne Achsen -- dies liegt daran, dass das zur
    grafischen Darstellung verwendete Programm <name|Tarski>
    <cite|ValeEnriquez-Brown> diese Möglichkeit noch nicht bietet).

    <\big-figure|<image|cad/cad3.png|162pt|||>>
      <label|cad3>Ausgabe des <name|Tarski>-Programms für die Eingabe
      <verbatim|(plot2d [x\<less\>y^2] "400 400 -5 5 -5 5 -")>. Hier ist
      \R400 400\P die Gröÿe der Ausgabe, und die folgenden Zahlen sind die
      minimalen und maximalen <math|x>- und <math|y>-Koordinaten. Das
      Programm kann unter <slink|https://matek.hu/tarski/webtarski.html>
      getestet werden.
    </big-figure>

    Unsere Hauptschnitte sind: <math|x\<less\>0> (A), <math|x=0> (B) und
    <math|x\<gtr\>0> (C). Dabei schneiden wir nicht den Zylinder A, sondern B
    in drei Teile: Wenn <math|x=0> ist, können wir einen Schnitt
    <math|y\<less\>0> (B1), einen Schnitt <math|y=0> (B2) und einen Schnitt
    <math|y\<gtr\>0> (B3) haben. C1 wird von oben durch die Kurve
    <math|x=y<rsup|2>> begrenzt, hier also <math|y\<less\>0>. C2 ist die
    Kurve <math|x=y<rsup|2>> selbst, aber nur für negative <math|y>-Werte, C3
    ist eine Fläche, die durch den oberen und unteren Teil der Kurve
    <math|x=y<rsup|2>> begrenzt wird (in der Abbildung weiÿ markiert), und C4
    ist die Kurve <math|x=y<rsup|2>> nur für positive Werte. Die Fläche C5
    ist die Fläche über dem oberen Ast der <math|x=y<rsup|2>>-Kurve.

    In den sich ergebenden <math|1+3+5=9> Zellen müssen wir das Vorzeichen
    von <math|x-y<rsup|2>> untersuchen. In der Abbildung sind die Zellen, in
    denen das Vorzeichen richtig (d.h.<abbr|> negativ) ist, blau markiert:
    die Zellen A1, B1, B3, C1 und C5.

    Wenn wir nun die ursprüngliche Frage beantworten wollen, brauchen wir nur
    zu prüfen, ob es irgendwelche Zylinder gibt, die völlig korrekt
    (d.h.<abbr|> blau) sind. Und offensichtlich gibt es einen, nämlich den
    Zylinder A. Wenn wir ein bestimmtes <math|x> angeben wollen, das die
    Frage des Problems beantwortet, wählen wir ein <math|x>, das in diesen
    Zylinder fällt. Vorhin haben wir <math|x=-1> gewählt, aber es ist klar,
    dass jede andere negative Zahl ausreicht.

    <item>Unsere Formel sei wieder <math|\<exists\> p <around*|(|\<forall\> x
    <around*|(|p\<gtr\>0\<wedge\><around*|(|x<rsup|2>=<around*|(|x+p|)><rsup|2>|)>|)>|)>>,
    jetzt umgeschrieben als <math|\<exists\> y <around*|(|\<forall\> x
    <around*|(|y\<gtr\>0\<wedge\><around*|(|x<rsup|2>=<around*|(|x+y|)><rsup|2>|)>|)>|)>>,
    oder, gleichwertig, <math|\<exists\> y <around*|(|\<forall\> x
    <around*|(|y\<gtr\>0\<wedge\><around*|(|2 x y+y<rsup|2>=0|)>|)>|)>>. Noch
    besser ist es, das Polynom in eine faktorisierte Form umzuwandeln, da es
    sich dann leichter grafisch darstellen lässt: <math|\<exists\> y
    <around*|(|\<forall\> x <around*|(|y\<gtr\>0\<wedge\><around*|(|y\<cdot\>
    <around*|(|2x+y|)>|)>=0|)>|)>>. Da wir mit <math|y> beginnen, werden wir
    Schnitte parallel zur <math|x>-Achse machen. Siehe Abbildung
    <reference|cad4>!

    \;

    <\big-figure|<image|cad/cad4.png|162pt|||>>
      <label|cad4>Eine Version der Ausgabe des <name|Tarski>-Programms,
      gespiegelt an der Geraden <math|y=x>, erzeugt durch die Eingabe
      <verbatim|(plot2d [y\<gtr\>0 /\\ x^2=(x+y)^2] "400 400 -5 5 -5 5 -"
      '(ord (y x)))>. Hier gibt das Ende des Befehls an, dass das Slicing
      \Rin umgekehrter Richtung\P zur Standardeinstellung erfolgen soll.
    </big-figure>

    Auch hier entstehen drei Hauptzylinder, die durch die Kurven <math|y=0>
    und <math|2 x+y=0> definiert werden. Da die Zylinder parallel zur
    <math|x>-Achse verlaufen, werden die drei Hauptzylinder <math|y\<less\>0>
    (A),<math| y=0> (B) und <math|y\<gtr\>0> (C) sein. Innerhalb dieser
    werden wiederum 3-3-3 Zellen mit 1-1-1 Querschnitten (definiert durch die
    Kurve <math|2 x+y=0>) gebildet: Zelle A1 wird durch die Bedingung <math|2
    x+y\<less\>0>, Zelle A2 durch die Bedingung <math|2 x+y=0>, Zelle A3
    durch die Bedingung <math|2 x+y\<gtr\>0>, Zelle B1 durch die negativen
    Elemente der <math|x>-Achse, Zelle B2 durch den Ursprung selbst und Zelle
    B3 durch den positiven Teil der <math|x>-Achse definiert. Schlieÿlich
    wird die Zelle C1 mit <math|2 x+y\<less\>0>, die Zelle C2 mit <math|2
    x+y=0> und die Zelle C3 mit <math|2 x+y\<gtr\>0> (hier jedoch für
    positive <math|y>) angegeben.

    Beachten Sie, dass in unserer Abbildung der Zylinder A nicht sichtbar
    ist, aber das liegt daran, dass die Bedingung <math|y\<gtr\>0> für den
    gesamten Bereich des Zylinders A falsch ist. Sie wären also ohnehin weiÿ
    gefärbt und somit unsichtbar. Zylinder B ist komplett gelb: dort besitzt
    das Polynom <math|y> den Wert 0, d.h.<abbr|> nicht positiv, aber er
    könnte an eine Zelle angrenzen, in der beide Polynome das richtige
    Vorzeichen haben. In Zylinder C schlieÿlich wird nur Zelle C2
    übereinstimmen, die anderen beiden nicht, so dass nur C2 blau gefärbt
    wird, die anderen beiden bleiben weiÿ.

    Wir können nun ablesen, ob es ein <math|y> gibt, für das für alle
    <math|x> <math|y\<gtr\>0> und <math|y\<cdot\> (2x+y)=0> gelten. Offenbar
    nicht, denn es gibt keinen Zylinder, der ganz blau ist.
  </enumerate>

  In der Praxis durchläuft der Computer genau diese Schritte bei der
  Berechnung der reellen Quantorenelimination. Jedes Mal, wenn eine neue
  algebraische Kurve hinzukommt, wird die Situation jedoch komplizierter,
  weil die Anzahl der Zellen sehr schnell wachsen kann. Es ist nicht
  ungewöhnlich, dass man für relativ einfache Fragen mit Zellzahlen in
  Millionenhöhe einen Entwurf erstellen muss. Die CAD-Methode ist daher vor
  allem bei einer geringen Anzahl von Variablen effektiv, andernfalls müssen
  zusätzliche Methoden angewandt werden, z.B.<abbr|> zur Beschleunigung des
  Entscheidungsprozesses oder der Eliminierung durch Zusammenlegung
  bestimmter Zellen.

  Ein weiteres Problem besteht darin, dass die Schnittpunkte der
  algebraischen Kurven sorgfältig berechnet werden müssen und eine numerische
  Annäherung in der Regel nicht ausreicht. Es ist kein Wunder, dass
  effiziente Algorithmen noch nicht lange existieren und ihre
  Weiterentwicklung noch immer eine Forschungsaufgabe ist.

  Wir schlieÿen dieses Kapitel mit einem theoretischen Ergebnis ab. Die von
  uns beschriebene CAD-Methode wurde 1975 von Collins eingeführt
  <cite|Collins1975>, und das erste Computerprogramm, das sie erfolgreich
  mechanisiert hat, wurde 1981 erstellt <cite|Arnon1981>. Der theoretische
  Hintergrund wurde jedoch durch die Arbeit von Tarski geliefert. Das
  Tarski--Seidenberg-Theorem<index|Tarski\USeidenberg-Theorem> (1951,
  <cite|tarski51>) besagt, dass jede logische Aussage erster Stufe, die nur
  logische Operationen und polynomiale Gleichungen und Ungleichungen enthält,
  immer in quantorfreie Form umgeschrieben werden kann.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Unter <slink|https://www.youtube.com/watch?v=9eT9s94vbno> befindet
    sich eine Lösung des Ungleichungssystems\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y>|<cell|\<geqslant\>>|<cell|<around*|(|x-2|)><rsup|2>+2,>>|<row|<cell|y>|<cell|\<leqslant\>>|<cell|-<around*|(|x-1|)><rsup|2>+7.>>>>
    </eqnarray*>

    Wir möchten jedoch mit CAD überprüfen, ob dieses System für <math|x> eine
    Lösung hat. Deswegen erstellen wir zwei CAD-Varianten (siehe Abbildung
    <reference|cad56>).

    <\big-figure|<image|cad/cad5.png|162pt|||> <image|cad/cad6.png|162pt|||>>
      <label|cad56>
    </big-figure>

    <\enumerate>
      <item>Welche CAD hilft Ihnen bei der Beantwortung der Frage?
      Formulieren Sie eine Frage, die die <with|font-shape|italic|andere> CAD
      gut beantworten kann.

      <item>Lösen Sie das ursprüngliche Problem mit Hilfe von reeller
      Quantorenelimination (z.B.<abbr| >GeoGebra Discovery).
    </enumerate>

    <item>Wir haben keine exakte Definition dafür gegeben, was genau eine CAD
    ist. Bei der Lektüre der Literatur stellen wir fest, dass bei der
    Betrachtung der senkrechten Projektionen jeder Zelle die Projektionen
    zweier willkürlich ausgewählter Zellen entweder übereinstimmen oder
    völlig unterschiedlich sein müssen. Und die Projektionen müssen den
    ganzen Zahlenstrahl ergeben.

    In der vorangegangenen Übung haben wir die Zellen beider CADs (mit
    genauen algebraischen Definitionen) und ihre entsprechenden senkrechten
    Projektionen angegeben: im ersten Fall projiziert auf die <math|x>-Achse,
    im zweiten auf die <math|y>-Achse. Überprüfen Sie, ob die Projektionen
    tatsächlich völlig gleich oder völlig unterschiedlich sind und ob ihre
    Vereinigung wirklich den gesamten Zahlenstrahl abdeckt.

    <item>Die <name|Tarski>-Software ergab das Original des in Abbildung
    <reference|cad4> gezeigten Bildes, gespiegelt an der Geraden <math|y=x>.
    Der Autor dieses Skriptums musste die Originalausgabe mit der Software
    GIMP umwandeln, die keine direkte Möglichkeit für eine solche Spiegelung
    bietet. Was jedoch schnell verfügbar ist: vertikale Spiegelung,
    horizontale Spiegelung, Drehung um <math|+90<rsup|\<circ\> >>, Drehung um
    <math|-90<rsup|\<circ\> >>, Drehung um <math|180<rsup|\<circ\> >>. Wie
    würde eine Kombination dieser Optionen die gewünschte Spiegelung
    erreichen?
  </enumerate>

  <section|Herleitbarkeit in der euklidischen Geometrie>

  Das Tarski--Seidenberg-Theorem hat einige spannende Implikationen. Eine
  davon ist, dass alle Aussagen der \Rkonventionellen\P Geometrie, die wir
  als synthetische oder analytische Geometrie bezeichnen, entscheidbar (ob
  wahr oder nicht) und beweisbar (d.h.<abbr|> herleitbar) sind. Wir behaupten
  nicht, dass dies in der Praxis in einer realistischen Zeit machbar ist:
  Wenn CAD verwendet wird, kann es aufgrund der groÿen Anzahl von Zellen
  Jahre dauern, bis der Computer die vollständige Verarbeitung abgeschlossen
  hat. In jedem Fall ist ein vollständiger Beweis für einfachere Behauptungen
  möglich.<nocite|Sturm1999>

  Ein Beweis in diesem Sinne ist weder die übliche geometrische Herleitung
  noch die algebraische Berechnung, sondern die Reduktion einer unendlichen
  Anzahl von Fällen auf eine endliche Anzahl von Zellen und deren mechanische
  Überprüfung. Das mag einige Leute enttäuschen, aber es ist ein richtiger
  Beweis, da alle Fälle berücksichtigt werden. Nicht unbedingt elegant, aber
  es funktioniert.

  Schauen wir uns einige Beispiele an! Grundsätzlich gehen wir davon aus,
  dass es sich bei der Geometrie, in der wir arbeiten, um Punkte mit reellen
  Koordinaten handelt. Geometrische Beziehungen wie Parallelität zwischen
  Geraden, Orthogonalität, Schnittpunkt von Geraden, Abstand zwischen Punkten
  usw.<abbr|> werden dann in algebraische Beziehungen umgewandelt, aus denen
  wir dann die Quantifizierungsaussage erstellen.

  <\enumerate>
    <item>Wir wollen zeigen, dass die Länge einer geraden Strecke, die im
    Inneren eines Quadrats gezogen wird, nicht gröÿer sein kann als das
    Anderthalbfache der Seite.

    Wir machen keinen Fehler, wenn wir davon ausgehen, dass die Eckpunkte des
    Quadrats in den Punkten <math|(0,0)>, <math|(1,0)>, <math|(1,1)> und
    <math|(0,1)> liegen und dass die Strecke zwischen den Punkten
    <math|(a,b)> und <math|(c,d)> verläuft. Dies ist möglich, da die
    Allgemeinheit des Problems erhalten bleibt. Wir setzen auÿerdem voraus,
    dass <math|0\<less\>a\<less\>1>, <math|0\<less\>b\<less\>1>,
    <math|0\<less\>c\<less\>1> und <math|0\<less\>d\<less\>1>. Weiters,
    <math|f<rsup|2>=<around*|(|a-c|)><rsup|2>+<around*|(|b-d|)><rsup|2>>,
    wobei wir eine neue Variable für die Länge des Liniensegments einführen.
    Die zu beweisende Quantifizierungsaussage lautet

    <\with|par-mode|center>
      <\equation*>
        \<forall\>a <around*|(|\<forall\>b <around*|(|\<forall\>c
        <around*|(|\<forall\>d <around*|(|\<forall\>f
        <next-line><around*|(|<around*|(|a\<gtr\>0\<wedge\>a\<less\>1\<wedge\>b\<gtr\>0\<wedge\>b\<less\>1\<wedge\>c\<gtr\>0\<wedge\>c\<less\>1\<wedge\>d\<gtr\>0\<wedge\>d\<less\>1\<wedge\><next-line><around*|(|f<rsup|2>=<around*|(|a-c|)><rsup|2>+<around*|(|b-d|)><rsup|2>|)>|)>\<rightarrow\>f\<less\>1.5|)>|)>|)>|)>|)>,
      </equation*>
    </with>

    die wir auswerten können, indem wir z.B.<abbr|> mit GeoGebra Discovery
    eine reelle Quantorenelimination anfordern und feststellen, dass diese
    Aussage wahr ist.

    Offensichtlich ist 1.5 keine scharfe Grenze, wir könnten auch eine
    kleinere Zahl angeben, da wir vermuten, dass der Extremfall bei
    <math|<sqrt|2>> liegen wird. Wenn wir nun eine Variable <math|g> anstelle
    von 1.5 angeben, dann berechnet die reelle Quantorenelimination genau,
    für welchen Wert von <math|g> die Aussage wahr ist, und wir erhalten
    genau <math|g\<gtr\>0\<wedge\>g<rsup|2>-2\<geqslant\>0>. (Dieses Ergebnis
    erfordert einen relativ schnellen Computer, die Berechnung auf dem
    Rechner des Autors dauerte 3,5 Sekunden. Standardmäÿig rechnet GeoGebra
    Discovery 5 Sekunden lang und bricht die Berechnung ab, wenn das Ergebnis
    nicht erreicht wird.) Dies ist eine kluge Antwort, denn
    <math|g<rsup|2>-2\<geqslant\>0> allein reicht nicht aus, da <math|g>
    immer noch eine negative Zahl sein könnte.

    <item>Wir möchten die Dreiecksungleichung beweisen.

    Angenommen, die Eckpunkte des Dreiecks sind <math|(0,0)>, <math|(1,0)>
    und <math|(a,b)>, bezeichnet mit <math|A>, <math|B> bzw.<abbr|> <math|C>.
    Seien <math|f>, <math|g> und 1 die Längen der Seiten des Dreiecks in
    umgekehrter Umfangsrichtung, dann gelten die Gleichungen
    <math|f<rsup|2>=a<rsup|2>+b<rsup|2>> und
    <math|g<rsup|2>=<around*|(|a-1|)><rsup|2>+b<rsup|2>>. Die zu beweisenden
    Quantifizierungsaussagen sind:

    <\equation*>
      \<forall\>a <around*|(|\<forall\>b <around*|(|\<forall\>f
      <around*|(|\<forall\>g <around*|(|<around*|(|<around*|(|f<rsup|2>=a<rsup|2>+b<rsup|2>|)>\<wedge\><around*|(|g<rsup|2>=<around*|(|a-1|)><rsup|2>+b<rsup|2>|)>\<wedge\>f\<geqslant\>0\<wedge\>g\<geqslant\>0|)>\<rightarrow\>f+g\<gtr\>1|)>|)>|)>|)>,
    </equation*>

    weiters

    <\equation*>
      <math|\<forall\>a <around*|(|\<forall\>b <around*|(|\<forall\>f
      <around*|(|\<forall\>g <around*|(|<around*|(|<around*|(|f<rsup|2>=a<rsup|2>+b<rsup|2>|)>\<wedge\><around*|(|g<rsup|2>=<around*|(|a-1|)><rsup|2>+b<rsup|2>|)>\<wedge\>f\<geqslant\>0\<wedge\>g\<geqslant\>0|)>\<rightarrow\>f+1\<gtr\>g|)>|)>|)>|)>>
    </equation*>

    und

    <\equation*>
      \<forall\>a <around*|(|\<forall\>b <around*|(|\<forall\>f
      <around*|(|\<forall\>g <around*|(|<around*|(|<around*|(|f<rsup|2>=a<rsup|2>+b<rsup|2>|)>\<wedge\><around*|(|g<rsup|2>=<around*|(|a-1|)><rsup|2>+b<rsup|2>|)>\<wedge\>f\<geqslant\>0\<wedge\>g\<geqslant\>0|)>\<rightarrow\>g+1\<gtr\>f|)>|)>|)>|)>.
    </equation*>

    Es mag den Leser überraschen, aber alle diese Behauptungen sind falsch.
    Der Fehler lag darin, dass nicht berücksichtigt wurde, dass das Dreieck
    <math|A B C> entartet sein könnte. Diese Information wird uns aber auch
    durch die echte Quantorenelimination mitgeteilt, wenn wir den Quantor
    <math|\<forall\>b> streichen, und in diesem Fall erhalten wir die
    eliminierte Formel <math|b\<neq\>0>. Das heiÿt, die Aussage ist wahr in
    dem besonderen Fall, in dem der Punkt <math|C> nicht auf die Gerade
    <math|A B> fällt. Und tatsächlich, wenn wir diese Bedingung zu den
    Prämissen hinzufügen, erhalten wir eine wahre Aussage.
  </enumerate>

  Wie wir gesehen haben, sind wir bei der Anwendung der reellen
  Quantorenelimination manchmal mit der Notwendigkeit konfrontiert, unsere
  geometrischen Aussagen strenger zu gestalten, als wir vielleicht denken. In
  der Tat treten degenerierte Fälle viel häufiger auf, als wir vermuten, und
  eine strenge mathematische Analyse kann unsere Aussagen als falsch
  erweisen.

  Effizienz bedeutet <with|font-shape|italic|Geschwindigkeit>: Wenn das
  geometrische Problem viele Punkte enthält, ist es sinnvoller, eine andere
  Methode zu wählen. Dies kann z.B.<abbr|> der Fall sein, wenn nur
  Gleichungen gegeben sind und nur der Universalquantor in der Aussage
  enthalten ist: In diesem Fall gibt es eine gut etablierte Methode zur
  Analyse des Problems <cite|Chou_1987>. Zwar muss man in diesem Fall in der
  Regel auf die Formulierung von Hypothesen verzichten, die zu Ungleichheiten
  führen, und auch die These muss diese Art von Schlussfolgerung vermeiden.
  In solchen Fällen kann die Hypothese oder These ein Zusammenschluss
  mehrerer Aussagen sein, von denen einige keinen wirklichen oder richtigen
  geometrischen Inhalt haben. Daher ist eine weitere Analyse erforderlich, um
  zu Aussagen zu gelangen, die mit unseren Erwartungen übereinstimmen,
  nachdem die nicht passenden algebraischen oder geometrischen Inhalte
  ausgeschlossen wurden.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Bei einer viereckigen Brücke wollen wir so schnell wie möglich von
    Seite <math|A B> zu Seite <math|C D> gelangen. Angenommen,
    <math|A=(0,0)>, <math|B=(2,0)>, <math|C=(3,2)>, <math|D=(2,3)>.

    a. Zeigen Sie, dass der kürzeste Weg mindestens 2 Einheiten lang ist.
    Hinweis: Ein Punkt auf der Seite <math|A B> sei <math|(a,0)> und ein
    Punkt auf der Seite <math|C D> sei <math|(b,5-b)>. Verwenden Sie reelle
    Quantorenelimination.

    b. Ist es möglich, eine genauere Schätzung als das Minimum von 2
    Einheiten abzugeben?

    c. Wo ist der kürzeste Weg?

    <item>Es ist bekannt, dass in jedem rechtwinkligen Dreieck die Summe der
    Quadrate der Katheten gleich dem Quadrat der Hypothenuse ist (dies ist
    der Satz des Pythagoras). Was passiert, wenn wir die Bedingung aufheben,
    dass das Dreieck rechtwinklig sein muss? Tipp: Versuchen Sie, wie in
    diesem Kapitel beschrieben (unter Verwendung der im Beweis der
    Dreiecksungleichung gezeigten Methode), zu sehen, dass
    <math|f<rsup|2>+g<rsup|2>=1<rsup|2>> ist: Dies wird natürlich nicht wahr
    sein, aber vielleicht kann man eine Ungleichung finden, zum Beispiel
    <math|f<rsup|2>+g<rsup|2>\<gtr\>1/4>. Kann diese Ungleichung
    weiterentwickelt werden? Wenn ja, für wie lange? Gibt es eine Obergrenze
    für die Summe der Quadrate?

    <item>Verallgemeinern Sie die letzte Aufgabe, so dass statt <math|A B=1>
    die allgemeine Länge <math|A B=h> angegeben wird.

    <item>Wir wollen zeigen, dass die Länge einer geraden Strecke, die im
    Inneren eines Kreises gezogen wird, nicht gröÿer sein kann als der
    Durchmesser des Kreises. Wie kann diese Aussage durch reelle
    Quantorenelimination bewiesen werden?
  </enumerate>

  <subsection|Herleitungen nur mit Polynomen>

  In diesem Abschnitt zeigen wir ein Beispiel, wie man einfache ebene
  geometrische Aussagen vollständig mechanisch herleiten kann. Hier achten
  wir darauf, nur Gleichheiten in unser System aufzunehmen.

  Wir werden einsehen, dass die Mittellinie eines Dreiecks halb so lang ist
  wie die entsprechende Seite. Zu diesem Zweck betrachten wir das Dreieck,
  das durch die Punkte <math|A=(0,0)>, <math|B=(1,0)>, <math|C=(a,b)>
  definiert ist, wobei die Mittellinie durch das Segment <math|D E> gegeben
  ist, wo der Punkt <math|D> der Mittelpunkt der Seite <math|A C> und der
  Punkt <math|E> der Mittelpunkt der Seite <math|B C> ist. Mit Koordinaten:
  <math|D=<around*|(|c,d|)>=<around*|(|<frac|a|2>,<frac|b|2>|)>>,
  <math|E=<around*|(|e,f|)>=<around*|(|<frac|a+1|2>,<frac|b|2>|)>>. Die Länge
  der Strecke <math|D E> wird mit <math|g> bezeichnet.

  \;

  Man könnte sagen, dass wir 5 Hypothesen haben:

  <\eqnarray*>
    <tformat|<table|<row|<cell|2c-a>|<cell|=>|<cell|0,<eq-number><label|e1>>>|<row|<cell|2d-b>|<cell|=>|<cell|0,<eq-number><label|e2>>>|<row|<cell|2e-a-1>|<cell|=>|<cell|0,<eq-number><label|e3>>>|<row|<cell|2f-b>|<cell|=>|<cell|0,<eq-number><label|e4>>>|<row|<cell|<around*|(|c-e|)><rsup|2>+<around*|(|d-f|)><rsup|2>-g<rsup|2>>|<cell|=>|<cell|0.<eq-number><label|e5>>>>>
  </eqnarray*>

  Diese werden nun in Polynomform dargestellt, reduziert auf 0, da wir nur
  mit den linken Seiten jonglieren werden.

  Unser Ziel ist es natürlich, das Ergebnis <math|g=1/2> zu erhalten. Wir
  können jedoch nicht davon ausgehen, dass <math|g> positiv ist, da wir keine
  Ungleichungen verwenden können. Wir müssen also schlussfolgern, dass
  <math|g<rsup|2>=1/4> ist. Welche Hilfsmittel stehen uns für die maschinelle
  Herleitung zur Verfügung? Auf den ersten Blick nicht viel: Wir können eine
  Gleichung mit einem Polynom multiplizieren oder zwei Gleichungen
  voneinander subtrahieren. Unter Verwendung der Notation von AXolotl können
  wir also diese beiden Umschreibregeln verwenden:

  <\enumerate>
    <item><math|\<vartriangle\>,p=0\<longrightarrow\>\<vartriangle\>,p=0,p\<cdot\>
    q=0><math|>

    <item><math|\<vartriangle\>,p=0,q=0\<longrightarrow\>\<vartriangle\>,p=0,q=0,p-
    q=0>
  </enumerate>

  Manchmal werden bestimmte Gleichungen (die Nebenrechnungen sind) verworfen.
  Das heiÿt, wir werden auch die Herleitungsregel
  <math|\<vartriangle\>,p=0\<longrightarrow\>\<vartriangle\>> verwenden.

  Mit nur diesen beiden Schritten und einer Menge Berechnungen können wir
  jedoch tatsächlich die gewünschte These <math|g<rsup|2>=1/4> aufstellen.
  Wie?

  <\enumerate>
    <item>Wir berechnen <math|<around*|(|<reference|e1>|)>-<around*|(|<reference|e3>|)>>,
    die die Gleichheit <math|2 c-2 e+1=0> ergibt. Dies wird der Einfachheit
    halber durch 2 geteilt, so erhalten wir die Gleichheit

    <\equation>
      c-e+<frac|1|2>=0<label|e6>.
    </equation>

    <item>Wir berechnen <math|<around*|(|<reference|e2>|)>-<around*|(|<reference|e4>|)>>,
    die die Gleichung <math|2 d-2 f=0> ergibt. Dies wird der Einfachheit
    halber wieder durch 2 geteilt, so erhalten wir nun die Gleichheit

    <\equation>
      d-f=0<label|e8>.
    </equation>

    <item>Der Rest der Berechnung besteht aus einer langen algebraischen
    Umformung, die völlig mechanisch abläuft, aber zur besseren Übersicht
    werden wir die Variablen alphabetisch sortieren. Genau das geschieht bei
    der Computerverarbeitung. Insbesondere ist es wichtig, dass die Variable,
    die mit dem gesuchten Ergebnis verbunden ist, die letzte in der
    Sortierreihenfolge ist. Auÿerdem versuchen wir, das Glied am Anfang
    unseres umzuformenden Polynoms mit Hilfe eines anderen Polynoms zu
    eliminieren, genau wie bei dem Eliminationsverfahren linearer
    Gleichungssysteme. So sieht unser Gleichungssystem vorerst aus, wenn wir
    alles entsprechend aufschreiben:

    <\eqnarray*>
      <tformat|<table|<row|<cell|-a+2 c>|<cell|=>|<cell|0,<eq-number><label|f1>>>|<row|<cell|-b+2
      d>|<cell|=>|<cell|0,<eq-number><label|f2>>>|<row|<cell|-a+2
      e-1>|<cell|=>|<cell|0,<eq-number><label|f3>>>|<row|<cell|-b+2
      f>|<cell|=>|<cell|0,<eq-number><label|f4>>>|<row|<cell|c<rsup|2>-2 c
      e+d<rsup|2>-2 d f+e<rsup|2>+f<rsup|2>-g<rsup|2>>|<cell|=>|<cell|0,<eq-number><label|f5>>>|<row|<cell|c-e+<frac|1|2>>|<cell|=>|<cell|0,<eq-number><label|f6>>>|<row|<cell|d-f>|<cell|=>|<cell|0.<eq-number><label|f8>>>>>
    </eqnarray*>

    Wenn wir nun <math|<around*|(|<reference|f1>|)>\<cdot\><around*|(|-c|)>-<around*|(|<reference|f6>|)>\<cdot\>a>
    berechnen, werden die beiden ersten Terme von (<reference|f1>) und
    (<reference|f6>) eliminiert. Dieser Schritt kann durch dreimaliges
    Umschreiben durchgeführt werden: einmal durch eine Multiplikation mit
    <math|<around*|(|-c|)>>, durch eine Multiplikation mit <math|a>, und
    durch eine Subtraktion. Als Ergebnis erhalten wir <math|a e-<frac|1|2>
    a-2 c<rsup|2>> = 0. Nun addieren wir dazu (<reference|f1>)-mal <math|e>
    (dies kann auch wie zwei Schritte von Umschreiben interpretiert werden:
    wir multiplizieren mit <math|<around*|(|-e|)>>, und dann subtrahieren
    wir), so erhalten wir die Gleichung <math|-<frac|1|2> a-2 c<rsup|2>+2 c
    e=0>. Diese wird nun mit <math|<around*|(|-2|)>> multipliziert und dazu
    addieren wir (<reference|f1>), so ergibt sich die Gleichheit <math|4
    c<rsup|2>-4 c e+2 c=0>. Dividieren wir diese durch 4, und subtrahieren
    wir (<reference|f5>) davon: so bekommen wir die Gleichung <math|c
    e+<frac|1|2> c-d<rsup|2>+2 d f-e<rsup|2>-f<rsup|2>+g<rsup|2>=0>.

    Wir haben nun die Hälfte der Strecke zurückgelegt. Beachten Sie, dass der
    erste Term des Polynoms immer ausgeschieden wird. Das werden wir jetzt
    auch tun: wir subtrahieren (<reference|f6>)-mal <math|e> von der letzten
    Gleichung und erhalten <math|<frac|1|2> c-d<rsup|2>+2 d f-<frac|1|2>
    e-f<rsup|2>-g<rsup|2>=0>. \ Nun ziehen wir (<reference|f6>) von der
    Verdopplung dieser Gleichung ab und es ergibt sich <math|-2 d<rsup|2>+4 d
    f-2 f<rsup|2>+2 g<rsup|2>-<frac|1|2>=0>, die wir wieder halbieren und
    addieren (<reference|f8>)-mal <math|d> dazu. Das Ergebnis lautet <math|-d
    f+f<rsup|2>-g<rsup|2>+<frac|1|4>=0>. Als letzten Schritt addieren wir
    noch (<reference|f8>)-mal <math|f> dazu, und voilà, wir erhalten das
    Resultat <math|-g<rsup|2>+<frac|1|4>=0>, welches der gesuchte
    Zusammenhang ist!
  </enumerate>

  In der obigen Berechnung haben wir alles mechanisch gemacht, um zu zeigen,
  dass diese Methode computerisiert werden kann. Das bedeutet natürlich
  nicht, dass die obige Methode die schnellste oder gar die eleganteste ist.
  Es gibt viel einfachere und zweckmäÿigere Methoden, um den gesuchten
  geometrischen Inhalt nachzuweisen. Hier wollten wir aber gerade zeigen,
  dass man für eine mechanische End-to-End-Berechnung keine Idee braucht,
  sondern nur, welche der verfügbaren Gleichungen am besten geeignet ist, um
  relativ schnell zum Ziel zu kommen. Denn, und das kann theoretisch bewiesen
  werden, die Herleitung wird früher oder später ihr Ziel erreichen, egal wie
  ungeschickt wir sind. Dies ist das Thema von Bruno Buchbergers Dissertation
  <cite|buchbergerPhd> aus dem Jahr 1965, die den aus Innsbruck stammenden
  und heute im Raum Linz tätigen Mathematiker zu Recht weltberühmt gemacht
  hat.

  Buchbergers Methode kann auch so zusammengefasst werden, dass jede
  Polynomgleichung, die durch ein System von Polynomgleichungen impliziert
  wird, tatsächlich hergeleitet werden kann. Für die verborgene Wahrheit gibt
  es also einen Beweis. Mit anderen Worten: In der Welt der Polynomsysteme
  kann jede wahre Aussage bewiesen werden. Das Buchberger-Herleitungssystem
  ist also <with|font-shape|italic|vollständig>.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Stimmt es, dass die beiden Buchberger-Umschreibregeln durch
    <with|font-shape|italic|eine> ersetzt werden können:
    <math|\<vartriangle\>,p=0,q=0\<longrightarrow\>\<vartriangle\>,p=0,q=0,p\<cdot\>r-
    q\<cdot\> s=0>? Nehmen wir an, dass auch <math|r> und <math|s> Polynome
    sind.

    <item>Als \RNebenprodukt\P der obigen Herleitung haben wir auch gesehen,
    dass die Strecke <math|D E> parallel zur Seite <math|A B> ist. Woher
    kommt das?

    <item>Wie lassen sich Aussagen über die Länge und Parallelität der
    Mittellinie eines Dreiecks mit rein geometrischen Mitteln beweisen?
  </enumerate>

  <section|Ohne Grundmenge>

  In diesem letzten Kapitel vergessen wir, dass wir die reellen Zahlen als
  Grundmenge genommen haben, und gehen nun von keiner Grundmenge aus.

  Wir haben bereits gesehen, dass wir in solchen Fällen mit bestimmten
  Konzepten nicht wirklich etwas anfangen können. Zum Beispiel macht die
  Vorstellung, dass eine Zahl eine Primzahl ist, keinen Sinn mehr, weil es
  Primzahlen <with|font-shape|italic|gibt>, wenn man die natürlichen Zahlen
  als Grundmenge nimmt, und es gibt <with|font-shape|italic|keine>
  Primzahlen, wenn man die reellen Zahlen als Grundmenge nimmt.

  Es ist jedoch möglich, Definitionen zu geben, bei denen es keine Rolle
  spielt, was die Grundmenge ist. Wenn wir zum Beispiel annehmen, dass auf
  einer bestimmten, nicht spezifizierten Grundmenge eine undefinierte
  Operation \<star\> auf zwei Elementen ein drittes Element aus zwei
  Elementen erzeugt, dann können wir Aussagen über diese Operation machen.
  Zum Beispiel, dass sie kommutativ ist: <math|\<forall\>a
  <around*|(|\<forall\>b <around*|(|a\<star\>b=b\<star\>a|)>|)>>.

  Wir sagen weder, was die Grundmenge ist, noch was die \<star\>-Operation
  ist. Wir können sagen, dass wir an <with|font-shape|italic|allen> denkbaren
  Grundmengen und allen kommutativen Operationen
  <with|font-shape|italic|gleichzeitig> interessiert sind. Ein ehrgeiziger
  Plan, aber wir sollten es wagen, groÿ zu träumen!

  Nennen wir die obige Kommutativregel Axiom 1 (nur für dieses spezielle
  Beispiel), d.h.<abbr|> A1. Führen wir auÿerdem das Axiom 2 (bezeichnet als
  A2) ein, das die folgende Aussage über dieselbe Operation macht:
  <math|\<exists\>e <around*|(|\<forall\>a <around*|(|a\<star\>e=a|)>|)>>.
  Dies bedeutet in einfacher Sprache, dass es ein
  <with|font-shape|italic|rechtsneutrales Element> gibt.

  Wir können nun die faszinierende Frage stellen, welche allgemeinen
  Konsequenzen der Axiome A1 und A2 auftauchen, wenn wir also eine Grundmenge
  und eine bivariate Operation wählen, für die A1 und A2 gelten. Im
  Fachjargon werden die feste Grundmenge und die Operation auch als
  <with|font-shape|italic|Modelle> bezeichnet -- man könnte auch fragen,
  welches die Modelle der Axiome A1 und A2 sind.

  Einige dieser Modelle sind aufgeführt, und der Leser kann nach weiteren
  suchen:

  <\enumerate>
    <item><math|<around*|(|\<bbb-Z\>;+|)>>, d.h.<abbr| >die
    <math|\<star\>>-Operation ist die übliche Addition. Es ist bekannt, dass
    es kommutativ ist. Auÿerdem ist es wahr, dass es ein rechtsneutrales
    Element gibt, nämlich 0. In dieser <with|font-shape|italic|algebraischen
    Struktur> gelten also A1 und A2, d.h.<abbr|> <math|(\<bbb-Z\>;+)> ist ein
    Modell der Axiome A1 und A2.

    <item><math|<around*|(|\<bbb-Z\>;\<cdot\>|)>>. Nun heiÿt die
    <math|\<star\>>-Operation die übliche Multiplikation. Es ist wieder
    bekannt, dass es kommutativ ist. Da gibt es wieder ein rechtsneutrales
    Element, nämlich 1. Auch dies ist ein geeignetes Modell.

    <item><math|<around*|(|\<bbb-R\>;\<cdot\>|)>>. Die \<star\>-Operation ist
    wieder die übliche Multiplikation, wie im vorherigen Modell.
    Offensichtlich ist auch dies ein geeignetes Modell, obwohl die Grundmenge
    eine andere ist als die vorherige.
  </enumerate>

  Wir möchten Eigenschaften entdecken, die definitiv vorhanden sind, wenn die
  Axiome A1 und A2 erfüllt sind. Zum Beispiel ist es eine gute Frage, ob es
  auch ein <with|font-shape|italic|linksneutrales> Element gibt oder ob diese
  Eigenschaft unabhängig von den Axiomen A1 und A2 ist. Wir bezeichnen die
  betreffende Eigenschaft mit S1: <math|\<exists\>f <around*|(|\<forall\>a
  <around*|(|f\<star\>a=a|)>|)>>. Es lässt sich schnell begründen, dass diese
  Eigenschaft in den drei obigen Modellen immer gilt, und auÿerdem werden die
  rechts- und linksneutralen Elemente übereinstimmen. Auf der Grundlage
  dieser Ergebnisse können wir jedoch nicht sicher sein, dass, wenn wir ein
  viertes Modell finden würden, es ein linksneutrales Element gäbe und dass
  es dasselbe wäre wie das rechtsneutrale Element. Wir werden auf diese Frage
  zurückkommen.

  Betrachten wir eine weitere Eigenschaft, S2: <math|\<exists\>n
  <around*|(|\<forall\>a <around|(|a\<star\>n=n|)>|)>>. Das bedeutet, dass es
  ein Element <math|n> gibt, das sich wie ein Nullelement verhält,
  d.h.<abbr|> wenn es mit einem anderen Element eine Operation eingeht, wird
  es \Rnull\P. Bei den drei oben genannten Modellen ist dies beim ersten
  Modell <math|(\<bbb-Z\>;+)> nicht der Fall, bei den beiden anderen hingegen
  schon. Daraus ergibt sich, dass S2 nicht aus den Axiomen A1 und A2 folgt.

  Wenn wir weitere Experimente durchführen, werden wir feststellen, dass die
  Eigenschaft S1 immer vorhanden ist, wenn wir die Axiome A1 und A2 annehmen.
  Auÿerdem kann die Eigenschaft S1 aus A1 und A2 hergeleitet werden, wenn
  bestimmte richtige Herleitungsregeln gelten. Zum Beispiel wie folgt:

  <\enumerate>
    <item>Laut A2 gibt es ein Element <math|e<rprime|'>>, so dass für alle
    <math|a> <math|a\<star\>e<rprime|'>=a> gilt.

    <item>Laut A1 können wir <math|e<rprime|'>\<star\>a> statt
    <math|a\<star\>e<rprime|'>> schreiben.

    <item>Also gilt <math|\<forall\>a <around*|(|e<rprime|'>\<star\>a=a|)>>.

    <item>So gibt es ein <math|f> (nämlich <math|e<rprime|'>>), so dass
    <math|\<forall\>a <around*|(|f\<star\>a=a|)>>, also gilt
    <math|\<exists\>f <around*|(|\<forall\>a <around*|(|f\<star\>a=a|)>|)>>.
  </enumerate>

  Dieser Beweis kann vollständig formalisiert werden, d.h.<abbr|> er kann
  mechanisch unter Verwendung bestimmter Herleitungsregeln konstruiert
  werden.

  An dieser Stelle unterscheiden wir zwischen mechanisch ableitbaren
  Aussagen, die aus Axiomen mit Hilfe eines vordefinierten Systems von
  Herleitungsregeln bewiesen werden können. Solche herleitbaren Aussagen
  werden in allen Modellen wahr sein, da wir sicherstellen, dass das feste
  Herleitungsregelsystem nicht schummelt, d.h.<abbr|> dass es nur korrekte
  Aussagen erzeugt. Wir können uns also zurücklehnen: Alle unsere
  herleitbaren Aussagen werden in allen Modellen wahr sein.

  Die Frage kann auch umgekehrt gestellt werden. Angenommen, es gibt eine
  Eigenschaft S3, die wir in ein paar Modellen testen, in denen A1 und A2
  gelten, und wir vermuten deswegen, dass sie immer wahr ist. Wir können
  möglicherweise nicht jedes Modell ausprobieren, bei dem A1 und A2
  zutreffen, und prüfen, ob S3 zutrifft, da wir möglicherweise eine
  unendliche Anzahl von wesentlich unterschiedlichen Modellen testen müssen.
  Kann man beweisen, dass S3 immer auftritt, wenn A1 und A2 beide vorhanden
  sind?

  Die Antwort auf diese Frage lautet ja, wenn wir in der Logik erster Stufe
  denken, d.h.<abbr|> wenn wir unsere üblichen zwei Quantoren, das
  Gleichheitszeichen, Prädikate und Klammern in der üblichen Weise verwenden.
  Wir können immer noch keine Grundmenge festlegen. Nun, S3 kann in diesem
  Fall immer bewiesen werden, und der Weg zum Beweis ist die Herleitung. Für
  die Herleitung können wir A1 und A2 und die üblichen Herleitungsschritte
  verwenden, wie in den 4 Schritten oben.

  Diese bejahende Antwort kann auch als <with|font-shape|italic|Gödelscher
  Vollständigkeitssatz><index|Gödelscher Vollständigkeitssatz> bezeichnet
  werden. Sie besagt, dass eine Aussage in der Logik erster Stufe in allen
  Modellen der Logik genau dann wahr ist, wenn sie herleitbar ist. Wir können
  auch sagen, dass die Logik erster Stufe
  <with|font-shape|italic|vollständig> ist.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Beweisen Sie durch reelle Quantorenelimination, dass die
    Eigenschaft S2 im Modell <math|(\<bbb-R\>;\<cdot\> )> erfüllt ist, nicht
    aber in <math|(\<bbb-R\>;+)>.

    <item>Abbildung <reference|aris-godel1-latex> zeigt unsere obige
    Herleitung in einer Form, die im Programm Aris eingetippt wurde.
    Ermitteln Sie, welche Zeile welchem Schritt unserer Herleitung
    entspricht. Lassen Sie sich auch Ihre eigene Aris-Datei auf der Grundlage
    der Tabelle erstellen und überprüfen, ob die Herleitung korrekt ist.

    <\big-figure|<image|Godel1.png|40%|||>>
      <label|aris-godel1-latex>
    </big-figure>

    <item>Beweisen Sie, dass die Axiome A1 und A2 implizieren, dass das
    rechtsneutrale Element in der Aussage A2 dasselbe sein muss wie das
    linksneutrale Element in S1.
  </enumerate>

  <chapter|Logiken höherer Stufen>

  In den beiden vorangegangenen Kapiteln haben wir uns -- hauptsächlich --
  mit der Logik nullter und erster Stufe beschäftigt. Wir haben erwähnt, dass
  das Hilbert-Kalkül korrekt und vollständig ist, ebenso wie die
  Buchberger-Herleitungen und die gesamte Logik erster Stufe im Allgemeinen.
  Es ist legitim, sich zu fragen, ob wir immer so viel Glück haben, oder
  sollten wir generell pessimistisch sein?

  Zu Beginn des 20.<abbr|> Jahrhunderts herrschte unter den Mathematikern
  eine euphorische Stimmung. Die formale Darstellung mathematischer Inhalte
  hatte ein solches Niveau erreicht, dass ein Groÿteil der Mathematik jener
  Zeit (und davor) formal in Form von Mengenlehre und Logik beschrieben
  werden konnte. Dies hatte mehrere Vorteile. Erstens wurde die Mathematik zu
  einer wirklich internationalen Wissenschaft, in der Sprachbarrieren kein
  Problem mehr darstellten, da mathematische Formeln in allen Sprachen
  dasselbe bedeuteten. Andererseits wurden durch die Formalisierung einige
  vage oder unpräzise Ideen konkreter. Es gab auch die berechtigte Forderung
  nach einer vollständigen Formalisierung der Beweise.

  Die Formalisierung von Beweisen ist nicht nur in der Mathematik, sondern
  auch in anderen Wissenschaften wichtig. Zum Beispiel in der Philosophie
  oder Theologie. Wenn man jemanden überzeugen will, dass man Recht hat,
  versucht man alles mit Argumenten zu beweisen. Es ist also keine emotionale
  Entscheidung, wer Recht hat, sondern eine Entscheidung, die auf Fakten
  beruht. Wenn wir uns auf unsere grundlegenden Axiome und Herleitungsregeln
  einigen können, haben wir natürlich eine bessere Chance zu entscheiden, ob
  die Behauptungen des zu prüfenden Systems wahr sind oder nicht. Wie wir
  bereits gesehen haben, sind Buchberger-Herleitungen und Logiken erster
  Stufe so: Jeder Satz, der in ihnen vorkommt, ist entweder wahr oder nicht,
  und wenn er wahr ist, kann er in jedem Fall hergeleitet werden. (Wenn er
  falsch ist, kann seine Negation hergeleitet werden.) Wir können
  legitimerweise fragen, ob wahre Sätze in jedem System hergeleitet werden
  können. Wir werden später noch ausführlich darauf zurückkommen.

  Zunächst ist jedoch anzumerken, dass sich die Formalisierung der Beweise
  viel schwieriger gestaltete als erwartet. Die Formalisierung einiger
  Bereiche (wie der elementaren Mengenlehre) war einfach, während andere
  Bereiche, wie die Geometrie, viel langsamer waren. (Erst 1983 wurde ein
  Werk <cite|Tarski1983> veröffentlicht, das eine vollständige Formalisierung
  der ebenen Geometrie enthielt.) Ein Grund für die Schwierigkeiten liegt
  darin, dass der menschliche Geist und das menschliche Denken viel komplexer
  sind, als wir vielleicht denken. Selbst die präzise Formalisierung sehr
  einfacher Denkprozesse erfordert einen groÿen Apparat: Das haben wir schon
  mehrfach gesehen. Während wir in der menschlichen Sprache einen Beweis in
  ein paar Sätzen formulieren können, können wir formal seitenlang
  argumentieren.

  <section|Maschinelle Beweise>

  Eine maschinelle Herleitung ist schwer zu vermeiden, zumindest in einem
  groÿen Teil der Fachbereiche. Das mag für die neue Generation
  selbstverständlich sein, für die ältere Generation ist es oft eher
  irritierend: eine Veränderung, die nur schwer zu akzeptieren ist. Mit der
  Verbreitung von Computern wurden zunehmend maschinelle Beweise erstellt,
  die von zeitgenössischen Mathematikern mit gemischten Gefühlen aufgenommen
  wurden.

  Einer der ersten derartigen Beweise war der
  Vier-Farben-Satz-Beweis<index|Vier-Farben-Satz> (1976,
  <cite|AppelHaken77>), der so viele Fälle analysierte, dass es unmöglich
  war, ihn mit menschlichem Einsatz zu überprüfen. Der erste Nachweis wurde
  von Appel und Haken erbracht: Sie analysierten 1834 Fälle, konnten diese
  Zahl aber später auf 1482 reduzieren. Mit einer anderen Methode (1996,
  <cite|Robertson1997>) wurde diese Zahl schlieÿlich auf 633 reduziert.
  Allerdings haben die Analysten in früheren Versionen des Computerprogramms
  mehrere Fehler gefunden. Dies veranlasste die Forscher, maschinelle Beweise
  in einer neuen Computersprache zu formulieren, die speziell zur
  Beschreibung mathematischer Systeme und zur Formalisierung von Beweisen
  entwickelt wurde. So wurde 2005 ein maschineller Beweis für den
  Vier-Farben-Satz in der Programmiersprache
  <with|font-shape|italic|Coq><index|Coq> geschrieben <cite|Gonthier2008>,
  der die Behauptung mit einem angemessenen Maÿ an Vertrauen für einen
  erheblichen Teil der Forscher bewies.

  Ein weiteres wichtiges Beispiel ist die Überprüfung der Keplerschen
  Vermutung<index|Keplersche Vermutung>. Dabei handelte es sich um einen
  Nachweis von rund 5000 Fällen, der 1992 vom Projektleiter Hales
  veröffentlicht wurde. Die vollständige Analyse dauerte mehrere Jahre, wobei
  ein Computerprogramm verwendet wurde. 1998 war sie mit etwa 250 Seiten
  Notizen vollständig abgeschlossen. Aber die Ergebnisse wurden von der
  mathematischen Gemeinschaft mit Skepsis aufgenommen. Das ist verständlich,
  denn wie kann eine so groÿe Datenmenge überprüft werden? Deshalb war Hales
  entschlossen, seine Beweise in einer Form zu erstellen, die sicher per
  Computer überprüft werden konnte. Zu diesem Zweck wählte er eine
  Kombination aus den Programmen <with|font-shape|italic|HOL Light><index|HOL
  Light> und <with|font-shape|italic|Isabelle><index|Isabelle> und stellte
  ein ganzes Forschungsteam zusammen, um den Beweis (und seine Überprüfung)
  zu mechanisieren. Das Projekt wurde 2015 mit dem Maschinennachweis
  abgeschlossen <cite|Hales2015>, der von unabhängigen Gutachtern begutachtet
  wurde, bevor die Arbeit 2017 öffentlich veröffentlicht werden konnte.

  Der Leser fragt sich zu Recht, ob Computerprogramme zu 100 % sicher sind.
  Auch die beste Software ist manchmal fehlerhaft. Und in der Tat können die
  oben erwähnten Prüfsysteme falsch sein, wenn sie schlecht konzipiert sind.
  Wenn sie jedoch fehlerfrei sind (und das ist theoretisch möglich), dann
  muss -- fehlerfreie Hardware vorausgesetzt -- der Maschinenbeweis korrekt
  sein.

  Das mag für die ältere Generation nicht das Problem sein. Es geht vielmehr
  darum, dass mathematisches Denken eine kreative Sache bleiben und nicht
  mechanisch werden sollte. Was für ein Beweis ist es, zu überprüfen, dass
  alle geraden positiven Zahlen kleiner als 1000 auf 0, 2, 4, 6 oder 8 enden,
  indem man alle 1000 Fälle ausprobiert? Er ist in keiner Weise elegant.

  Bei den maschinellen Beweisen des Vier-Farben-Satzes und der Keplerschen
  Vermutung geht es jedoch nicht in erster Linie um Eleganz, sondern darum,
  dass die menschliche Bearbeitung hoffnungslos langwierig wäre. Wer würde
  sich nicht freuen, wenn es einen geschickten Beweis für diese Theoreme
  gäbe, der den Einsatz von Computern überflüssig machen würde? Aber der
  Punkt ist, dass diese Behauptungen, soweit wir derzeit wissen, eine so
  komplexe Analyse erfordern, dass wir nicht die Mittel haben, sie mit
  menschlichen Kräften zu überprüfen.

  Es gibt jedoch auch Theoreme, für die es einen menschlichen, \Rlesbaren\P
  Beweis gibt, und es gibt auch einen maschinellen, \Runlesbaren\P Beweis. In
  der Regel handelt es sich dabei um geometrische Beweise, die entweder durch
  die Buchberger-Herleitung oder durch die CAD-Methode verifiziert werden.
  Warum sollte man das tun, wenn es eine elegante Methode gibt? Wozu brauchen
  wir dann einen Computer? Erstens, weil wir manchmal nicht daran
  interessiert sind, wie der Beweis erbracht wird, sondern nur daran, ob die
  Aussage wahr ist oder nicht. Und wir können uns des Wahrheitsgehalts einer
  Behauptung nicht absolut sicher sein, wenn wir nicht irgendeinen
  verifizierten Beweis in der Hand haben. Wir akzeptieren daher einen
  maschinellen Beweis, auch wenn wir ihn nicht in einer Schulklasse
  vorführen, denn er würde bei Laien mehr Fragen aufwerfen, als dass er ihnen
  etwas nützen würde. Andererseits kann ein maschineller Beweis Details
  offenbaren, an die wir vorher nicht gedacht haben: zum Beispiel, dass die
  zu beweisende Aussage nur unter besonderen Bedingungen wahr ist, zum
  Beispiel, wenn unser Dreieck nicht entartet ist.

  Es gibt noch eine weitere wichtige Anwendung des maschinellen Beweises,
  nämlich die Überprüfung von neu erstellten mathematischen Ergebnissen.
  Jedes Jahr werden Hunderttausende von neuen mathematischen Arbeiten
  verfasst (siehe Abbildung <reference|100000>), und viele davon werden nicht
  auf dem Niveau überprüft, das man aus wissenschaftlicher Sicht erwarten
  würde. Warum? Der Autor wird durch den täglichen Stress und Leistungsdruck
  daran gehindert, ein perfektes Werk abzuliefern; auch der Korrektor steht
  unter Zeitdruck -- und oft auch unter Kompetenzdruck. Die Folge: schlampig
  formulierte Aussagen, unvollständige Argumente, falsche Formulierungen,
  Ungenauigkeiten. Und das ist das beste Szenario. Es gibt auch den Fall,
  dass jemand aus Versehen oder mit Absicht ein bereits bekanntes Ergebnis
  veröffentlicht. Wenn es ein System gäbe, das automatisch prüfen könnte, ob
  die Hauptaussagen der Veröffentlichung korrekt sind, oder sogar eine
  Datenbank abfragen könnte, um zu sehen, ob die fraglichen Theoreme der
  mathematischen Gemeinschaft bereits bekannt sind, könnte der Prozess der
  wissenschaftlichen Kommunikation viel besser sein!

  <\big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D49484452000005A6000002D2080600000026F306CB00000C19694343504943432050726F66696C6500004889955707545349179E575208492881084809BD09D2ABF41A41403AD808498050420804153BB2A8E0DAC582155D15B1AD0590454544B1B008F6BE41454559170B3654FE4902E8BA7F39FF3D67DEFBDE9D7BEF7CF7CECC3B3300A8387144A26C5415801C6181383AC49F959894CC2249010250A0099C8121879B2FF28B8A0A075086DF7F977737A03594AB36B258FFECFFAFA2C6E3E7730140A2204EE5E57373203E0A00AEC315890B00207440BDF1F402910CBF8558430C09024024CB70BA02EBCA70AA02DBC96D62A303200E04804CE570C4E900D065F15985DC7418872E82D84EC8130821DE06B1373783C383580AF1989C9C5C8855A8105BA47E1727FD6F315347627238E92358918B5CC881827C513667E6FF598EFF2D39D992E1318C60A3668843A36539C3BAEDC9CA0D9361C81D6914A6464442AC0EF179014F6E2FC3773224A17143F6BDDCFC005833C00470B2799CC03088612D51A6242BCE6F083B70C4725F688F46080AD8B14338559C1B3D141F2D146647840FC5599CC1670FE32DFCFCA098619B3441301B62B8D2D0A34519B1090A9E684BA1203E02623AC41DF959316143BE0F8A320222866DC4926819671388DFA68983A3153698564EFE705E982D97231F4B0B62DF828CD850852F96C8CF4F0C1FE6C0E307062938603CBE306E881B0657977FF4906FA9283B6AC81EDBC2CF0E8956D4193B945F1833EC7BA5002E30451DB087999CF1510AFED83B514154AC821B8E8370100002010B48604B05B9201308DA7BEB7AE197A22718708018A4033EB019D20C7B24C87B84F019038AC09F10F141FE889FBFBC970F0AA1FECB8856F1B40169F2DE42B947167802710EAE837BE39E78387CFAC2E680BBE1EEC37E2C95E1518941C440622831986839C2830B5967C32606827FA30B836F3ECC4EC645389CC3B7788427844EC243C2758294701BC483C7F2284356D304C5E21F98B3C0042085D18287B24B85317B866D7033C8DA19F7C7BD207FC81D67E23AC006778299F8E13E303767A8FD9EA16484DBB75AFE389E8CF5F7F90CE9E95674E72116A92333133062F5639480EF6AC483EFB01F2DB1C5D811AC153B8D5DC01AB13AC0C24E61F5581B7642864756C263F94A181E2D5ACE2D0BC6110CDBD8D5D8F5D87DFEC7E89C210662F97C8302FE8C02D98608C815CD140BD2330A587EF08FCC67B1855CDB312C073B7B170064FF77C5EFE30D53FEDF469817BFE9F29A00702F83CAF46F3A8E3100C79F00C078F74D67FC1A6EAF15009CE8E04AC4850A1D2E7B100005A8C09DA10DF48131B08039390017E0097C4110180F22412C48025361D533400E643D1DCC060B402928072BC05AB0116C053BC01EB01F1C0675A0119C06E7C025D001AE83BB706D748317A00FBC0303088290101AC240B41103C414B1461C1037C41B0942C2916824094941D21121224166230B91726415B211D98E5423BF22C791D3C805A413B98D74213DC86BE4138AA1545403D543CDD0B1A81BEA8786A1B1E814341DCD438BD0127419BA1EAD42F7A1B5E869F4127A1D95A22FD07E0C60CA181333C46C30372C008BC492B1344C8CCDC5CAB00AAC0A3B8035C0B9BE8A49B15EEC234EC419380BB781EB33148FC3B9781E3E175F8A6FC4F7E0B5780B7E15EFC2FBF0AF041A4197604DF020B009898474C2744229A182B08B708C7016EE9D6EC23B2291C8249A135DE1DE4C2266126711971237130F129B889DC447C47E1289A44DB226799122491C5201A994B481B48F748A7485D44DFA4056261B901DC8C1E464B2905C4CAE20EF259F245F213F250F28A92A992A7928452AF194662A2D57DAA9D4A07459A95B6980A24631A77851622999940594F5940394B3947B9437CACACA46CAEECA139505CAF395D72B1F523EAFDCA5FC91AA4EB5A20650275325D465D4DDD426EA6DEA1B1A8D6646F3A525D30A68CB68D5B433B407B40F7406DD96CEA6F3E8F3E895F45AFA15FA4B15251553153F95A92A452A152A47542EABF4AA2AA99AA906A87254E7AA56AA1E57BDA9DAAFC650B3578B54CB515BAAB657ED82DA337592BA997A903A4FBD447D87FA19F5470C8C61CC086070190B193B196719DD1A440D730DB646A646B9C67E8D768D3E4D754D27CD78CD199A959A2734A54C8C69C66433B399CB99879937989F46E98DF21BC51FB564D481515746BDD71AADE5ABC5D72AD33AA8755DEB93364B3B483B4B7BA5769DF67D1D5CC74A67A2CE749D2D3A67757A476B8CF61CCD1D5D36FAF0E83BBAA8AE956EB4EE2CDD1DBA6DBAFD7AFA7A217A22BD0D7A67F47AF599FABEFA99FA6BF44FEAF718300CBC0D04066B0C4E193C6769B2FC58D9ACF5AC16569FA1AE61A8A1C470BB61BBE18091B9519C51B1D141A3FBC6146337E334E335C6CDC67D260626134C669BD498DC3155327533CD305D67DA6AFADECCDC2CC16C91599DD933732D73B67991798DF93D0B9A858F459E4595C5354BA2A59B6596E566CB0E2BD4CAD92AC3AAD2EAB2356AED622DB0DE6CDD398630C67D8C704CD5989B36541B3F9B429B1A9B2E5BA66DB86DB16D9DEDCBB1266393C7AE1CDB3AF6AB9DB35DB6DD4EBBBBF6EAF6E3ED8BED1BEC5F3B5839701D2A1DAE39D21C831DE739D63BBE72B276E23B6D71BAE5CC709EE0BCC8B9D9F98B8BAB8BD8E5804B8FAB896B8AEB26D79B6E1A6E516E4BDDCEBB13DCFDDDE7B937BA7FF470F128F038ECF197A78D6796E75ECF67E3CCC7F1C7ED1CF7C8CBC88BE3B5DD4BEACDF24EF1DEE62DF531F4E1F854F93CF435F6E5F9EEF27DEA67E997E9B7CFEFA5BF9DBFD8FF98FFFB008F8039014D815860486059607B907A505CD0C6A007C146C1E9C135C17D21CE21B3429A4209A161A12B436FB2F5D85C7635BB6FBCEBF839E35BC2A86131611BC31E865B858BC31B26A013C64F583DE15E84698430A22E1244B2235747DE8F328FCA8BFA6D227162D4C4CA894FA2EDA36747B7C63062A6C5EC8D7917EB1FBB3CF66E9C459C24AE395E257E727C75FCFB84C0845509D2C4B18973122F25E9240992EA9349C9F1C9BB92FB27054D5A3BA97BB2F3E4D2C937A6984F9931E5C2549DA9D9534F4C5399C699762485909290B237E533279253C5E94F65A76E4AEDE30670D7715FF07C796B783D7C2FFE2AFED334AFB45569CFD2BDD257A7F764F8645464F40A02041B05AF324333B766BECF8ACCDA9D35989D907D30879C9392735CA82ECC12B6E4EAE7CEC8ED14598B4A45D23C8FBCB5797DE230F1AE7C247F4A7E7D81063CEAB4492C243F49BA0ABD0B2B0B3F4C8F9F7E6486DA0CE18CB699563397CC7C5A145CF4CB2C7C167756F36CC3D90B6677CDF19BB37D2E3237756EF33CE37925F3BAE787CCDFB380B2206BC1EFC576C5AB8ADF2E4C58D850A25732BFE4D14F213FD594D24BC5A53717792EDABA185F2C58DCBEC471C986255FCB786517CBEDCA2BCA3F2FE52EBDF8B3FDCFEB7F1E5C96B6AC7DB9CBF22D2B882B842B6EACF459B96795DAAAA2558F564F585DBB86B5A66CCDDBB5D3D65EA870AAD8BA8EB24EB24EBA3E7C7DFD06930D2B367CDE98B1F17AA57FE5C14DBA9B966C7ABF99B7F9CA16DF2D07B6EA6D2DDFFA699B60DBADED21DB6BABCCAA2A76107714EE78B2337E67EB2F6EBF54EFD2D955BEEBCB6EE16EE99EE83D2DD5AED5D57B75F72EAF416B24353DFB26EFEBD81FB8BFFE80CD81ED079907CB0F81439243CF7F4DF9F5C6E1B0C3CD47DC8E1C386A7A74D331C6B1B25AA476666D5F5D469DB43EA9BEF3F8F8E3CD0D9E0DC77EB3FD6D77A36163E509CD13CB4F524E969C1C3C5574AABF49D4D47B3AFDF4A3E669CD77CF249EB9D632B1A5FD6CD8D9F3E782CF9D69F56B3D75DEEB7CE3058F0BC72FBA5DACBBE472A9B6CDB9EDD8EFCEBF1F6B7769AFBDEC7AB9BEC3BDA3A1735CE7C92B3E574E5F0DBC7AEE1AFBDAA5EB11D73B6FC4DDB87573F24DE92DDEAD67B7B36FBFBA537867E0EEFC7B847B65F755EF573CD07D50F587E51F07A52ED2135D815D6D0F631EDE7DC47DF4E271FEE3CFDD254F684F2A9E1A3CAD7EE6F0ACB127B8A7E3F9A4E7DD2F442F067A4BFF54FB73D34B8B9747FFF2FDABAD2FB1AFFB95F8D5E0EBA56FB4DFEC7EEBF4B6B93FAAFFC1BB9C7703EFCB3E687FD8F3D1ED63EBA7844F4F07A67F267D5EFFC5F24BC3D7B0AFF706730607451C31477E14C06043D3D20078BD1B005A123C3BC07B1C85AEB87FC90551DC19E508FC27ACB8A3C9059E5C76FB0210371F80707846D9029B29C454F8961DBF637D01EAE838D286243FCDD141118B0A6F31840F83836FF400203500F0453C3838B07970F0CB4E48F636004D798A7B9F4C88F08CBF4D5B86DA6E124BC00FF22F62386CF589A0F6D10000000970485973000016250000162501495224F00000019E69545874584D4C3A636F6D2E61646F62652E786D7000000000003C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D22584D5020436F726520352E342E30223E0A2020203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E0A2020202020203C7264663A4465736372697074696F6E207264663A61626F75743D22220A202020202020202020202020786D6C6E733A657869663D22687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F223E0A2020202020202020203C657869663A506978656C5844696D656E73696F6E3E313434363C2F657869663A506978656C5844696D656E73696F6E3E0A2020202020202020203C657869663A506978656C5944696D656E73696F6E3E3732323C2F657869663A506978656C5944696D656E73696F6E3E0A2020202020203C2F7264663A4465736372697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D6574613E0A6CA734070000001C69444F540000000200000000000001690000002800000169000001690000AE25FDF00D5F00004000494441547801ECDD0B985D7595E7FD959084104C003183D088DCA236DD74C08EF4E3383308E24B8FCF385CEC012F344E6323C4661050DFA6A5476861BC4237348F5CF595566845501B9C1E7D45088D333E728942B8A4B9A301422EA492AA4A2A75CB79F73A3BFFF3DB6BE754A536D9C97B2AE79BE791BDD6D9BB6A9FFAECF5AF1C7F1CF699D2C8FE187F1040000104104000010410400001041040000104104000010410D841025308A6779034A741000104104000010410400001041040000104104000010410680A104C3308082080000208208000020820800002082080000208208000023B5480607A87727332041040000104104000010410400001041040000104104000018269660001041040000104104000010410400001041040000104104060870A104CEF506E4E860002082080000208208000020820800002082080000208204030CD0C20800002082080000208208000020820800002082080000208EC500182E91DCACDC91040000104104000010410400001041040000104104000010408A69901041040000104104000010410400001041040000104104000811D2A4030BD43B9391902082080000208208000020820800002082080000208208000C1343380000208208000020820800002082080000208208000020820B0430508A67728372743000104104000010410400001041040000104104000010410209866061040000104104000010410400001041040000104104000010476A800C1F40EE5E6640820800002082080000208208000020820800002082080000204D3CC00020820800002082080000208208000020820800002082080C00E152098DEA1DC9C0C01041040000104104000010410400001041040000104104080609A1940000104104000010410400001041040000104104000010410D8A10204D33B949B9321800002082080000208208000020820800002082080000208104C3303082080000208208000020820800002082080000208208000023B54A0B383E99EDFDAFD8F2DB77D8FF8433B60F6B43160466CD5B3FF6ACFAD5EDFDC3F6B8FFDED77DFF63B36D6D17E50CFCBCFDAF3CB56DBB04DB73DDEF8263BF4CD73C73D7E8C139B6DECB1679F7EDE566FC8BED3F43DEC4DF30EB5B9633ECFFCBB543D77D5E3C77CAEEC4000010410400001041040000104104000010410400001043A44A08383E9B576D5B107DA798BD6D957EF5F6D9F3E6AEF2DC8865F7ED03E77DAB1F6A545FD61DF2E47FCB9FDF3ED57D8F187CC098F5BDF93F6E54F7CD82EBCF957E1F119C79E6B3FFFEEE576D4DCE9E1F1F19AA5775E61A79EF0197BD41AE1B00B6EFA857DF9A3EFDC32E8AE7AEEAAC787674183000208208000020820800002082080000208208000020874AE408706D3FD76DBF927DB2957DED594BB7AF16A3BE7EDA5607AE0713B6DF723EC96C648F398E9C77CC4FEEB9CC7EDC63B1ECEB5A71E6E3F59B6D88EDF2F85CDCBEDF3F3E7D9C54BF27756FBF1A766C7DFBCF9F8A9BB9D6B4FACB9D2DE3A73CA56AFD6CABBBF68FB1CF7D9D6794EFBF3F9F6C80DB7B442EA85FFF8B85DF3A1C30ADFA7EAB9AB1E5F3815250208208000020820800002082080000208208000020820D0E1021D174C8FACFAB57DE1D4A3EDE2457D76B84D6986BDED82E925DF3CC3E69FF1CD26EF65773E6E17BD3F0F825F5AFC5DFB8F0B3EDCFCBAB77FF69FEDFEFFF1BEE6BB975FFAF1E76CFFF75DDA3CFE829B1EB42B3EBAA0592FBDE30B76D8891735EB93AF7FD0BEFFF1FCF1E603EDFED1F8ADFDD5F4B7D89746076DDA11E7DA03F75C6E47EE9585DFD93B9C3F7FC23B9ACF7BCA8C0FDBE2D537DB91B3F390BBEAB9AB1EDFEE69F2180208208000020820800002082080000208208000020820D0A9021D144C8FD8E29B2EB4057F76C516566D83E9EBB2607AE137CDDFE9BC62C355F686D6578DD81DE7FF5B3BF1CA076DD7F7FC9D2DFFD979B697F5DB75271E600BEFE8B159277DC35EFDC11936B375BCD9DD9FFD233BEE8B0FD8D4D997D88BBD17DBBE857DE5B277F1D76D8F0567361FBEE1D1F576E6EFCF6A1DD278E92E9BBFFFF1CD50FCA29F2CB3CB8EDF3FDB57F5DC558F6F9D9E0201041040000104104000010410400001041040000104109814021D144CAFB56BB37B4A7F22BBA7F4945DDE6D577EFD24FBE119E7DBBD8D4DD62E985E7CDD29B660E16D3675F7BFB417FBBF5408930BC1F471D7D8F2BB16DA5E85DB7E5C70FB5376C507E6858BD3BBF89A2C6CFE8BE663DF7966837DF090DDC2FE62B3A410883FDD7B951D1C3E65513FC39CB36FB515D79E6233AB9E7BBFE75AB728D9D6E75A7CDED4082080000208208000020820800002082080000208208040A708745030DD6FB79C75B2FDF4D033EDD2B3FFC40E78DD1376DA2EF93DA4DB05D3CFDC768ECD3BE56B4DC7D3AFBFD7AEFFF8D1CD7741BF70DF8DF69F8F3EABF9AEE53FBCF45E7BE8AF8FB681676EB559F33ED83CF6EA5FADB5738EDC23FAF73E6C27ECB9C0EE6C8CB60DC175F046BBEDAC37DB2937ACB45DB3D07B55167ACFD6CE6695826BDFEFA1F8CC8AE7FED89C9FD5F45C4B4F6C1BDBD1D1515BBB76ADBDF0C20B36674EE94325B7F17B4FD62FDFB871A3CD9C597CEFFD64FD49EA79DE7844473CE481852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151ED163FFFDF7B7DD761BFB0DBDF1E809748D4EFDB3EED78D8F4C99D6C87E8446164CB77996AB1A379FF78EE67E3F267B9775E3983FC88FF77EC67B2E69FC6BEFA6E6D7AD7BE8C6E6717ECC3D2BF3C7C237DCB0B573A5A3FB1AD79EB057F37B1D77E9BDE9C1B07DE4DA3F6BEECF82E9466FB6A7EAB9AB1E1F4EBE1D9AA1A1A1C6CA952B1BCF3CF34C63D9B2658DC71E7B6C3B9C65727ECBA79E7A6A723EF1EDF4ACF188B078C8030B597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28103BE6431E58C8C22B3CB6AF4707BD63BA94A20F3C9CDDD2E21D764B63648C77316FB4FBAE3AC98E3EEF27A52FCC5BBF95C60BD9AD34F6CADAF48E69BF45C82F7BEEB1A3367F2861EB0BB77AAE74A4DE31FDDEAFFCC27EFA9977A61DAD6DF11DD3FE8EEA699BDF313DD173A7774C4FF4F873DEBE77EBDC7516C3C3C3F6EAABAF5A5F5F9FCD9E3DBBF92EE959B366D9D34F3F6DF3E6C55BA1D479DEC9F4BDB088570B0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AC48EF9900716B2F00A8FEDEC1173EF0EEAC67D17F370E3677F737CEBDDD2334FBCA471F7E2271ACF2CF979E3CAF38E6B3DFEBAD3BFDD7CD7F28627BED57C6CCAF4F737EEDFFC2EEAF0938E7BAEE2917D8D9B4F7B43F37BBDF7EF1F2CEE68D5E5774C573D77D5E35B27AEA958BF7E7D63F9F2E5CD7F23E45B7FC774F10FFFA6481A58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28103BE6431E58C8C22B3CB6AF87C56FDF41DD3861F1A6153F6D1C6E539A01F19CB3F2F0B9F8CCFFE5CA3F6985D3FFB0747DE5DB6914BF57AC752B8FF77E65FC5B79EC76D2E4BA954776CF9CE6AD3AFC961D7EEB8E72209D1C589049825F4E92C82B66238AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA240EC980F7960210BAFF0D8BE1E9332985EF7D0D75AC1F38F5E88EFE86D7265F7A7FECF5376691E73C1EDD97D80D73DD0EAB30F3F8CA2DE15F7B7BD9FB5BEE4A12BFF4BF3FBA67B486B4F5E15F7AFF1878ADF7B22E7AE7A7CF909647DF626FB6DFA5F9B6FD97A8805D9A2E09793289A15B31141F0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E512076CC873CB0908557786C5F8F491A4CE71F66E801EC8F5E6AF761868FB53E38F164BFE54621A85EE84175E9CFABFF724533C8F50F47FCF99A36DFAF70FC23D7E6C1F4D4DDCE6D3C3B5CD8D12C5735BE74CC9CE6F7CAEE419DEFAC7AEEAAC7979FC236F429D01EEF5BB020A583852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802B1633EE481852CBCC263FB7A4CCA607AE8F91FB4DE11BCF01F1F8F4259B7E191FC9ED21EB45E7DFFEAEC91BEC6FFB3F9DED0BBBEE7EF1ACD7732B7BE6AA0F1BD8FFF9BE6F79B76E4258D975B8FB72FD66DF1BD75DCD0D3DF6D3DAFCBEE59B67947D573573D5EE7DFD68A60BA9A20BF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD7635206D38D46F6CEE43F785D2B04FEEA8F9F680C6C765AB1E447ADDB76343FEC70F33BA057FCEC0BADE38FBBF4879BC3E981C6BF5CBBB0F5787C37F570E35FAEBAA071DA69A735CECA8EEF6D5D87971B97EC32B3F935FEFDEF5CFA6A73CF8697FE77E3CCA9D39B8F97DF4D5DF5DC558F6F3DB56D2C08A6AB01F2CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3DA6F8B7CF02C9CEFBD3FBB09DB0E702BBB3316A572F5E6DE7BC7DEFF01C0796FED0661D76B21E9B7AB81DF3FB4B6DD19291D66397FDE439BBE8F88336F7ABEDBA13DF620BEFE8C9FBECF8C3373D668F366FC76C3675F625F67CEFC57640EBABD7DAB5C71E689F58B4CEB2FB49DBF2BB16DA5E9BF7AD59FC75DB7BC199AD23E71F33DF1E59F448ABBF283BEF65ADF3FAC355CF5DF5F8D6A9B7A99832654AF3EBC71B89A79F7EDAE6CD9BB74DE7D959BE188B7825F1C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA240EC980F7960210BAFF0D8CE1E31F7EEA06EE8C9C627A7CE68BE03F986761F1A983DD581971E68FCCD696F6F1E9331B5B6D38F3DB371E792156D7E989EC63F7DFEA3ADE3D2D7BCE7FC6B1ACFF696EF2DEDB7F858D03C76D649DF28BC633AFFB6AF2EF97EEB3ED6E9FBF83DAAAFBFFBE936E7F587AA9CFBB51C3FC6692B3C9C7E8EF1BE847F53241D2C64E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD7A373DF319DA5A413FDB3B1E7655BB166383B7CC4A6CF79BDED3737BDB7B9FD77D8D8B32A3BBED76CDA349B35671F9BBBD7CCF6076EF5D18DB6EA372B2CFB4E366DFA2CDB67BFB9B6B5EF54F5DC558FDFEA531EE700DE313D0E4E9B5DFC5BB38882071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E0110562C77CC8030B597885C7F6F5D82982E94844F75A0508A6ABC9F1CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF2C042165EE1B17D3D08A6A36F577704D3D52E3FBF9CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF3210F2C64E1151EDBD783603AFA767547305DEDF2F3CB297AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF218CF626478AD8D8EF4EAE09DA49A3A75579BBEEB3E6D7F9AF13CDA7EC14EFE60DD1E04D33BF9C054F9F108A6AB68F1C2A6AC55F72FA7F2F79F6C3D1EBA6258C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311FF26867313CF4AABDBAFC47B6F2A59FD8D0D0900E9EE4D5E868C3FAD70FD9FE079D6C6F3DFC636D7F9A761E6D0FEC9207EBF62098EE92C199C88F49303D11251D53F762D4779E9C151EF1BAE1210F2C64E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA240EC980F79142D06FA9FB2D52FFF93AD5BF3A06D6A6CCADE2DDDB0D1511D3B59AB919111EBEDDB687D7D7D668D51FBDDF967D861479CDDF6C7297AB43DA0CB1EACDB8360BACB0668BC1F97607A3C9D2DF7D5BD18B73CC3E47A048F78BDF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E512076CC873CDCE277DE386C2B5FBCDD7AD73EA21D5935D983E9C1C1115BD7BBDE0636648174E10FC17401632B65DD6B85607A2BE0DDB49B60BADAD5AE7B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28103BE623F758BBEA5E7BE1A96FD9D4A9EB22D0E66EB206D3EBD7FBBBA37B6D70B0FD6D4808A6DB5EEEB60FD6BD5608A6DB3277E78304D3D5AE7BDD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311F662F3F7FBDBDFCC2B7B27B480FDB8C19D323D0E66E6412DECAA3AF7F93AD5FBFA9EDCF931EAC1A4C0F0DAEB415CBBE632B5EFC97F42D768AADDFE2C403FCF7FCE79FD8D45D66B6FD99EA5E2B04D36D99BBF34182E96AD7BDEEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA240EC980F82E989DC63BA7FDDA3CD0F815CD7B3B8394043838D384893B41B1E1EB275EBFAB2007FA0F9137CE0A30F8CF993D4BD5608A6C7A4EEBE1D04D3D5AE79DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784481D8311F04D3E305D3FBFE9B8DD93DB76FB5FEDEA56170267B30BD71E346EBEDEDB38181C1F073114C070E9A1D2540305D4D9ABFB8A2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714881DF34130DD2E98EE5979B7BDF0F4776D97A96BE2C06CEE266B30BD7EFD86EC961D7DD93DB787DBFE5C04D36D5978707B0B104C5713E62FAEE885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E0110562C77C104C9783E9C77EF9812CB87D75DC7B6E0F4EC25B79AC5C3964A3A3A37101943A82E91208ED8E112098AEE6CC5F5CD10B0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AC46EACF91819E9B781FEE7E3C13B413765EA2EF6BA3987859F840F3F3C3B783CB4E85DCD7E689C0F839C8CC1F42B2B46C2CFD9AE21986EA7C263DB5D8060BA1AF1587F7155FB2E3BCFD178C46B89873CB090855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802B12BCFC7681648AF5EFE235BF5D23FDBC68D1BE2C193B8DBB46993F5F7F5DBAEB30EB177BDF7FAF093104C134CA78120984E126C77A800C17435EEF25F5CD5BE7AE73B1A8F784DF1900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E512076693E860657DA8A65DFB19E55F7350F686C6AD870FBDBF0C66FD0E1DDE8E848F62177BDD97D853758A361F6867DE6DBD17F7C6378D604D304D3692008A69304DB1D2A40305D8D3BFDC555EDAB76DEA3F188D7160F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E0110562F7E4D25FDAACE9F7B702E9B477B207D3232323B6766DAFF987DD15FF104C1735CC7E77FE1956BEC734B7F28846A9ABFB77E99446F6277D73B6DD2D40305DEDFAD7BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714C8BBFE758FDACA176FB59ED58FD8F41933B63864B206D31B376ECCDE1DDD6F1B366CDCE267F20708A6230BC174F4E01DD3D1836E0709104C5783E6854DF4C2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802667D3D0FD9930F7FB2F9F0D0181F7097DD9239BB95C7E47A3FE7E050C37A7A46CB3F6EE809A60307EF988E1C46305D02A1DD310204D3D59C796113BDF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA200C134F798D644F08E69597845301D3DE8769000C17435685ED8442F3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840304D30AD89209896855704D3D1836E0709104C5783E6854DF4C2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF0880204D304D39A088269597845301D3DE8769000C17435685ED8442F3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840304D30AD89209896855704D3D1836E0709104C5783E6854DF4C2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF0880204D304D39A088269597845301D3DE8769000C17435685ED8442F3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840304D30AD89209896855704D3C9A3E7B776FF63CB6DDF23FED00E983D2D3DBAC5766376DC134F2DB761DF337D0F3B78DE5B6DEEEC295B1C971EE879F9597B7ED9EAECF8E9B6C71BDF6487BE79AE8DFDDDD357B5D96EECB1679F7EDE566FC8BE5376DE37CD3B343BEFF8DFA9EAB9AB1EDFE6594EF82182E90953350FE4854DF4C2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF0880204D304D39A08826959784530DDF4586B571D7BA09DB7689D7DF5FED5F6E9A3F68E4ACDAEDFEEFEFBFFDB8EFBE4B55BECBBE81F1FB44B3EB42006CE7D4FDA973FF161BBF0E65F85E3671C7BAEFDFCBB97DB5173A787C7C76B96DE79859D7AC267EC516B84C32EB8E917F6E58FBE339ED78FA87AEEAAC78767F1DA1A82E96A6EBCB0895E78E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E5180609A605A1341302D0BAF08A6ADDF6E3BFF643BE5CABB9A32572F5E6DE7BCBD1C4C67C79C75889D72C3CAE631537679B77DE4637BDACD37FC53B3F77F7CEACEE7ECF2F71FB4B95F6E9F9F3FCF2E5EB2BED94F3FE62376EA9CC7EDE63B1E6EF653773BD79E5873A5BD75E6D8EFB4DEFC8D6CE5DD5FB47D8EFB6CDE4E3DDC4EFBF3F9F6C80DB7B442EA85FFF8B85DF3A1C3D2E1D9B6EAB9AB1E5F38D5369404D3D5F0786113BDF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA200C134C1B42682605A165E7575303DB2EAD7F685538FB68B17F5D9E136A519F6B60BA6D7DCF7B7B6F7D19F6ACA1DF7D91FDAF7FEC789B657D68DAC7AD03EF1C677D98D9B866DEAEE7F694FAFFD921D9CDD5DE3A51F7FCEF67FDFA5CDE32FB8E941BBE2A30B9AF5D23BBE60879D7851B33EF9FA07EDFB1FCF1F6F3ED0EE1F8DDFDA5F4D7F8B7D6974D0A61D71AE3D70CFE576E45ED93BADB377387FFE8477349FF794191FB6C5AB6FB62337DF4EA4EAB9AB1EDFEE69BE96C708A6ABA9F1C2267AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784401826982694D04C1B42CBCEAD2607AC416DF74A12DF8B32BA246D66D194C6FB45BFEF44D76DACDAB6DDA9197D86F7F75B1ED5BF8AA95775F9CBDA3F9F3E6EFA2FE65CF3D76D4ECF576DD8907D8C23B7A6CD649DFB0577F7086CD2C1C7FF767FFC88EFBE2033675F625F6626FFC5E85C39A65EFE2AFDB1E0BCE6CD6373CBADECEFCFD59AD431A2FDD65F3F73FBE19A65FF4936576D9F1FB67FBFA2B9EBBEAF1ADD36F73B1B5607A7474D49E7BEE399B376FDE369F6B67F806BCB08957110F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230A104C134C6B2208A665E1559706D36BEDDAEC9ED29FC8EE29ED81F2955F3FC97E78C6F9766F63D396C1F4C0E376DAEE47D82D8D11FBEACFB3FB4FFFBB2D6FF3F1F26F7A6DFA9CD9B6D75EB36D5AE1F80B6E7FCAAEF8400C567B175F9385CD7FD1BC0ADF7966837DF090DDE21529744BAE3BC3E62FFCA6F9AD3F9EEEBDAAF96E6CEDD6CF30E7EC5B6DC5B5A7D8CCAAE7DEEFB9D6CFB6ADCF55CF6B62D558C1B407D26BD7AE6DFEEFB1C71EB3C30E2BDEA66462DF7B673CEA85175EB0030F3C7067FCD15ED3CF844764C3431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784401B3E10D8FD9DA57BED87C787868C4A6CFC8FE73FBD29F4D9BB2E386E3678B950EE9B87670A8613D3DA3E33EAFD97BBCC5DE7AE465E1980D6BBE6BEBD7FEC8C6B2F0834746CC46472797475FFF265BBF3EBB90E3FCD9EFCD27D97E077D281CB1EAB98F34FBF13C0607279785FF40AFACC82EE256FE2C78F7F7C63DA2CE37AC4E69647FC63DDB0EDBD96FB79C75B2FDF4D033EDD2B3FFC40E78DD1376DA2E79F85C7EC7F4C0D26FDBACC34EB729D3DF6FBF7CF556FB374FFCCCBE77C7227B74D92AB3596FB07F7FD26976FA1FFF61EB5DD103CFDC6AB3E67DB0F9935CFDABB576CE917BC49FAAF7613B61CF0576676374CB103C1CB931BBAFF59B9BF7B5DEF5B86B6CD55D0B6D76D86F96826BDFBF3CDB3FB3E2B93F36E767353DD7D2139B405B0EA6878787EDD5575FB5BEBE3EDB6DB7DDECF5AF7FBDBDF4D24BBC637AB325FFC63D0E151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1814714E01DD3BC635A13C13BA665E15597BE633A225816169FB6E73B9AEF8A2E07D3BD4BB2DB69CCCF6FA731FF98EC8307173D52FA62B319EFB9C496FECFCFD9C1D98719A6DB6FF83BB1EF5E7E8F1D33774A3C7E203BD7EEEDCF150FD46D368EBBF45EBBEBAF8F8EBBB3AE184C7B70DDD87CEB8F899EFBF4C60F9BB70A99E8F15B7E28E4164F69C20FA4607A6868A81548CF9E3DDBF6DE7B6F9B3E7D7AF3FBF097B938B190855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E5180609A605A1341302D0BAF08A65D619CB0B8184CFBA1FEE7FCAB6EB6FFEBC011FBC17F3FCB6E5C32D87CCC6FA7F16A763B8DE1CDEF5AF6B037BFE7F46B0DA6F58EE9F77EE517F6D3CFBCB3799EE23FCAC1F4B48AE74EEF98DEF6E75A7C5613AB5330FDD4534F5939904EDF81BFCC93042F6C249157CC4614C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784401826982694D04C1B42CBC229876850906D37E3B8F1F3F7DAB1DFFE6745FE8B5F6CD3F9D6767641F8CE87FFC9ED1270CDD5EB8F5C71DD98721BED6603ABBDDC89F1ED4FCD0C5F7FEFD83F6D3FFB6A0798EE23FB608A6C36D47B67EEE8FEDF6BFB6F9B9A680B9F8BCAAD423D94D8376D96597B65FC25FE662C142165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E784401826982694D04C1B42CBC229876850906D39FBAF329BBFCFDF1C30C1B2FDD65F3F73FDE1EB546F39ED1F5DD1E43B7F278EF57EECDDE313DF6AD3C763BE91A5BF183C9792B8FF16E3BCE5FE63E9CF91F2C92041E51028FB2076B258AE081471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230A104C134C6B2208A665E115C1B42B8C174C2FBE26BB0FF35FF851F6A97B5EB1CB8FD9A759B7FE31F07876CFE8C207271EFA5CF6E186EFCC3FDCB0ED871F3EA8FD8B57DB78F76D5E7CD529B6E0BCDB6CAC0F3F2CEEF70F3FDCABB7F0BD2772EE1A9F6BCB6382457AA735C1F4C4C07861139DF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA200C134C1B42682605A165E114CBBC238C174F11DD19765C1F4455B04D30FDB09BB2FC883680F9A0F5D9605CF79BFF0F6A7EC9A0FC47758AFB9EF6F6DEFA33F657E5FE7FB56DD63FF6EAFD2AD3EFCF96CFEB3E4BA536CFEC2DB6CEA6EE7DAD3BD57D9C1D3D21EDFAEB62F1F7B885DB8A8D75AF7A0CE3EC4B1D2B97779A4DAF1E33CD7E2339B484D303D11251DC30B1B597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED9908557784CDCA36FEDA3F1E09DA4DB7DF63C9BBACBCCD64FD3D7F3903DF9F0279BFDD0D0B0CD9831BDB52F159B36990D0F37523B29B683430DEBE9191DF7B9BE619FF946302D22826959784530ED0AE304D3CD0078FE4176E1927EDBF53D7F67CB7F769EEDE55FB3F9CF4B3FFE9CEDFFBE4B9B9DDF63FA83878C66F79D3EA879DFE92D8FD7071A4E3BF212FBEDAF2EB67DD3376AB3ED5DF26DDB63FEE9CD3D57DF9F85DE47EDDD3ACA3F6471C6BC0F36FBCBEE599605E6FB67757FC573573DBE75FA6D2E08A6AB11F2C2267AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E5BF7E85979B7AD78F17BD6DFBB2A1E3CC9BBFEFEF5D6DFD767FFE943BF083F09C1F48DC1E3E5E7AFB7975FF8960D8D11D2FBC123230D1B1D3FF30EDFB3139ABEFE4DB67E7DF66F18C6F943301D7108A6DD63DC60DAEC99DBCEB179A77CAD2977DCA5B7DAB73E7D8AED9BFD8BAF977EF92DFB8FEFFCAFCDFB4B4F9D7D893DDF7BB11D901DB5F2EE2FDA3EC77D76F3F13FB4EFFDF5895998BDD1EEBBEE023B7AE1B5CDC7E3BBA947ECBEBFFF4BBBF1C195B6FB5B3F605FCD8E9FDD3C6AB9FDCDB483ED92D18DE61FBC78C7929BECFD6F7BBD0DBCFC7FEC936F3AC66EDC34BCC5BBA9AB9EBBEAF1CDA755C33F08A6AB21F2C2267AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151EED3D4647FA6DF5F21F65FFFBE72C701C681E343438B9DE211C7FB2BC6B3436597F7FBFAD5BD79FFD5C7928590EDB08A609A6D3EC104C27897C5B5E2BC5BD75FF2E9D92DD4FB8337FE3146E817175DBFB3EAFB6EBFEF46DB6F0E6575B3E7FF007D36CC9929156FFFDECDDD2271FB2DBE63E3BFEC4B7D8C23B7AF27EEAE176F8A6C79A01B63F500CB1F303D6DAB5C71E689F58B4AE793FE9E6FDA2F31DB666F1D76DEF05676EEECCE61F33DF1E59F448ABBFE827CFD965C71FD4EAFD1DDED5CE5DF5F8C2A9B6A12498AE8657F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D59788547F478EAC9476C8F594F84403A1D319983E94DD9BD377A7BFBB3FFF55939EE2A876D04D304D369E609A69344BE2DAF95E2DEBA7F97766E303DFC949D37F370BB6AD390DD907D68E09947EE5174D85CF7DBDDD75F62C79D7D45D837FDD833EDFB5FFB52F39DCC6187ADB53B2E3DCF4EFCDC3F8487DF73FE3576C3DF9C6D07CF2EDE5BDA6FF1F1EFED941B1EB259277DC35EF9C1199BDF319D7FE99A477F60E7CE3FD56E692808F77B545FF7D31BEDE3C71E1ABE7FDE5439B77F45D5E3DB9CB2E24304D3D5C0EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C83D860657DA8A65DFB1952FFDCCA6CF98119136779331981E1919C9C2E8DEEC5DD21BB240BAED8FB5C57D7309A609A6D3A4104C27897C4B301D3DB6DE6DECB1DFACE86D1E377DD6EB6DBFB9F94D37C6FAC28D3DAB6CC59AECF869D36CD69C7D6CEE5EBAF9FD585FD3FEF18DB6EA372BCCCF3C6DFA2CDB67BFB9B6B5EF54F5DC558F6FFF3C27F628C1F4C49CD251BCB04912F9160F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C83D1E5AF4AE663134CE7D840727E1AD3C5E59A1370DE63FE996FF2C876D04D304D3694A08A69344BE2DAF95E2DEBA7F9776EE3BA68B3F35F50E112098AEC65CF762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D59788547EE4130ADB9209826984ED340309D24F22DC174F4A0DB410204D3D5A0796113BDF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A8FDC83605A7341304D309DA681603A49E45B82E9E841B7830408A6AB41F3C2267AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151EB907C1B4E682609A603A4D03C17492C8B704D3D1836E0709104C5783E6854DF4C2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3C720F8269CD05C134C1749A0682E924916F09A6A307DD0E122098AE06CD0B9BE885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E41E04D39A0B826982E9340D04D34922DF124C470FBA1D2440305D0D9A1736D10B0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C83D08A6351704D304D3691A08A69344BE25988E1E743B488060BA1A342F6CA2171E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE1917B104C6B2E08A609A6D334104C27897C4B301D3DE8769000C17435685ED8442F3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC223F72098D65C104C134CA76920984E12F996603A7AD0ED200182E96AD0BCB0895E78E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D59788547EE4130ADB9209826984ED340309D24F22DC174F4A0DB410204D3D5A0796113BDF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2F00A8FDC83605A7341304D309DA681603A49E45B82E9E841B7830408A6AB41F3C2267AE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230AA8633664E1151EB907C1B4E682609A603A4D03C17492C8B704D3D1836E0709104C5783E6854DF4C2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C22B3C720F8269CD05C134C1749A0682E924916F09A6A307DD0E122098AE06CD0B9BE885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED990855763798C8EF4DBEAE5F7D8E8C8FAF80593BC6BD826DB6BEEBB6CD6EB0E0C3F09C1B43808A609A6D334104C27897C4B301D3DE8769000C17435E8B15ED854FB2E3BCFD178C46B89873CB090855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C2ABB2C7D0E04AEB597977164AFFB36D1CD8608D463C7EB276A3A323D6D7B7C1FAFBFBED5DC75D6D73DFF88EF0A3104C8B83609A603A4D03C17492C8B704D3D1836E0709104C57832EBFB0A9F6D53BDFD178C46B8A873CB090855778E01105D4311BB2F00A0F3CA2803A6643165EE181471450C76CC8C2ABE4E181F48A65DFB19E55F7B50E181E6A4CFA607A64C403E9DE66289D42F6FF70FCD708A65B57D9AC1CB6114C134CA7F120984E12F9B6BC568A7BD3EFD2E263DB524F69647FB6E51BF0B53B8F00C174B56B59F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA980D5978F5AF4F2CB2DD672C0981743A623207D3C3C343B66E5DBFAD5FBF21FD38AD2DC1748BA25994C336826982E9342104D34922DF96D74A716FDD7FB7104C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED9C82DFA7A7E652B5EFC8EAD59BDC466CC982EA042351983E9C1C14DD9BBA3FB6D6060B0F093C492603A7A94C336826982E9342104D34922DF96D74A716FDD7FB7104C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED9C82D9EFCF559D6B7F6311B1A1A1E33981E9A84B7F258B366D48686C7FF0FE009A6B51EBC2A876D04D304D3694208A69344BE2DAF95E2DEBAFF6E21982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3915B104CF3E187695594C336826982E9341B04D34922DF96D74A716FDD7FB7104C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F28A08ED9C82D08A609A6D3AA28876D04D304D3693608A69344BE2DAF95E2DEBAFF6E21982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3915B104C134CA755510EDB08A609A6D36C104C27897C5B5E2BC5BD75FFDD42305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA2803A6623B7209826984EABA21CB6114C134CA7D920984E12F9B6BC568A7BEBFEBB8560BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA8633664E1151E78440175CC466E41304D309D5645396C239826984EB341309D24F26D79AD14F7D6FD770BC17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802EA988DDC82609A603AAD8A72D846304D309D6683603A49E4DBF25A29EEADFBEF1682E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED990855778E01105D48D351B3D2BEFB6975FB8D50636ACD6C13B41B57EFD06DBF780FF646F39FC9CF0D3104C134CA78128876D04D304D3693608A69344BE2DAF95E2DEB1FE6E291E53A52698AEA2B5931F4B305DED02D7BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA280BAE26C8C8EF4DBEAE53FB29E55F7DAD0E06A1B1D69D8E8A88E9DAC55A3B1C9FAFBFB6DDDBAF5D9CF336AEDC225826982E934DFE5B08D609A603ACD46BBDF1D0F2D7A5773F7D0D0B0CD98313D1D1AB683838DD04F86E69515235B7D9AE5B552FC82E2DF2DC5C75F6B4D30FD5AE576C2AF2398AE7651EB5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E51409DCFC6C107EDDB0CA4572FFFE72CB81D68ED9CECC1F4A64D9BACB7B7BF194A8F8E6E6AFD5CEDC225826982E93420E5B08D609A603ACD46BBDF1D04D349276EEB7EDD41301D7DBBBA2398AE76F9EB5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E5120EF860657DABF3E728DED62CF84403A1D3B5983E9919111EBEBEBCDFE37608DC696EF546C172E114C134CA7B927984E12666FD867BE1DFDC704D349A4DDEF0E82E9A413B775BFEE20988EBE5DDD114C57BBFC752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2860D93BA4EFB4DF3CF5B73634CE7F7E3E9AFD97DC23A35B06BBE5EFD549FDC040C3D6AEDD38EE536A172E114C134CA7A121984E1204D392C8AB76BF3B08A6CB4A795FF7EB0E82E9F6CE5DF928C174B5CB5EF762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF08802662F3F7F7DF6E186DF1A37981E9984F798EEEBDF64EBD7EBB61DE59FDBFB76E112C134C1749A1582E92441302D89BC6AF7BB8360BAAC94F775BFEE20986EEFDC958F124C57BBEC752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840307DD811670712826982E9341004D34982605A127945301D45CA6BA5B8B7EED71D04D345DD2EAF09A6AB0D40DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230A104C134C6B22FEC3F15FB3B96F24984E22E5B08D0F3FE41ED3693608A69344BE2DAF95E2DEBA5F77104C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840304D30AD892098968557E5B08D609A603A4D08C17492C8B7E5B552DC5BF7EB0E82E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED990855778E0110508A609A6351104D3B2F0AA1CB6114C134CA70921984E12F9B6BC568A7BEB7EDD41305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA200C134C1B42682605A165E95C336826982E9342104D34922DF96D74A716FDDAF3B08A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA2803A6643165EE181471420982698D644104CCBC2AB72D846304D309D2684603A49E4DBF25A29EEADFB7507C17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF0880204D304D39A0882695978550EDB08A609A6D384104C27897C5B5E2BC5BD75BFEE20982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E5180609A605A1341302D0BAFCA611BC134C1749A1082E924916FCB6BA5B8B7EED71D04D345DD2EAF09A6AB0D40DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230A104C134C6B2208A665E155396C239826984E1342309D24F26D79AD14F7D6FDBA8360BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA8633664E1151E784401826982694D04C1B42CBC2A876D04D304D3694208A69344BE2DAF95E2DEBA5F77104C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840304D30AD892098968557E5B08D609A603A4D08C17492C8B7E5B552DC5BF7EB0E82E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED990855778E0110508A609A6351104D3B2F0AA1CB6114C134CA70921984E12F9B6BC568A7BEB7EDD41305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB2F00A0F3CA200C134C1B42682605A165E95C336826982E9342104D34922DF96D74A716FDDAF3B08A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA2803A6643165EE181471420982698D644104CCBC2AB72D846304D309D2684603A49E4DBF25A29EEADFB7507C17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF0880204D304D39A0882695978550EDB08A609A6D384104C27897C5B5E2BC5BD75BFEE20982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA980D597885071E5180609A605A1341302D0BAFCA611BC134C1749A1082E924916FCB6BA5B8B7EED71D9D1D4CF7FCD6EE7F6CB9ED7BC41FDA01B3A7151DC6AC5F7EF65FEDD50DD36DFFDF3DC4F61AE34B7A5E7ED69E5FB6DA866DBAEDF1C637D9A16F9E6B631C3AE6799A3B36F6D8B34F3F6FAB3764DF69FA1EF6A67987DADCAD3CCFAAE7AE7AFCF84F78FCBD04D3E3FB94F7D6BD18CBDF7FB2F578C42B86873CB090855778E01105D4311BB2F00A0F3CA2803A6643165EE181471420982698D644104CCBC2AB72D846304D309D2684603A49E4DBF25A29EEADFB75470707D36BEDAA630FB4F316ADB3AFDEBFDA3E7DD4DE4587B675EFE2AFDB1E0BCE6CEEBB7CF16AFBD4DB4B5FD3F7A47DF9131FB60B6FFE55F8FA19C79E6B3FFFEEE576D4DCE9E1F1F19AA5775E61A79EF0197BD41AE1B00B6EFA857DF9A3EFDC32E8AE7AEEAAC78767F1DA1A82E96A6E752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC862CBCC2038F2840304D30AD892098968557E5B08D609A603A4D08C17492C8B7E5B552DC5BF7EB8E0E0DA6FBEDB6F34FB653AEBCABF9B35F9D85CCE79443E6A28AD7038FDBC75F77A4DDB869788CAF596E9F9F3FCF2E5EB2BEB97FFA311FB153E73C6E37DFF170B39FBADBB9F6C49A305F93D600004000494441542BEDAD33A734FBF1FEB1F2EE2FDA3EC77D363F64EAE176DA9FCFB7476EB8A515522FFCC7C7ED9A0F1D56F81655CF5DF5F8C2A9B6A12498AE8657F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CC8C22B3CF0880204D304D39A0882695978550EDB08A609A6D384104C27897C5B5E2BC5BD75BFEEE8B8607A64D5AFED0BA71E6D172FEAB3C36D4A33ECDD7A30BDD16E3BEBCD76CA0D2B5B56E5AF79E9C79FB3FDDF776973FF05373D68577C7441B35E7AC717ECB0132F6AD6275FFFA07DFFE3F9E3AD6F542E1ABFB5BF9AFE16FBD2E8A04D3BE25C7BE09ECBEDC8BDB2775A67EF70FEFC09EF683EEF29333E6C8B57DF6C47CECE43EEAAE7AE7A7CF929BED69E60BA9A5CDD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFF0C0230A104C134C6B2208A665E155396C239826984E1342309D24F26D79AD14F7D6FDBAA38382E9115B7CD385B6E0CFAE28FEBCCDBA1C32970F78210B9D0FDA1C3AA77DF16BFAEDBA130FB08577F4D8AC93BE61AFFEE00C9B990ECCB6777FF68FECB82F3E6053675F622FF65E6CFB16F695CBE2ED426E7874BD9DF9FBB35A87345EBACBE6EF7F7C334CBFE827CBECB2E3F7CFF6553D77D5E35BA7DFE68260BA1A61DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3210BAFC6F2E85FF7A8AD58F6231B19CEFF8BD1F85593B71B1E1EB2FD0F3DDDF67CFDE16D7F88B13CDA1EBC933EF8F2F3D7DBCB2F7CCB8686866DC68CF6B7AB1C1969D8E8E8E402E8EBDF64EBD76F1AF749B70B979EFCF559D6B7F6B1713D86861AD68877E91CF73C9DB073CD9A511B1A1EFF49134CC72B550EDB08A609A6D384B4FBDDF1D0A27735778FF7BB747070FC3598BE7F276D5F5931B2D5A7535E2BC52FA8FBEFD90E0AA6D7DAB5D93DA53F91DD537ACA2EEFB62BBF7E92FDF08CF3EDDEC6268B217391C3ACB1F25E3BF68DEF691E77D697BF6CFD175E64B73446E2D764B7F9386DF7239A8F5F70FB5376C507E6856FD2BBF89AECDED47FD17CEC3BCF6CB00F1EB25BD85F6C965C7786CD5FF84DF35B7F3CDD7B951D1C3E35513FC39CB36FB515D79E6233AB9E7BBFE76A7BAEC5E73D917ABC607A347BD5B276ED5ABBFFFEFB6DDEBCE83791EFBD331EF3C20B2FD881071EB833FE68AFE967C223B2E1210F2C64E1151E78440175CC862CBCC2038F28A08ED9908557658FA1F5BFB4E181076D74E8F92C889B7C615BFCE9D40D0C6CB075EBD6DBE0E090BDF588FF6EB3F76C1F4C973DF41DBAA7DAB0E6BBB67EED8F6C7868C4A6CF08FF87B5853092E512A3A3932B50994830BDDF9B4FB2FD0EFA50EBE7F462DDCB9FB3A18DCF8EEB3119D7CA4482E9766B65D5731F69FA8C371F3B6BD8B6E0DDDF0BB331BCE1315BFBCA17C7F5D894FDBB90E1ADFC0B80F04D3BA019CC7EF7F7F48CFF6F9E66EFF1167BEB91978567CBEF8EF8BB83B512C6233475E6821D144CF7DB2D679D6C3F3DF44CBBF4EC3FB1035EF7849DB64B1E268F1D4CAFCE3E20F1D0E60724FA3BA15FBCE55DF6DF76FFFD2D82E981676EB559F33ED844BCFA576BED9C23F708A0D6FBB09DB0E702BBB3311A03ED7854D6E99621BB1E778DADBA6BA1CD2E1D93826BDFBF3CDB3FB3E2B93F36E767353DD7D2139B40DB2E981E1E1E6E06D2BDBDBDB6EBAEBB662F06D7D9EFFDDEEF4DE0BBEDFC87D4FD6F8926BB181EF10AE2210F2C64E1151E78440175CC862CBCC2038F28A08ED9908557C9A367E5DDB6E2C5EFD9D0E0EAD601C33B4130DDDFBFDEFAFBFA6C300B59D39F76EF024DFB9247EABB71CB3BA6CF0E979D774CBF2378F02E5071F08E69DE319DA681774C27897CDBA5EF988E081E169FB6E73BB608998B472DF966F6EEE533BED97C87F5DDCBEFB1635EF7889DB0FB960173BAFD86BF13BB79DCDCFCDECFADEF35909D6BF7F1CF951FABDB6C1C77E9BD76D75F1FDDFA16A92806D31E5C37167F3D7B37F6997A8E5B39F7E98D1F563A7EAB1F0A999ED804B6C560DA03E9575F7DD5FAB21781B367CFB63973E6D8AC59B35A2F7C27F0ED76FA4378D11B2F311E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB2181DE9B7A58F7EC7A6351E0A81743A62B206D38DECBF9AEDEFF77748F765EFEADDF25D7F04D3E90AB7DF124C134CA7C968B75608A6934EF651613D0FD9930F7FB2F9C0D018B7BED959DF31FD867DE6DBD17F4C309DA681603A49E45B826977D84A583CB0347B17F461F9BBA03F75E77376F9FB0FB2B1C2ECF48E690FA67FD9738F1DB5F943095BEC5B3957EBB8C23BA6DFFB955FD84F3FF34EEDDA5C9583E9699BDF313DD173A7774C4FF4F8ED114C2F5FBEBC1548EFBDF7DE367DBAEE4BC6FF11D025C742165EE181471450C76CC8C22B3CF08802EA980D597885071E51401DB3915BAC5CF61D7B65D9776D60A077CCFB080F0D65B73E9C6437CE5DBF7EB479CB8EF19E77BBB02D4D08F3C1871FF2E187693598B55B2B04D3F2219826984ED340309D24F22DC1B43B8C17168F3C677F35F330FBD2E8A0B5EEE55CFE9AC22D3B06967E3B0BB14FB729D3DF6FBF7CF58E6D08A6B3DB8DFCE94176DACDABEDBD7FFFA0FDF4BF2DC8AF58E19F5B04D315CFFDB1DDFE574DCFB5F0A426500E0E0EDACC99F94742AE5CB9D2F6DC73CF1048A76FC10BBD24C1FF6196445E311B51040F7960210BAFF0C0230AA8633664E1151E78440175CC466EC1ED09E2ED09D2848C351F43832B6DF5CB77A7C3769AEDE8A611FB9D03FF8B4DDD25FFFF72FE83F18E69DE319D069C603A49E4DB72D846304D309D2684603A49B45F2BC5BD63FD3D5B3CA64ADD41F7982E3DED3183E911BBFBF3FFC98EBBF8FF359B7AB8FD64D9FFB6F7BC7E8A0D0C4FB769BDBFB4F7BD29FF20C4CBEE7ECEFEF2DFEE6B59DA6A1B2ADE4E63EC7721EB561EEFFDCABDD93BA6C7BE95C76E275D632B7EF0FFCFAD3CD22D394AA2136EC77B7742DD0338E127D5810762112F0A1E78440175CC862CBCC2038F28A08ED990855778E01105D4311BB905C1F4C482E981F5CFD9EAE53FB29E55F765B73B995C1FF6A7A9DFB21A1E1ECADE59DE6F1B366CB0934F7F201C40304D309D0682603A49E45B826979702B0F597845301D3DCA6BA5B8B7EED761933098EEB76B8FDDDF3EB1685DD165CCBAF9C189873E977DB8E13BF30F372CBC93BAF545BD0F6AFFE2D53676306DB6F8AA536CC179B7D9581F7E58DCEF1F7EB857F17B4FE4DC353ED7D6CF37C12205DA04D31303AB7B314EECAC9D7B141EF1DAE0210F2C64E1151E78440175CC862CBCC2038F28A08ED9C82D08A6C70FA6FBD73D6A2B5FBCD5FA7B97B686676708A60707375A6FAF07D21B5B3F573940209826984EC341309D24F26D79ADF08E69DE319D2684603A49B45F2BC5BD75BF0E9B94C1F495F3F7B3F397F4155DC6ACBF7AFF6AFBF4DB9665C173FEA1880B6F7FCAAEF9C0BC70FC9AFBFED6F63EFA53CD0F28BC6FD53DF6EFF62A7D3862E1E825D79D62F317DE6653773BD79EEEBDCA0E9E56D869ABEDCBC71E62172EEAB5D63DA8B30F71AC74EE5DB20F70ACE9B9169FD9446A82E98928E998BA17A3BEF3E4ACF088D70D0F7960210BAFF0C0230AA8633664E1151E78440175CC466E4130DD3E987E62C9F76DE62EBF0E81749A9EC91C4C0F0C0C343F0C727030BB7178E94F396C239826984E2342309D24F26D79AD104C134CA70921984E12EDD74A716FDDAFC32661309D7D72EAAA97AD6FB8C8E275762B8F75F7DBA9BF7782DD9B7D8AF305B73F6C17FE87FD6CE65E736DF6B47EFB66766FE833B27B43EFFA9EBFB3E53F3BCFF66A7DF946BBEDAC37DB2937ACB469475E62BFFDD5C596DD0064CC3FBD4BBE6D7BCC3FBDB9FFEA2CF43EE7A8BD5BC70E671F7438635EFE818C97DDB3CC2E3A66FF6C5FD573573DBE75FA6D2E08A6AB11D6BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB905C1740CA65F7DE57F65EF90FE5EF621EECBC7FE30C849782B8F0D1B46B27748F7D9F0F0881641A92A876D04D304D3694408A69344BE2DAF15826982E9342104D349A2FD5A29EEADFB75D8A40CA68B20A11E78DC4EDBFD08BBA53162372C596B671EBE476BF7CABBBF68FB1CF7D9667FDCA53FB4EFFDF5895938BDD1EEBBEE023B7AE1B5CDC7E3BBA947ECBEBFFF4BBBF1C195B6FB5B3F605FCD8E9FDD3C6AB9FDCDB483ED92D18DCD0F53BC63C94DF6FEB7BDDE065EFE3FF6C9371D63376E1ADEE2DDD455CF5DF5F8D60FB98D05C17435C0BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA2803A6623B720988EC1F4438BDED584191A1A1E33981E9C84C1F42B2BC60EA4D3AA28876D04D304D3693608A69344BE2DAF15826982E9342104D349A2FD5A29EEADFB7558E706D3855B6034EF13FD76BD33B90812EAEC03134FD83DBF65C7965FB3DAAE3BF12DB6F08E9EFC4BB20F4E3C7CD363F6A8E51F803175F625F67CEFC57640EB1BAECDEE657D60F35ED67E3FE9E6FDA237EF5B937D98E2DE0BCE6C1D39FF98F9F6C8A2475AFD453F79CE2E3BFEA0566FD92D3EAA9DBBEAF185536D4349305D0DAFEEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED9C82D08A609A6D3AA28876D04D304D3693608A69344BE2DAF15826982E9342104D349A2FD5A29EEADFB7558E706D3C34FD979330FB7AB360DD90DD987069E79A4DEFD5C040975E11DD3FFB0749D9DFEB63961B7D95ABBE3D2F3ECC4CFFD4378FC3DE75F6337FCCDD976F0ECE2BDA5FD161FFF3EBBC5C74336EBA46FD82B3F3863F33BA6F32F5DF3E80FECDCF9A736DF9D9DBED9945DDE6DD7FDF446FBF8B187A6870ADB2AE7F62FAB7A7CE154AFB12498AE0657F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CE41604D304D3695594C336826982E9341B04D34922DF96D70AC134C1749A1082E924D17EAD14F7D6FD3AAC7383E9E24F5D73BDB16795AD58D36B366D9ACD9AB38FCDDD6BE66B3CC3465BF59B15967D279B367D96EDB3DF5CDBDA77AA7AEEAAC7BFC61FA4F96504D3D5F4EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA988DDC82609A603AAD8A72D846304D309D6683603A49E4DBF25A219826984E1342309D24DAAF95E2DEBA5F877565305D04A59600C1B42C2652D5BD182772CE4E3E068F7875F0900716B2F00A0F3CA2803A6643165EE181471450C76CE41604D304D3695594C336826982E9341B04D34922DF96D70AC134C1749A1082E924D17EAD14F7D6FD3A8C60BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA86336720B826982E9B42ACA611BC134C1749A0D82E924916FCB6B85609A603A4D08C1749268BF568A7BEB7E1D46305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB905C134C1745A15E5B08D609A603ACD06C17492C8B7E5B542304D309D2684603A49B45F2BC5BD75BF0E23982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA988DDC82609A603AAD8A72D846304D309D6683603A49E4DBF25A219826984E1342309D24DAAF95E2DEBA5F87114C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC466E41304D309D5645396C239826984EB341309D24F26D79AD104C134CA70921984E12EDD74A716FDDAFC308A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA2803A6623B7209826984EABA21CB6114C134CA7D920984E12F9B6BC5608A609A6D384104C2789F66BA5B8B7EED76104D345DD2EAF09A6AB0D40DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3915B104C134CA755510EDB08A609A6D36C104C27897C5B5E2B04D304D3694208A69344FBB552DC5BF7EB3082E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED9C82D08A609A6D3AA28876D04D304D3693608A69344BE2DAF15826982E9342104D349A2FD5A29EEADFB7518C17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CE41604D304D3695594C336826982E9341B04D34922DF96D70AC134C1749A1082E924D17EAD14F7D6FD3A8C60BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA86336720B826982E9B42ACA611BC134C1749A0D82E924916FCB6B85609A603A4D08C1749268BF568A7BEB7E1D46305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB905C134C1745A15E5B08D609A603ACD06C17492C8B7E5B542304D309D2684603A49B45F2BC5BD75BF0E23982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA988DDC82609A603AAD8A72D846304D309D6683603A49E4DBF25A219826984E1342309D24DAAF95E2DEBA5F87114C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC466E41304D309D5645396C239826984EB341309D24F26D79AD104C134CA70921984E12EDD74A716FDDAFC308A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA2803A6623B7209826984EABA21CB6114C134CA7D920984E12F9B6BC5608A609A6D384104C2789F66BA5B8B7EED76104D345DD2EAF09A6AB0D40DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E51401DB3915B104C134CA755510EDB08A609A6D36C104C27897C5B5E2B04D304D3694208A69344FBB552DC5BF7EB3082E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F28A08ED9C82D08A609A6D3AA28876D04D304D3693608A69344BE2DAF15826982E9342104D349A2FD5A29EEADFB7518C17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471450C76CE41604D304D3695594C336826982E9341B04D34922DF96D70AC134C1749A1082E924D17EAD14F7D6FD3A8C60BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA86336720B826982E9B42ACA611BC134C1749A0D82E924916FCB6B85609A603A4D08C1749268BF568A7BEB7E1D46305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D4311BB905C134C1745A15E5B08D609A603ACD06C17492C8B7E5B542304D309D2684603A49B45F2BC5BD75BF0E23982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EA988DDC82609A603AAD8A72D846304D309D6683603A49E4DBF25A219826984E1342309D24DAAF95E2DEBA5F87114C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E78440175CC466E41304D309D5645396C239826984EB341309D24F26D79AD104C134CA70921984E12EDD74A716FDDAFC308A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA280BAB166636870A52D7FE13BB671C34A1DBC1354A39B466DCEEB8FB2FD0F3A39FC3404D304D36920CA611BC134C1749A0D82E924916FCB6B85609A603A4D08C1749268BF568A7BC77A1D563CA64A4D305D456B273F9660BADA05AE7B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230AA82BCF46FFBA47AD67D53DD9FFEEB3D191868D8EEAD8C95C0D0F0FD9BA75FDB67EFD066BF77F9809A609A6D37C97C336826982E9341B04D34922DF96D70AC134C1749A90767FCF3EB4E85DCDDD4343C33663C6F47468D80E0E36423F199A57568C6CF56996D74AF10BCAAFC38AFB5E4B4D30FD5AD476D2AF2198AE7661EB5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF08802EAD26C7820BDF2C55BADBF77696BE7CE104C6FDCB8D1FAFAFA6DC3868DAD9FABDDFF61269826984E03520E1008A609A6D36C104C27897C5B5E2B04D304D36942DAFD3D4B309D74E236BD0E8B8FBEF68E60FAB5DBED745F49305DED92D6BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105D43DFEF0B76DB7E94F86403AED9DCCC1F4C0C086E63BA4070787D28FD3DAB6FB3FCC04D304D36940CA611BC134C1749A0D82E924916FCB6B85609A603A4D48BBBF6709A6934EDCD6FD1A9D603AFA767547305DEDF2D7BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E01105CC3C40F8EDD37F6BFD7DCBC7FC4F6A47B2FF3A75747472FD67B543590EBD664D7FF6BCC7BE0749BBFFC34C304D309DD648396C239826984EB341309D24F26D79AD104C134CA70969F7F72CC174D289DBBA5FA3134C47DFAEEE08A6AB5DFEBA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA28019611B615B9A09C2B624916FCB611B6B85B5922684B59224DAAF15826982E9342104D349A2FD5A29EEADFB353AC17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471420983EEC08C2B63413846D4922DF124CCBA35DB8C47F5DC07F5D9026A4BC5608A609A6D36CB4FBDDC13BA6934EDCD6FD1A9D603AFA767547305DEDF2D7BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E0110508A609A6351104D3B2F0AA1CB6F18E69FE254E9A10D64A92C8B7E5B542304D309D2684603A49B45F2BC5BD75BF4627982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF0880204D304D39A08C2365978550EDB08A609A6D384B0569244BE2DAF15826982E9342104D349A2FD5A29EEADFB353AC17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471420982698D64410B6C9C2AB72D846304D309D2684B59224F26D79AD104C134CA70921984E12EDD74A716FDDAFD109A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA200C134C1B42682B04D165E95C336826982E93421AC9524916FCB6B85609A603A4D08C1749268BF568A7BEB7E8D4E305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E0110508A609A63511846DB2F0AA1CB6114C134CA70961AD24897C5B5E2B04D304D3694208A69344FBB552DC5BF76B7482E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F2840304D30AD89206C938557E5B08D609A603A4D086B2549E4DBF25A219826984E1342309D24DAAF95E2DEBA5FA3134C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E784401826982694D04619B2CBC2A876D04D304D36942582B4922DF96D70AC134C1749A1082E924D17EAD14F7D6FD1A9D60BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230A104C134C6B2208DB64E155396C239826984E13C25A4912F9B6BC5608A609A6D384104C2789F66BA5B8B7EED7E804D345DD2EAF09A6AB0D40DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E5180609A605A1341D8260BAFCA611BC134C1749A10D64A92C8B7E5B542304D309D2684603A49B45F2BC5BD75BF4627982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF0880204D304D39A08C2365978550EDB08A609A6D384B0569244BE2DAF15826982E9342104D349A2FD5A29EEADFB353AC17451B7CB6B82E96A0350F762AC76F6CE3B1A8F784DF0900716B2F00A0F3CA2803A6643165EE181471420982698D64410B6C9C2AB72D846304D309D2684B59224F26D79AD104C134CA70921984E12EDD74A716FDDAFD109A68BBA5D5E134C571B80BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA200C134C1B42682B04D165E95C336826982E93421AC9524916FCB6B85609A603A4D08C1749268BF568A7BEB7E8D4E305DD4EDF29A60BADA00D4BD18AB9DBDF38EC6235E133CE481852CBCC2038F28A08ED990855778E0110508A609A63511846DB2F0AA1CB6114C134CA70961AD24897C5B5E2B04D304D3694208A69344FBB552DC5BF76B7482E9A26E97D704D3D506A0EEC558EDEC9D77341EF19AE0210F2C64E1151E78440175CC862CBCC2038F2840304D30AD89206C938557E5B08D609A603A4D086B2549E4DBF25A219826984E1342309D24DAAF95E2DEBA5FA3134C1775BBBC2698AE3600752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E784401826982694D04619B2CBC2A876D04D304D36942582B4922DF96D70AC134C1749A1082E924D17EAD14F7D6FD1A9D60BAA8DBE535C174B501A87B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230A104C134C6B2208DB64E155396C239826984E13C25A4912F9B6BC5608A609A6D384104C2789F66BA5B8B7EED7E804D345DD2EAF09A6AB0D40DD8BB1DAD93BEF683CE235C1431E58C8C22B3CF08802EA980D597885071E5180609A605A1341D8260BAFCA611BC134C1749A10D64A92C8B7E5B542304D309D2684603A49B45F2BC5BD75BF4627982EEA76794D305D6D00EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF0880204D304D39A08C2365978550EDB08A609A6D384B0569244BE2DAF15826982E9342104D349A2FD5A29EEADFB357A6707D33DBFB5FB1F5B6EFB1EF18776C0EC694587423D622F3FFBAFB66CF5FAE663D367BDC10EFADD436CAFB10ECF8EEA79F9597B7ED96A1BB6E9B6C71BDF6487BE79AE8D7378E15CA572638F3DFBF4F3B67A43F69DA6EF616F9A77A8CD1DF379E65F5BF5DC558F2F3DC34A2DC174252EFE0F7389ABEE5F4EA56F3FE95A3C74C9B090855778E01105D4311BB2F00A0F3CA200C134C1B42682B04D165E95C336826982E93421AC9524916FCB6B85609A603A4D08C1749268BF568A7BEB7E8DDEC1C1F45ABBEAD803EDBC45EBECABF7AFB64F1FB577D1A159AF7CF47FDA05A77DC06E593214F74D3DDCBEF24FDFB5CFBCFFB0F878DF93F6E54F7CD82EBCF957E1F119C79E6B3FFFEEE576D4DCE9E1F1F19AA5775E61A79EF0197BD41AE1B00B6EFA857DF9A3EFDC32E8AE7AEEAAC78767F1DA1A82E96A6E752FC66A67EFBCA3F188D7040F7960210BAFF0C0230AA8633664E1151E784401826982694D04619B2CBC2A876D04D304D36942582B4922DF96D70AC134C1749A1082E924D17EAD14F7D6FD1ABD4383E97EBBEDFC93ED942BEF6AFEEC572F5E6DE7BC3D06D3034B6FB559877DB06533FF848FD81FCD5E6E37DC7C4FEBB185B73F6ED77C2085D3CBEDF3F3E7D9C54B36BFB3FA988FD8A9731EB79BEF78B879FCD4DDCEB527D65C696F9D39A5F5F563152BEFFEA2ED73DC67F3DD59087EDA9FCFB7476EB8A515522FFCC7ECBC1F4AE7F5C3AA9EBBEAF1633DD36A8F134C57F3AA7B31563B7BE71D8D47BC2678C8030B597885071E51401DB3210BAFF0C0230A104C134C6B2208DB64E155396C239826984E13C25A4912F9B6BC5608A609A6D384104C2789F66BA5B8B7EED7E81D174C8FACFAB57DE1D4A3EDE2457D76B84D6986BD5B06D3FD76DD8907D8C23B7A6CCA2EEFB65B1EB8D93EF4F6DF693A0DFCE6FFD8270F3EC66EDC346C53667CD896AEBFC5DE9ADDA7E3A51F7FCEF67FDFA5CD632EB8E941BBE2A30B9AF5D23BBE60879D7851B33EF9FA07EDFB1FCF1F6F3ED0EE1F8DDFDA5F4D7F8B7D6974D0A61D71AE3D70CFE576E45ED93BADB377387FFE8477349FB79F77F1EA9BEDC8D979C85DF5DC558F6FF7345FCB6304D3D5D4EA5E8CD5CEDE7947E311AF091EF2C042165EE181471450C76CC8C22B3CF0880204D304D39A08C2365978550EDB08A609A6D384B0569244BE2DAF15826982E9342104D349A2FD5A29EEADFB357A0705D323B6F8A60B6DC19F5D51FC799BF516C174EF8376C29EEFB43B1BA3B6E5BB93CD7A7FF935DBE39DE734BFF61F96AEB3D3DF36B51564CF3AE91BF6EA0FCEB09985B3DCFDD93FB2E3BEF8804D9D7D89BDD87BB1ED5BD8572E7B177FDDF6587066F3E11B1E5D6F67FEFEACD6218D97EEB2F9FB1FDF0CD32FFAC932BBECF8FDB37D0AD12776EEAAC7B74EBFCD05C17435C2BA1763B5B377DED178C46B82873CB090855778E01105D4311BB2F00A0F3CA200C134C1B42682B04D165E95C336826982E93421AC9524916FCB6B85609A603A4D08C1749268BF568A7BEB7E8DDE41C1F45ABB36BBA7F427B27B4AFBBBA0AFFCFA49F6C333CEB77B1B9B6C8B607A63F6EEE40FFE85DD7EC73DF6E9253D76FAE17B148D6C60E9B7B3DB7C9CDE7CECEAECFED4E71CFE8A9DB6FB11764B63C42EB8FD29BBE203F3C2F1BD8BAFC9C2E6BF683EF69D6736D8070FD92DEC2F364BAE3BC3E62FFCA6F9AD3F9EEEBDCA0E0E9F9AA89F61CED9B7DA8A6B4FB199038F573BF77ECF553B7E9CE75A7CDE13A9B7164C8F8E8EDA73CF3D67F3E645BF897CEF9DF198BA17E36437C2235E413CE481852CBCC2038F28A08ED990855778E0110508A609A63511846DB2F0AA1CB6114C134CA70961AD24897C5B5E2B04D304D3694208A6FF3FF6CE05D8AEEA3CCC3F7A2184F58AA21253CCCB08300D234864521A7730204AEB09B530ADFC527043828D1C4230A91B6A1CC08686F84162CC44C860173C86C4061B467E242E204495C6834D444080493096092FA1B7747575F5B8F7EA76AFB3F59FFFFC4B4B5777A135C3BE3A9F6792F5AF73D63D6B9F6FFDFF7E7C6CEDA324D2B5D2F96EE973F40689E95EB9E763EF93074FB8546EB8ECBFC8D16FF9A92C185BCBE4BDC474279144FCDC9D97C82997DCD912DCCBD73D22BFBEE15E9934AB7E1EF5AD4F6C96CB4FF7225B7A9EACEEC09ED3BA037BF8B976C87D1F3B46E6DFBE560E9DBB48D63DB4502647F3ABB80EEFAFAEDE9FF842F52CEC8CB97F77CAC359E3E3676F479B93D5DD9798EEEFEF97CD9B374B4F4F8F3CF3CC3372CA299DCFCFCE9AE2A01AFCE28B2FCAB1C71E7B507DA703F932F0F0F4E0613C60612C42040F787802D623378C4588E0010F4F40A46FE33765DBE6EF49FFAE01193FC1DD1DD21E3A30203238E87F9CBCFD664383ADBDBB65DBB6DDC36EDD91C75C28471EF7413766CB6BD7CAAE1D3F1F96C7AE5D433234BA70C8C68D83B2AB7FF88D3EE9B43F91C9D34E753CD6ADFA70AB3F5C7EECDC39FCE7BA0F6C48E7F5355552EFE77F73DE7DAF1B41AD502B9A10D48A92A8DBB856FAFB9E91CDAFDFD47A735FFB8EDDD5EEB97F3FFB243FCB9BDFDB59EDFB376D1A1C7643264F3D514E3AFD4637867D87DF77705C71E9E13A256F586D909876DFB17A1EC793B260DA3B5B77390F2F8BFDDF6D7FEE01F98D532E6A3D4EE3D0736F92571EBE5A26EC79FC46B8137BE9EA47E4EC99F5B39FDB7FB9BD9AEBF091CC658FD9987BC3A3F2D0A7CF6A7F84069D623A88EBA1CCB92F1E7AA0F5A89003DF56DDA291B7B198EEEBEB6BC9E8AD5BB7CAE4C99365CA9429F2EAABAF72C7F41EA4A5FF2BD1C857AA9923E1E1D7051EC60316C62244F0808727603D72C35884081EF0F004B8639A3BA62D23B80BD4588428BE0B943BA6B9635A33845A5112751BD70A774C73C7B46608774C2B8974AD74BE5BFA1CBDB9627AC4B2D8F0F4BFF8A0FC87E3FF53EBF11FE1D5FAF9D25364FB9EBB9683EC7D6CD32372C69E1F256CFFE588E7B23BA6CFFBFC8FE4C14F9ED9FE080D62313D2E736EBD63FAC0B755B768E4AD8AE92D5BB6B484F4CE9D3B5B327ADAB469327EFCF8D607954EC0916F5DF346C2C2AF093CE0E109588FDC30162182073C3C01EB911BC62244F08087278098464C5B4620DB8C458862D98698464C6B86502B4AA26EE35A414C23A6354310D34A225D2B9DEF963E473F68C4F4F617BE2FEF39F1BD6D297DCD779F971B2FA89F85ACCF9C3E64FC05F2D886250720A6ABC78DFCF671B2E0EEF572DE971F9707FF604EE7DAB4E2BDC4F49EE75D8F74EEDF3DEC6F5ACFC71EE9F8528FF208CF8F1E37AEFE2791E139D24146873BA4C78E1DEBBE63E904741F3ECA3AB0F00B060F787802D623378C4588E0010F4FC07AE486B108113CE0E10920A611D39611C8366311A258B621A611D39A21D48A92A8DBB85610D38869CD10C4B49248D74AE7BBA5CFD10F0A31FDE2D2BF94E3E65EDEE6D429A5C38B3D998FD3D8B7ECB547799CF7F947AB3BA6F7FD288FC32E5C246BEE7F731EE5A1773EB781640643C33C88AE7402666E5AA386C3C22F073CE0E109588FDC30162182073C3C01EB911BC62244F08087278098464C5B4620DB8C458862D98698464C6B86502B4AA26EE35A414C23A6354310D34A225D2B9DEF963E471FF562FAB1AFFCBE9C79D9A236A3AFFCDDCBF2D1771DD5EEB7829EC7AB1F373CB3FE71C3E48F1F76BCBF62BDEC5B4C8BACB865BECCB9F2BE7DFEF861E7FBE1C70FA7E7CE7DC2AA62DBEA21ECBFA7421B31BD7F566144E9621CD9ACCD1D050FBF36F0301EB030162182073C3C01EB911BC62244F018198F5D3BD7CAFAD796FAC107416F70F780FCEB63FFAB8C193BB1FD6D906DC8364D06649B92A8DB58B6512BD48A6608B5A224D2B58298464C6B8620A69544BA563ADF2D7D8E3EAAC5F4638B7F47CE5C78578B4F78F4C5DFFEEC5B72FE318775F2AAE3EA8714DF3B6D4E4B4C2FFCF6F3B2E8A2FA111F3A70E3F23F971967FD9184E73A2F5FF788BC6B7AF4E3883AB06A572E9E2FB317DE27630EBB427ED6738B1CEF7E107CBD7CEE9CB7CBD5CB7AA4FD0CEADCB9C73E556C5B3B367B4421627A4498DA834A1763FB834769000FBF70F0301EB030162182073C3C01EB911BC62244F0189EC7F66DAB64FDEAEFC9A675CB65D7CE213F7814F7FAFB77C9962DBD127E84FB7D17FFC47D13641BB24D1302D9A624EA16316D3C5272E99FFFF163B275F333B26B57BF4C9850FF7692FD451DEDDA3524C3FCC3E1787823FA1B370ECAAEFEE1F7FFD48A5FAAB85610D38869CD90D4BEE31F96FD66EBEDE1F61D3B47E139D8EB6B06F46BEFB38D6BA57360E973F4512BA65F5C72AD1C37EF86169B09E75E2F2BBF7FAD9C34715F42B957EEAC9E0D7D49F56CE843CFFD0B59FDF09532BD4DD57ED070DCE9D7CB4B4F5C276F6DBFB777D0B3F21B3275F6C5AD376EFD717577F51933DA83FAAB1F3A9C30EB03ADFE8D8FBC2CD79C1DEEDCCE9D3B777C7BFA030E10D379084B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911BC62244F048F3E8DDF2B4AC7DE55BD2DBF35C7BC0C120A677EEDC51FDF87610D23BDADF2BBE28424C23A63539906D4AA26EA915E391924B88E9771AA02A42B6190EC434625AB321B5EFA056948E6F4B9FA38F4E31BDFD595970F86972CF506DF92FBBE7FFCAA56F3F44B6EDF2B0FAFB454E78E7BBE4E8C987C8DAA537C911733FD51A30F78607E4DE4FCFABE4F40E59BEF82A396BE16DADD7FDDDD403B2FCCB7F2C773CBE560E3FE922F942357E726BD46AF9CCB8E3E5FAC11D12EED25EB2F22EB9E0E45F92EDAFFDBDFCE1DBCE963B76F7EF753775EEDCB9E3FDB77EE33DC4741EBBD2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE486B108113C3C8F9FAEFC8E4C1CFB8F4E48EB88D12CA6B76FDF5EDD21BD5576EE8C4EE4AB2F876CD31516495D3023DB906D9A21D48A92A0568C441DF11F713C91B85610D38869CD90D4711631AD747C5BFA1CBDB962BAE31118B746CF7D7EE1BECB65D6FCBFF464F6D1FB427557F37F6FDDD5BC5E16CF3B51162ED9548F1C73AA9CBAFB19795AEA7FFA3266F2F5F28B9EEBE4E8F6E76C96DBCE39563EBE6C4BEB79D2ADE745EF796F63F5638A33E65CDA1E39FBECD9F2D4B2A7DAFD6B7EB84A6E3CFFB8765F2477EEDCF11D531D408898CE8357BA18F3666FDE6878F8358187F18085B108113CE0E109588FDC3016218247CD63C3EB7F53DD217DAF6CDDBA7ADFFF047D14FE33D2BEBE81EA0EE9ADD2DFBFEF7F4E1A0B04EE98E68E69DD4B20DB9444DD522BC6232597F88F38FC471CCD90B85610D38869CD8DD4BE0331AD747C5BFA1CBDB962BAFF79B972E2A972CBEE5D727BF58385979E3EB54DE285FB3E5989E92FB6FBC3055F5FB9592E3E55FF76B32CB9E14A9977EDD7DD9F9CFB894572FB672E93E3AB3BABED7FE1111FFF5EE6DFFE0F32E9C2AFC9EBF75FB2E78EE97AC4C6A7EF972B66BFBF7DD77678353CA37AF18377C847CF39C13EA61DE5CC1DFE28777C7BA2371C20A6F3D0952EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623378C4588E051F3E0A2C8F202318D98D66C404C2B89BA8D651BB542AD6886502B4A225D2B8869C4B46608625A49A46BA5F3DDD2E7E8CD15D39DDFBA70BC63D33A59B3B14764DC389934E50899397DE21B9C6187ACFB9735527D928C1B3F498E3872A6ECEF9372E7CE1DFF06BF48EBCF10D379F44A1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911BC62244F0A87920A62D2F906DC836CD06649B92A85BC4B4F148C925EE98E68E69CD90B85610D38869CD8DD4BE837330A5E3DBD2E7E85D29A63D527A4A0031AD2446D6962EC691CDDADC51F0F06B030FE3010B63112278C0C313B01EB9612C42048F9A07174596178869C4B46603625A49D46D2CDBA8156A4533845A5112E95A414C23A6354310D34A225D2B9DEF963E47474C77D2EDF218319D9700A58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C80D63112278D43C10D39617C836649B6603B24D49D42D62DA78A4E412774C73C7B466485C2B8869C4B4E6466ADFC13998D2F16DE97374C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623378C4588E051F3E0A2C8F202318D98D66C404C2B89BA8D651BB542AD6886502B4A225D2B8869C4B46608625A49A46BA5F3DDD2E7E888E94EBA5D1E23A6F312A07431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB9612C42048F9A0762DAF202D9866CD36C40B62989BA454C1B8F945CE28E69EE98D60C896B05318D98D6DC48ED3B3807533ABE2D7D8E8E98F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE486B108113C6A1E5C14595E20A611D39A0D88692551B7B16CA356A815CD106A4549A46B05318D98D60C414C2B8974AD74BE5BFA1C1D31DD49B7CB63C4745E02942EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623378C4588E051F3404C5B5E20DB906D9A0DC8362551B78869E391924BDC31CD1DD39A2171AD20A611D39A1BA97D07E7604AC7B7A5CFD111D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E109588FDC3016218247CD838B22CB0BC434625AB30131AD24EA36966DD40AB5A21942AD288974AD20A611D39A2188692591AE95CE774B9FA323A63BE976798C98CE4B80D2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE486B108113C6A1E8869CB0B641BB24DB301D9A624EA16316D3C5272893BA6B9635A3324AE15C434625A7323B5EFE01C4CE9F8B6F4393A62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911BC62244F0A879705164798198464C6B3620A69544DDC6B28D5AA1563443A8152591AE15C434625A330431AD24D2B5D2F96EE97374C47427DD2E8F11D3790950BA18F3666FDE6878F8358187F18085B108113CE0E109588FDC3016218247CD03316D79816C43B6693620DB9444DD22A68D474A2E71C734774C6B86C4B58298464C6B6EA4F61D9C83291DDF963E47474C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72C35884081E350F2E8A2C2F10D38869CD06C4B492A8DB58B6512BD48A6608B5A224D2B58298464C6B8620A69544BA563ADF2D7D8E8E98EEA4DBE531623A2F014A1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911BC62244F0A87920A62D2F906DC836CD06649B92A85BC4B4F148C925EE98E68E69CD90B85610D38869CD8DD4BE837330A5E3DBD2E7E88869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476E188B10C1A3E6C14591E505621A31ADD980985612751BCB366A855AD10CA1569444BA5610D38869CD10C4B49248D74AE7BBA5CFD111D39D74BB3C464CE72540E962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72C35884081E350FC4B4E505B20DD9A6D9806C5312758B98361E29B9C41DD3DC31AD1912D70A621A31ADB991DA77700EA6747C5BFA1C1D31EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C80D63112278D43CB828B2BC404C23A6351B10D34AA26E63D946AD502B9A21D48A9248D70A621A31AD1982985612E95AE97CB7F4393A62BA936E97C788E9BC04285D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476E188B10C1A3E68198B6BC40B621DB341B906D4AA26E11D3C6232597B8639A3BA63543E25A414C23A6353752FB0ECEC1948E6F4B9FA323A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB9612C42048F9A07174596178869C4B46603625A49D46D2CDBA8156A4533845A5112E95A414C23A6354310D34A225D2B9DEF963E47474C77D2EDF218319D9700A58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C80D63112278D43C10D39617C836649B6603B24D49D42D62DA78A4E412774C73C7B466485C2B8869C4B4E6466ADFC13998D2F16DE97374C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623378C4588E051F3E0A2C8F202318D98D66C404C2B89BA8D651BB542AD6886502B4A225D2B8869C4B46608625A49A46BA5F3DDD2E7E888E94EBA5D1E23A6F312A07431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB9612C42048F9A0762DAF202D9866CD36C40B62989BA454C1B8F945CE28E69EE98D60C896B05318D98D6DC48ED3B3807533ABE2D7D8E8E98F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE486B108113C6A1E5C14595E20A611D39A0D88692551B7B16CA356A815CD106A4549A46B05318D98D60C414C2B8974AD74BE5BFA1C1D31DD49B7CB63C4745E02942EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623378C4588E051F3404C5B5E20DB906D9A0DC8362551B78869E391924BDC31CD1DD39A2171AD20A611D39A1BA97D07E7604AC7B7A5CFD111D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E109588FDC3016218247CD838B22CB0BC434625AB30131AD24EA36966DD40AB5A21942AD288974AD20A611D39A2188692591AE95CE774B9FA323A63BE976798C98CE4B80D2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE486B108113C6A1E8869CB0B641BB24DB301D9A624EA16316D3C5272893BA6B9635A3324AE15C434625A7323B5EFE01C4CE9F8B6F4393A62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911BC62244F0A879705164798198464C6B3620A69544DDC6B28D5AA1563443A8152591AE15C434625A330431AD24D2B5D2F96EE97374C47427DD2E8F11D3790950BA18F3666FDE6878F8358187F18085B108113CE0E109588FDC3016218247CD03316D79816C43B6693620DB9444DD22A68D474A2E71C734774C6B86C4B58298464C6B6EA4F61D9C83291DDF963E47474C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72C35884081E350F2E8A2C2F10D38869CD06C4B492A8DB58B6512BD48A6608B5A224D2B58298464C6B8620A69544BA563ADF2D7D8E8E98EEA4DBE531623A2F014A1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911BC62244F0A87920A62D2F906DC836CD06649B92A85BC4B4F148C925EE98E68E69CD90B85610D38869CD8DD4BE837330A5E3DBD2E7E88869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476E188B10C1A3E6C14591E505621A31ADD980985612751BCB366A855AD10CA1569444BA5610D38869CD10C4B49248D74AE7BBA5CFD111D39D74BB3C464CE72540E962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72C35884081E350FC4B4E505B20DD9A6D9806C5312758B98361E29B9C41DD3DC31AD1912D70A621A31ADB991DA77700EA6747C5BFA1C1D31EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C80D63112278D43CB828B2BC404C23A6351B10D34AA26E63D946AD502B9A21D48A9248D70A621A31AD1982985612E95AE97CB7F4393A62BA936E97C788E9BC04285D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476E188B10C1A3E68198B6BC40B621DB341B906D4AA26E11D3C6232597B8639A3BA63543E25A414C23A6353752FB0ECEC1948E6F4B9FA323A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB9612C42B42F1E8303BDB27EF5233238B0CDFFC128EF0DC96E993EF33765D25B8E75DF848B22C38198464C6B3620A69544DDC6B28D5AA1563443A8152591AE15C434625A330431AD24D2B5D2F9EEBECED13BC7E4C488E91C5A07F958C474DE02972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623378C4588621EBB76AE954D6B975652FA07B2637B9F0C0DF9F1A3B5373838205BB7F6496F6FAFFCE6DC5B65E6AF70679BAE25B24D4988A42E98B90B945AD10CA1569404B56224EA0831ED89C4B58298464C6B86A48EB3DC1CA0747C1B9FA3FB77F37B88E97C6607ED5F20A6F396B67431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB9612C42A43C82905EF3F25FCBA675CBDB03FA770D8D7A313D301084744F4B4AAB644720B497B815C40281BB40B90B5433845A5112754BAD188F945CE23FE2F01F713443E25A414C23A6353752FB0EC4B4D2F1AD9EA3FB57DF780F31FDC6D91D747F8998CE5BD2D2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE486B108D13FFD74991C3E61A513D23A62348BE9FEFE5DB2654BAF6CDBD6A75FA7DD22DBDA285A412C1010D38869CD106A4549D42DB5623C527209318D98D60C896B05318D98D6DC48ED3B10D34AC7B7A5AF5910D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E109588FDCA8596CDDF484AC79E5AF65E3FA953261C27803D4118D4631BD73E7EEEAEEE85ED9BE7D67C737F121B2CDF3880502621A31AD1942AD2889BAA5568C474A2E21A611D39A2171AD20A611D39A1BA97D07625AE9F8B6F4350B62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911B350B04020241AB2216088869C4B4E606625A49D42DB5623C527289E30AC715CD90B85610D38869CD8DD4BE0331AD747C5BFA9A0531EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C88D9A05020181A055110B04C434625A730331AD24EA965A311E29B9C47185E38A66485C2B8869C4B4E6466ADF8198563ABE2D7DCD8298F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE66414C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72A366814040206855C40201318D98D6DC404C2B89BAA5568C474A2E715CE1B8A21912D70A621A31ADB991DA7720A6958E6F4B5FB320A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB951B340202010B42A62818098464C6B6E20A69544DD522BC623259738AE705CD10C896B05318D98D6DC48ED3B10D34AC7B7A5AF5910D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E109588FDCA859201010085A15B140404C23A6353710D34AA26EA915E391924B1C5738AE6886C4B58298464C6B6EA4F61D8869A5E3DBD2D72C8869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476ED42C10080804AD8A582020A611D39A1B88692551B7D48AF148C9258E2B1C573443E25A414C23A6353752FB0EC4B4D2F16DE96B16C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623376A160804048256452C1010D38869CD0DC4B492A85B6AC578A4E412C7158E2B9A2171AD20A611D39A1BA97D07625AE9F8B6F4350B62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911B350B04020241AB2216088869C4B4E606625A49D42DB5623C527289E30AC715CD90B85610D38869CD8DD4BE0331AD747C5BFA9AA5D9627AD34BF2E36756CB5B4FFB75397AF2384FA2A3B7E9B59FCB2F5E5E2FFD325EA6FECADBE4B528B93600002DD949444154846366CABE478BE48EEF98CA873B36C9CF7FF60B59DF57CD3C7EAABC6DD609327398ED0C7F9C3B77EE78BF81793DC4741EAFD2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE6669B098DE2CB79C73AC5CB96C8B7CE1C7EBE5BF9F31C39308BDADFF2C9FFBF887E4EABB9F70EF4D38E70AF9BB6F7E51CE9839DEBD9E3DDEFFB5EB3DF7DD9BE5FDEFFDA43C2D43EEF5ABEEFA917CEE2367EE2DC6DFC46D751B384C07313D0C9CC45BA58B3131C5A87A091E7EB9E0613C60612C42040F787802D623376A160804048256452C1010D38869CD0DC4B492A85B6AC578A4E412C7158E2B9A2171AD20A611D39A1BA97D07625AE9F8B6F4354B43C574AFDCF789F7C9FC2F3DD4FAF6B7AE582F97FF5A2CA657CB6767CF92EB566E6B8D197FF687E5FD539E95BB973CD9EA8F39EC0AF9E9C62FC949130FD9433077FC9E3F4B346B97DE2447CCFD54FDCE985365C1EFCD96A76EBFA72DA917FED5B3B2E883A774FC65EEDCB9E33BA63A8010319D07AF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB951B340202010B42A62818098464C6B6E20A69544DD522BC623259738AE705CD10C896B05318D98D6DC48ED3B10D34AC7B7A5AF591A27A607D6FDA3FCE9FBCF92EB966D9553E59096EC4D89E957FFF65A39EA3D37B4E85C75D7E372F347E6B4E2E796FCA99C32EF9A56FCBEAF3C2EDFF968FD7AEE788FBDA337F492FCCFF127CA9F0DEE9471A75D213F79E48B72FAF4EACEECEA8EE8CFBEF79DADED3E64C28764C5FABBE5F4C9B514CF9D3B777CC7D61D508898CEC357BA18F3666FDE6878F8358187F18085B108113CE0E109588FDCA859201010085A15B140404C23A6353710D34AA26EA915E391924B1C5738AE6886C4B58298464C6B6EA4F61D8869A5E3DBD2D72C0D12D303B2E2AEAB65CEEFDCECBF71D5DB5B4CF7CAE27947CBC2259B64D2855F930DF75F22133BFE6AE9A77E43E6DEF4131933F97A79A5E73A79ABE48EEFF8B028EC59F155993AE7D2D6ABB73FBD4D2EFDD549ED1143AF3E24B38F3ABF25D3AFF9E1CB72E3F94755EFE5CE9D3BBE3DFD010788E93C84A58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C88D9A05020181A055110B04C434625A730331AD24EA965A311E29B9C47185E38A66485C2B8869C4B4E6466ADF8198563ABE2D7DCDD22031BD596EAB9E29FDF1EA99D2878C7DB77CE9AB17CA03977C421E1DDABDB798DEFEAC2C38FC34B9676840AEFAF6F372F345B31CA59E158B2A79FCFBADD7FEFA853EF9C091ABF2C6BFFD30F7799D9D958B2F91D90BEF94F0A8909FF5DC22C7BB5F59B4EF30E5B26FC99ADBE6CBC437715B3BB77B2431627A24946C4CE962B44F1E9D113CFCBAC1C378C0C25884081EF0F004AC476ED42C10080804AD8A582020A611D39A1B88692551B7D48AF148C9258E2B1C573443E25A414C23A6353752FB0EC4B4D2F16DE96B960689E95EB9E763EF93074FB8546EB8ECBFC8D16FF9A92C185BCBE7F88EE9ED2F7C4B26CDFA408BCCAD4F6C96CB4F9FEA29F53C29EF9D3647BE3B34D892DABF3BE5E1ACF17B3FCF5A3F7E87DCF7B16364FEED6BE5D0B98B64DD430B65B2BEB5A755711DDE5F5DBD3FF14DDBD668C346D01D4E4CF7F5F5C9C68D1BE589279E9077BCE31D23F8B4837FC88B2FBE28C71E7BECC1FF4547F80DE1E141C1C378C0C25884081EF0F004AC476ED42CB6BC76ADECDAF173E9DF3520E327B83B00DAB076ED1A9221FFFBD3EDF79A1A6CDC3828BBFA87DFE8934EFB13993CED54F715D6ADFA70AB3F1C8F9D3B87FF5CF7810DE9BCBE6660BF5B32E7DDF7BA317D1BBF29DB367F6FD8DC18A83E76707074F1D8DABB5BB66DDBEDBE6BDC39F2980BE5C8E33EE85EA656A8154D086A454988502BC622441C573C8FB856FAFB9E91CDAFDFD41AB4AFE3ECEE6AF7DCBF9FE3B79FE5CDEFEDACCE93366D1A1C7643264F3D514E3AFD463786E3AC3FCE720EE6D2C37566CDF23708BB37333B0D12D3D196577279C1B477B6EE8A8EC5B43E4E23DC59BD74F52372F6CCFA59CEED4FD85EFDEDE1F6B7170F3DD07AFCC648C7EF5B4CDB6336E6DEF0A83CF4E9B3DA536AD029A683B81EDAF3E88F91CE5D6E5B758B46DEA6C4744F4F4FB543DB2403D559FEB469D364DDBA7572F2C9278FFC430FE291A5FF2BD16847050FBF82F0301EB030162182073C3C01EB911B350BEE6CE3CE36AD8AF8CE36EE98E68E69CD0DEE985612754BAD188FD45D8F1C5738AE6886C4B5C21DD3DC31ADB991DA7770C7B4D2F16DE96B96E68AE9482E77CA62BD633AC8DEC7363D2267ECF991C136AAE86FF58EE9918EEF9CABFD99ADC0EE983EEFF33F92073F79A67FBBEAC5627ADC9E3BA6473A77B96DDD6BD3F6FB42A7980E427AC3860DADBF993163861C7EF8E13276EC58844A07C5D2C5D8F1D1A33284875F3678180F58188B10C1031E9E80F5C88D9A05020181A055110B04C434625A730331AD24EA965A311E29B9C47185E38A66485C2B8869C4B4E6466ADF8198563ABE2D7DCD323AC5F473DF9049A75C2C878CBF401EDBB064FF62FAB0BFC91ABF6F315D3D6EE4B78F930577AF97F3BEFCB83CF80773FCEA54BDBDC4F49BB6AD7B6DDA7E5F5031BD6AD5AAD6D820A4A74C99E2FEAE7402BA0F1F651D58F80583073C3C01EB911BC62244F0808727603D72A366814040206855C40201318D98D6DC404C2B89BAA5568C474A2E715CE1B8A21912D70A621A31ADB991DA7720A6958E6F4B5FB38C4A31DD8447799CF7F947AB3BA6F7FD288FC32E5C246BEE7F731EE5A182D9A7CEC87B5BB76E95B7BCE52DC93F289D80C94946C98BB0F00B050F787802D623378C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE661995625A7A1EAF7EDCF0CCFAC70D933F7ED8F1FE8AF572F909ABF2C6FFDA0C4FBDA3B7E296F932E7CAFBF6F9E3879DEF871F3F9CFE266E6BC766EF37ECEFEF97091326B4C60D0DF36B42A51370BF1BD6E001B0F08B030F787802D623378C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE6619A562FAC94A34CF6989E985DF7E5E165DE47F0D72E3F23F971967FD9184E73A2F5FF788BC6BEC5379E3A7473FA6D8B1062B17CF97D90BEF9331875D213FEBB9458E773F16BF5E3E77CEDBE5EA653DD27E0675F5238E6FD6B6766CF68842BDD31A313D225CC8A50853E99D53F4F1A3AE0B0F5B3258188B10C1031E9E80F5C88D9A05020181A055110B04C434625A730331AD24EA965A311E29B9C47185E38A66485C2B8869C4B4E6466ADF8198563ABE2D7DCD323AC5B4F4CA9DD5B39E2FA99EF57CE8B97F21AB1FBE52A6B739D90F148E3BFD7A79E989EBE4ADD9E3DB1FB657D0B3F21B3275F6C5ADD76FFD717537F6197677757FF5438713667DA0F5DE8D8FBC2CD79C7D5415BF79DBBAD7C6EFE705C4F47E00456F972EC6E8E3475D171E7EC9E0613C60612C42040F787802D623376A160804048256452C1010D38869CD0DC4B492A85B6AC578A4E412C7158E2B9A2171AD20A611D39A1BA97D07625AE9F8B6F435CB2815D3226B97DE2447CCFD548BCEDC1B1E907B3F3DAF92D33B64F9E2ABE4AC85B7B55EEFBC9B3A77BCC8802CFFF21FCB1D8FAF95C34FBA48BE507DFEE4D6A7AE96CF8C3B5EAE1FDCD1FAF1C5252BEF920B4EFE25D9FEDADFCB1FBEED6CB96377FF5E7753E7CE9D3BDEA7C81BEF21A6F3D8952EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623376A160804048256452C1010D38869CD0DC4B492A85B6AC578A4E412C7158E2B9A2171AD20A611D39A1BA97D07625AE9F8B6F4354B73C574C723306E0DCF89DEEBB9CFEB65F1BC1365E1924D35A131A7CAA9BB9F91A765A8D51F33F97AF945CF7572749B5FEEF8CD72DB39C7CAC7976D693D4FBAF5BCE83D9FB571C55765C69C4BDB9F3CFBECD9F2D4B2A7DAFD6B7EB84A6E3CFFB8765F2477EEDCF11D531D408898CE8357BA18F3666FDE6878F8358187F18085B108113CE0E109588FDCA859201010085A15B140404C23A6353710D34AA26EA915E391924B1C5738AE6886C4B58298464C6B6EA4F61D8869A5E3DBD2D72CCD15D3FDCFCB95134F955B76EF92DBAB1F38BCF4F4A99E44ABB75996DC70A5CCBBF6EBEEBD733FB1486EFFCC6572FCE4F859D139E3C32341FEBDCCBFFD1F64D2855F93D7EFBF64CF1DD3F5541B9FBE5FAE98FD7EB96768A03D7778A6F5E207EF908F9E7342FB350B72E60E7F953BDE667AA311623A8F5CE962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72A366814040206855C40201318D98D6DC404C2B89BAA5568C474A2E715CE1B8A21912D70A621A31ADB991DA7720A6958E6F4B5FB334574CFBEF3D6C6FC7A675B266638FC8B8713269CA113273FAC4A2E3F7FD613B64DDBFAC916A6619377E921C71E44C197E6691376F5BF7FD2DF41DC4B49218595BBA1847366B7347C1C3AF0D3C8C072C8C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE663928C4B44744EF8D12404CE7912B5D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476ED42C10080804AD8A582020A611D39A1B88692551B7D48AF148C9258E2B1C573443E25A414C23A6353752FB0EC4B4D2F16DE96B16C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623376A160804048256452C1010D38869CD0DC4B492A85B6AC578A4E412C7158E2B9A2171AD20A611D39A1BA97D07625AE9F8B6F4350B62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911B350B04020241AB2216088869C4B4E606625A49D42DB5623C527289E30AC715CD90B85610D38869CD8DD4BE0331AD747C5BFA9A0531EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C88D9A05020181A055110B04C434625A730331AD24EA965A311E29B9C47185E38A66485C2B8869C4B4E6466ADF8198563ABE2D7DCD8298F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE66414C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72A366814040206855C40201318D98D6DC404C2B89BAA5568C474A2E715CE1B8A21912D70A621A31ADB991DA7720A6958E6F4B5FB320A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB951B340202010B42A62818098464C6B6E20A69544DD522BC623259738AE705CD10C896B05318D98D6DC48ED3B10D34AC7B7A5AF5910D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E109588FDCA859201010085A15B140404C23A6353710D34AA26EA915E391924B1C5738AE6886C4B58298464C6B6EA4F61D8869A5E3DBD2D72C8869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476ED42C10080804AD8A582020A611D39A1B88692551B7D48AF148C9258E2B1C573443E25A414C23A6353752FB0EC4B4D2F16DE96B16C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D623376A160804048256452C1010D38869CD0DC4B492A85B6AC578A4E412C7158E2B9A2171AD20A611D39A1BA97D07625AE9F8B6F4350B62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01EB911B350B04020241AB2216088869C4B4E606625A49D42DB5623C527289E30AC715CD90B85610D38869CD8DD4BE0331AD747C5BFA9A0531EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E80F5C88D9A05020181A055110B04C434625A730331AD24EA965A311E29B9C47185E38A66485C2B8869C4B4E6466ADF8198563ABE2D7DCD8298F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4FC07AE446CD02818040D0AA880502621A31ADB981985612754BAD188F945CE2B8C271453324AE15C434625A7323B5EF404C2B1DDF96BE66414C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F0808727603D72A366814040206855C40201318D98D6DC404C2B89BAA5568C474A2E715CE1B8A21912D70A621A31ADB991DA7720A6958E6F4B5FB320A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B01EB951B340202010B42A62818098464C6B6E20A69544DD522BC623259738AE705CD10C896B05318D98D6DC48ED3B10D34AC7B7A5AF5910D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E109588FDCA859201010085A15B140404C23A6353710D34AA26EA915E391924B1C5738AE6886C4B58298464C6B6EA4F61D8869A5E3DBD2D72C8869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F004AC476ED42C10080804AD8A582020A611D39A1B88692551B7D48AF148C9258E2B1C573443E25A414C23A6353752FB0EC4B4D2F16DE96B16C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F787802D61B2E3736BCBE54766E5F6B830F92E8B0C38F93E9FFEADFBA6F834040206842C40201318D98D6DC404C2B89BAA5568C474A2E715CE1B8A21912D70A621A31ADB991DA7720A6958E6F87BB66F12347D6434C8F8C53578C424CE72D73E962CC9BBD79A3E1E1D7041EC60316C62244F080872760BD383706077AA567E38F65CD2BF7CAF66DEB6470D0C68EE6686868B76CDBB65D7A7AB6CA09A75C2CA79C866CD3F544B62989BA8D0502629A5AD10CA1569404B5E24988A4E412621A31AD79121F5710D38869CD8DD4BE0331AD747C1B5FB3F877F37B88E97C6607ED5F20A6F396B67431E6CDDEBCD1F0F06B020FE3010B63112278C0C313B09EE64610D2EB577FAFFABF1F54327A7B6BC0E0C0D0A817D3BB770721DD2B5BB6F456DF6577EB7BA52E0210080804AD8A582020A611D39A1B88692551B7D48AF1E0B8622C4244AD781E71AD20A611D39A21A97D07625AE9F856AF59FCAB6FBC87987EE3EC0EBABF444CE72D69E962CC9BBD79A3E1E1D7041EC60316C62244F080872760BD7F7EEE3199F6965F3821ADEF8E66313D3838205BB7F6B5EE901E1A1AD2AFD46A5317018869C4B426492C1010D38869CD0D649B92A85B6AC578705C311621A2563C8FB85610D38869CD90D4BE0331AD747C5BFA7A1631EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E80C8CE1DAFC99A97EE96D75F5D2A13268C8FDF6EF52BB75BDD65ECA56E7260835E0C8F1ED9B2659BF4F5F549E4A3DB5B99BA08404C23A6354162818098464C6B6E20DB9444DD522BC683E38AB10811B5E279C4B58298464C6B86A4F61D8869A5E3DBD2D7B38869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F00444906DC836CD09048292A8DB5820502BD48A6608B5A224A8154F82674CC73CA8154F243EAE20A611D39A2188692551B771AD74BE5BFA7A1631DD49B7CB63C4745E02942EC6BCD99B371A1E7E4DE0613C60612C42040F78780288697EFCD0320281602C42145F1421A611D39A21D48A92A85B6AC578A4E412FF12877F89A31912D70A621A31ADB991DA7770C7B4D2F16DE9EB59C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F7878028869C4B46504B2CD58842816088869C4B46608B5A224EA965A311E29B98498464C6B86C4B58298464C6B6EA4F61D8869A5E3DBD2D7B38869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F00410D38869CB08649BB108512C1010D38869CD106A4549D42DB5623C527209318D98D60C896B05318D98D6DC48ED3B10D34AC7B7A5AF6711D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E10920A611D39611C8366311A2582020A611D39A21D48A92A85B6AC578A4E412621A31AD1912D70A621A31ADB991DA7720A6958E6F4B5FCF22A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313404C23A62D23906DC62244B140404C23A63543A8152551B7D48AF148C925C434625A3324AE15C434625A7323B5EF404C2B1DDF96BE9E454C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F08087278098464C5B4620DB8C458862818098464C6B86502B4AA26EA915E391924B8869C4B466485C2B8869C4B4E6466ADF8198563ABE2D7D3D8B98F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4F00318D98B68C40B6198B10C50201318D98D60CA1569444DD522BC623259710D38869CD90B85610D38869CD8DD4BE0331AD747C5BFA7A1631EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E00621A316D19816C3316218A0502621A31AD1942AD2889BAA5568C474A2E21A611D39A2171AD20A611D39A1BA97D07625AE9F8B6F4F52C62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01C43462DA3202D9662C42140B04C434625A33845A5112754BAD188F945C424C23A63543E25A414C23A6353752FB0EC4B4D2F16DE9EB59C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F7878028869C4B46504B2CD58842816088869C4B46608B5A224EA965A311E29B98498464C6B86C4B58298464C6B6EA4F61D8869A5E3DBD2D7B38869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F00410D38869CB08649BB108512C1010D38869CD106A4549D42DB5623C527209318D98D60C896B05318D98D6DC48ED3B10D34AC7B7A5AF6711D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E10920A611D39611C8366311A2582020A611D39A21D48A92A85B6AC578A4E412621A31AD1912D70A621A31ADB991DA7720A6958E6F4B5FCF22A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313404C23A62D23906DC62244B140404C23A63543A8152551B7D48AF148C925C434625A3324AE15C434625A7323B5EF404C2B1DDF96BE9E454C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F08087278098464C5B4620DB8C458862818098464C6B86502B4AA26EA915E391924B8869C4B466485C2B8869C4B4E6466ADF8198563ABE2D7D3D8B98F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4F00318D98B68C40B6198B10C50201318D98D60CA1569444DD522BC623259710D38869CD90B85610D38869CD8DD4BE0331AD747C5BFA7A1631EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E00621A316D19816C3316218A0502621A31AD1942AD2889BAA5568C474A2E21A611D39A2171AD20A611D39A1BA97D07625AE9F8B6F4F52C62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01C43462DA3202D9662C42140B04C434625A33845A5112754BAD188F945C424C23A63543E25A414C23A6353752FB0EC4B4D2F16DE9EB59C4B4E7DBD53DC474DEF2972EC6BCD99B371A1E7E4DE0613C60612C42040F7878028869C4B46504B2CD58842816088869C4B46608B5A224EA965A311E29B98498464C6B86C4B58298464C6B6EA4F61D8869A5E3DBD2D7B38869CFB7AB7B88E9BCE52F5D8C79B3376F343CFC9AC0C378C0C25884081EF0F00410D38869CB08649BB108512C1010D38869CD106A4549D42DB5623C527209318D98D60C896B05318D98D6DC48ED3B10D34AC7B7A5AF6711D39E6F57F710D379CB5FBA18F3666FDE6878F8358187F18085B108113CE0E10920A611D39611C8366311A2582020A611D39A21D48A92A85B6AC578A4E412621A31AD1912D70A621A31ADB991DA7720A6958E6F4B5FCF22A63DDFAEEE21A6F396BF7431E6CDDEBCD1F0F06B020FE3010B63112278C0C313404C23A62D23906DC62244B140404C23A63543A8152551B7D48AF148C925C434625A3324AE15C434625A7323B5EF404C2B1DDF96BE9E454C7BBE5DDD434CE72D7FE962CC9BBD79A3E1E1D7041EC60316C62244F08087278098464C5B4620DB8C458862818098464C6B86502B4AA26EA915E391924B8869C4B466485C2B8869C4B4E6466ADF8198563ABE2D7D3D8B98F67CBBBA8798CE5BFED2C598377BF346C3C3AF093C8C072C8C4588E0010F4F00318D98B68C40B6198B10C50201318D98D60CA1569444DD522BC623259710D38869CD90B85610D38869CD8DD4BE0331AD747C5BFA7A1631EDF976750F319DB7FCA58B316FF6E68D86875F1378180F58188B10C1031E9E00621A316D19816C3316218A0502621A31AD1942AD2889BAA5568C474A2E21A611D39A2171AD20A611D39A1BA97D07625AE9F8B6F4F52C62DAF3EDEA1E623A6FF94B1763DEECCD1B0D0FBF26F0301EB030162182073C3C01C43462DA3202D9662C42140B04C434625A33845A5112754BAD188F945C424C23A63543E25A414C23A6353752FB0EC4B4D2F16DE9EBD983404C0FC8BA9FFF93AC5ABFAD456AD2D4A3E41D27FF6B19E7B9B9DEA6D77E2EBF7879BDF4CB7899FA2B6F93138E9939EC78F7C79D9D1D9BE4E73FFB85ACEFAB3E69FC5479DBAC1364E6E46166CE1D5FCD556C5B3BB77B1F31627A1F60F6F172E962DCC734A3E66578F8A58287F18085B108113CE0E10920A611D39611C8366311A2582020A611D39A21D48A92A85B6AC578A4E412621A31AD1912D70A621A31ADB991DA7720A6958E6F4B5FCF8E6A31DDFFDAE372ED8273E4CF96F53A4A634FFB3DF9C1B76F96F3DF3EC5BD2E5BFF593EF7F10FC9D5773FE15E9F70CE15F277DFFCA29C3173BC7B7DB8CE73DFBD59DEFFDE4FCAD332E4865D75D78FE4731F39732FD19D3BBEE4B6BA0D1CA683981E064EE2ADD2C598986254BD040FBF5CF0301EB030162182073C3C01C43462DA3202D9662C42140B04C434625A33845A5112754BAD188F945C424C23A63543E25A414C23A6353752FB0EC4B4D2F16DE9EBD9D12BA6B73F2B0B0E3F4DEE191A68111A7FF687E5BF4D7956EE58F2644D6CCCA9F2C39757C8F947AA6C5E2D9F9D3D4BAE5B59DF591DC6BFBF1A7FF79EF1630EBB427EBAF14B72D2C4433CF1446FEDD29BE488B99F6ACFB3E0F766CB53B7DFD396D40BFFEA5959F4C153DA7F993B5EA4DCB6B637620401627A04903A86942EC68E8F1E95213CFCB2C1C378C0C25884081EF0F00410D38869CB08649BB108512C1010D38869CD106A4549D42DB5623C527209318D98D60C896B05318D98D6DC48ED3B10D34AC7B7A5AF6747AD985E79E72532FB923B5B746EFCEEB372CD05B5087E75C537E53FCDF9504B12FFDAA77E203FFE5FEF69DDBDFCEADF5E2B47BDE786D6F8ABEE7A5C6EFEC89C56FCDC923F9553E65DD38ADFF795C7E53B1FAD5F6FBD90FA7F432FC9FF1C7FA2FCD9E04E1977DA15F29347BE28A74FAFE4777537F667DFFB4EB96ED9563964C28764C5FABBE5F4C995E4CE1D5FCD596C5B53DB3FCC6B88E961E024DE2A5D8C892946D54BF0F0CB050FE3010B63112278C0C313404C23A62D23906DC62244B140404C23A63543A8152551B7D48AF148C925C434625A3324AE15C434625A7323B5EF404C2B1DDF96BE9E1DBD627A7125A617DE29E14EE7357DB7C82FB7390DC8924FFC3B99F7A5C7E5D073FF42563F7CA54C975E593CEF6859B864934CBAF06BB2E1FE4B64627BBCC8D24FFD86CCBDE9273266F2F5F24ACF75F2D68EF7E2B067C55765EA9C4B5B2FDFFEF436B9F45727B5870CBDFA90CC3EEAFC9614BFE6872FCB8DE71F25B9E3A5E0B6B6376C84C1FEC4745F5F9FBCF4D24B72F2C9278FF0130FEE61A58B71B4D382875F4178180F58188B10C1031E9E00621A316D19816C3316218A0502621A31AD1942AD2889BAA5568C474A2E21A611D39A2171AD20A611D39A1BA97D07625AE9F8B6F4F5ECA815D32B16CF97390BEF933187FFB1BCD2FB671D32B9434CCF5D24AB1F5A28D33B1EFB71D5B79F979B2F9AE5A8F6AC5854C9E6DF6FBDF6D72FF4C907DE7E987BBFB3B3B24388FFACE71639DEFDD6E166B9ED9C63E5E3CBB6C894CBBE256B6E9B2FCF678E9F58705B3BB77B24F1BEC4746F6FAF6CDEBC5976EEDC29CF3EFBACBCE31DEF18C9C71DF4635E7CF14539F6D8630FFAEF39D22F080F4F0A1EC60316C62244F0D83F8F811DCFCBF69EFF233BB6ADF28347796FE7CE5DB2BBFA4FE9479FFC19F74DFA367E53B66DFE9EF4EF1A90F113DC89457BDC40F5E4B2C141FFBB16ED371B1A6CEDDD2DDBB6ED1E76EB8E3CE64239F2B80FBA315B5EBB5676EDF8F9B03C76ED1A92A1D18543366E1C945DFDC36FF449A7FD894C9E76AAE3B16ED5875BFDE1F263E7CEE13FD77D60433AAFAFA91FC737DCE6CC79F7BDEE6D6A855AD184A0569444DD522BC683E38AB10811B5E279C4B5D2DFF78C6C7EFDA6D6A07D1D677757A732FDFB397EFB59DEFCDECEEA3C69D3A6C1613764F2D413E5A4D36F746338CEFAE32CE7602E3D5C67D62CEF55DD9B999D512BA65FB8EF729935FF2F5B5FF7E2AF3C2A5FF9E859ADBBA05F5C7E87FCE7B33ED6BA6BF9D76F7854FEE1D367C9F617BE2593667DA035F6D62736CBE5A74FF5987A9E94F74E9B23DF1D1A945B57AC97CB7F6D867FBFDDDB21F77DEC18997FFB5A39B492DEEB2AE93DB9FD5E1DA8B80EEFAF7EE877E4E1ACF10B6562B16D8D366C04DD584CF7F4F4C8860D1B5A7F3965CA1499366D9AAC5AB54A4A26E00836ABB1434AFF57A2C67ED1116E183C3C2878180F58188B10C163DF3C36AD5D2AEB577F5FB6F7BD2443BB87AA8B003F76B4F6B66FEF932D5BB656FF81B75F7EF988D972D67FE4EE145DCBD4DD29DCD9C69D6D9A1FF19D6DDC31CD1DD39A1BDC31AD24EA965A311E1C578C4588A815CF23AE15EE98E69C543324B5EFE08E69A5E3DBD2D7B3A3564C8BAC977B3EF11E59503DB223FCEF90B1EF9677FF9BFF27CB56D6775F4C38F77A59F9C0B57252F59C677D9C4618B374F52372F6CC433CD5ED4F563FA4F8CED60F290E2FA6ED9120732BE9FD5025BDE3FF758AE9750F2D907BE61DD37A84C8C8C62F94A13D8F0A39F06D8DB76CFF7D15D35BB66C690BE91933664890D2FABFD209A89F3B1A5B58F85583073C3C01EB911BC62244F0D89BC72F4F7D49D6BC72AFECDAB9BEFDE6C120A67B7BB7494FCFD64AB0DB9DA188E9F612B782D44500621A31AD59120B04C434625A7303D9A624EA965A311E1C578C4588A815CF23AE15C434625A3324B5EF404C2B1DDF96BE9E1DC5627A872CBFE54239EBCA1F7A427B7AE1511A2F568FD2985EF5F58EE9207B1FDBF4889C117E94B0F37F2316D376C7F4799FFF913CF8C9333B3FA5157B31FD3BF2C33D774C8F6CFC4219B7E78EE903DFD6BD366DD81706070765DCB8FA9F0F877F663E7DFA7427A4F58F4B27A07EEE686C61E1570D1EF0F004AC476E188B10C1A3E63138D05BDD1DFD3D79F55FFE46C68DEDF390AADE6815D3BBAB7FEFB96D5B6F7587F4B6EAD11B7BFF134AC4B45FEAD44500621A31AD59120B04C434625A7303D9A624EA965A311E1C578C4588A815CF23AE15C434625A3324B5EF404C2B1DDF96BE9E1DA5627A40967EF6B764EE75FFA74567E2BCEBE5077F325F8E19BF41BEFFBF3F23577EE9E1D6EB6FB9F81BF2DAD717C8B8E7BE21934EB9580E197F813CB661C90188E95EB9E7B78F930577AF97F3BEFCB83CF80773FCEA543D2FA617C8777FFBF88CF195982EB0AD7AE7F35E1B37C2178686796863E9041CE1263572182CFCB2C0031E9E80F5C80D6311227888F4F5FE933CFFE45595B8ED935DBBFA65C284F11E52D51B8DCFF30BCF1FDCB06167F5ECE37D3FEF1731ED973A75118098464C6B96C40201318D98D6DC40B62989BAA5568C07C7156311226AC5F3886B05318D98D60C49ED3B10D34AC7B7A5AF6747A5981E5AFB90CC3EE2FCD673A4A77CEC1BF2CAE205EE59CFCB6FF9AFD59DD4DF6E91FBFA73DB64DEB6BFAA7EDCF0D2D6E33E4A3DCAE3BCCF3F5ADD31BDEF47791C76E1225973BF3DCA6364E39BF1288FE12EA84B27A04FEFD1D583855F2F78C0C313B01EB9612C42040F112E02B808D0AA485D0420A611D39A1FB140404C23A63537906D4AA26EA915E3C171C55884885AF13CE25AE19C947352CD90D4BE0331AD747C5BFA7A76548AE99E158B2AD1FCFB2D32DF7B7197FCD631D19D561D3F6678D5B79F979BCFDB5CFDB8E199F58F1B267FFCF0717B7FD81F3F145971CB7C9973E57DFBFCF1C3CEF757573F8EB82A73FCF49E8E6D39C06DF5A9B3FF9EDE698D98DE3FAB30A274318E6CD6E68E82875F1B78180F58188B10C10331CD8F1F5A4DA42E0210D38869CD90582020A611D39A1BC8362551B7D48AF1E0B8622C4244AD781E71AD20A611D39A21A97D07625AE9F8B6F4F5EC2815D35F6DDD011DD07CEFD5DDF25B47C6CF8C7EB6FA31C3D35A3F66F8BEEA911BDFF9C8B84A3CCF6989E98595A85E74D12C4775E3F23F971967FD51EB8EEAE5EB1E91774D8F3EAF63F4CAC5F365F6C2FB64CC6157C8CF7A6E91E3EBC732EF19B15E3E77CEDBE5EA653DA2CF94CE1D2F1D52FD40B7B563B3471422A64784A93DA87431B63F789406F0F00B070FE3010B6311227820A611D35613A98B00C434625A332416088869C4B4E606B24D49D42DB5623C38AE188B10512B9E475C2B8869C4B466486ADF8198563ABE2D7D3D3B2AC574FF8B0FC884E3DED722B3F0AF9E95451F3CC551DABEB27AA6F4EC8B5BAFDDFAE3F572F91987CA9DD5B3A12FA99E0D7DE8B97F21AB1FBEB2F5A388F51FD90F1A8E3BFD7A79E989EBE4ADEED37CA7A7FAECA9EEB367B407F4573F5C3861D6075AFD1B1F7959AE39FB28C91D2FD25B6C5BDB1B36C200313D42507B86952EC6BCD99B371A1E7E4DE0613C60612C42040FC43462DA6A2275118098464C6B86C40201318D98D6DC40B62989BAA5568C07C7156311226AC5F3886B05318D98D60C49ED3B10D34AC7B7A5AF6747A59816A9EE4C9E7D9C5CBDB2B745E70B7FFB53B9FC3FBE432656BDB54F7F5F2E9D3DAF757774EBC70ED7543F7658DD01BD76E94D72C4DC4FB5C6CFBDE101B9F7D3F32A39BD43962FBE4ACE5A785BEBF5CE3B94FB5F7D54FEC7D55F93F5BD87C9BC9BBE28179D3CA5354664B57C66DCF172FDE08ED68F292E5979975C70F22FC9F6D7FE5EFEF06D67CB1DBBFBA3BBA973C757DF21735BF76CD8013788E93C84A58B316FF6E68D86875F1378180F58188B10C103318D98B69A485D0420A611D39A21B140404C23A63537906D4AA26EA915E3C171C55884885AF13CE25A414C23A6354352FB0EC4B4D2F16DE9EBD9512AA645B63FF7804C3AA5BE6BBA8568CCA972F6AF3E27CB560EB489DDF8C35572CDF9C7EDE9AF97C5F34E94854B36D5FD6AFCA9BB9F69FD80627861CCE4EBE5173DD7C9D17B46773EC7FAD6E8B9D31B577C5566543FA6A8FF9B7DF66C796AD953DA956BAA796F6CCF2B923B3E88F79C6D6D4F7C8001623A0F60E962CC9BBD79A3E1E1D7041EC60316C62244F0404C23A6AD265217018869C4B466482C1010D38869CD0D649B92A85B6AC578705C311621A2563C8FB85610D38869CD90D4BE0331AD747C5BFA7A76D48AE98065C76B8FCBE7FFF832B9EEEE271CA5F1E75C2ADFF9D28D72C1A9FFCABD2EB25996DC70A5CCBBF6EBEEF5733FB1486EFFCC6572FC647BB6F4F6EAB11C93F63C96E3F6EA47082F3D7DAAFB9B8D4FDF2F57CC7E7FEB39D6FAC62163DF2D8B1FBC433E7ACE09FA52BBCD1D9FB3ADED490E30404CE7012C5D8C79B3376F343CFC9AC0C378C0C25884081E8869C4B4D544EA2200318D98D60C890502621A31ADB9816C5312754BAD180F8E2BC62244D48AE711D70A621A31AD1992DA7720A6958E6F4B5FCF8E6A31AD68766C7A4DD66CECAFBA03327ECA2FC99133A7EB5BC976C7A675D5F81E9171E364D2942364E6F4F0109037F2BF1DB2EE5FD648F549326EFC2439E2C899ADC789ECFB9372C757F2BDD8B6EE7BABF41DC4B49218595BBA1847366B7347C1C3AF0D3C8C072C8C4588E08198464C5B4DA42E0210D38869CD90582020A611D39A1BC8362551B7D48AF1E0B8622C4244AD781E71AD20A611D39A21A97D07625AE9F8B6F4F5ECFF17000000FFFF65C148B80000400049444154ECBD0D945E6595E7BB1352210493106306A541E423825C998013F172DB3B08C4A1C77519A2AC41D488576EA3461115B587161B5098466CB4A55906045D7E412BA0D841574B83011ABB1D940E030918E5232008219F95545552DF55F7ECF764BFBBF6739EAAD40B67CD5425BFAC25CF3E5527556FFDDEFDDFE739BFBCBE3565B8F823FC81404160CA94290D0E63B5C4134F3C210B162C8057410016B10DE0018F48C08FE80D67A1153C443ADBFF4D7EFFF0271A60FAFAFA65FAF4B608A9381A1A12E9EF9F5C5B94DEBE61696F1FACFC2C233FF0AA0317CA497F76E3C80FC90B4F7F435E78E67B321A0B3D7960605806C7FED2E16B4E8483CEAE21D9B1A37822C7F8F38685E7CA31C77D249CF1FBFFF961E9DCF6E8983CFA0AD6936D07BB75EBA0F4EDA6A7FFE3695F97F9AF7E73E0F16FF7FE69E378ACFEE8ED9D5C59D11FE8C50D03E1E7CC1D9CF981DF840F9315B2620D41568C44B99215E7C175C559684556228F342BEC49D9935A87E466077B30A313D7BAEF67A720A623E0BDF90831DDDAB35F77185BFBEE13EF6C78C4E7041ECE0316CE42ABD178F4F56E94CD2FAC8C27EF0147834303F227AFFBAF32759F19CD9F869B006E02AC197237018869C4B4F5472A1010D38869EB0D649B912857B2E23CB8AE380BADC84AE49166853D297B52EB90DCEC404C1B9DB88E763F1BCF1AFF11627AFCACF6F83311D3AD3DC57587B1B5EF3EF1CE86477C4EE0E13C60E12CB44A7974EF58279BD7FF54DA37DD2F7D93F0558FF1A7F3A3FEFE3ED9BEBD4B76EEDC29EF3A27BEEA919B006E02AC537237018869C4B4F5472A1010D38869EB0D649B912857B2E23CB8AE380BADC84AE49166853D297B52EB90DCEC404C1B9DB8A6F7B3F1B3AD1F21A65B67B6C7FE0DC4746B4F6DDD616CEDBB4FBCB3E1119F1378380F58380BAD8C47D7F635B2F18FB74857C7DAE6097B8298EEEDED918E0E15D23DCD9F8B9B80260AE1AD3C9C8556B99B00C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C4D5EE67E3475FFA1162FAA5B3DBE3FE2662BAB5A7B4EE30B6F6DD27DED9F088CF093C9C072C9C8556BF5DFD6399B1CFFF0C42DACE98CC62BABBBBBB788574A7F4F6F6D98FD35CB90968A2404C3B8A4695BB09404C23A6AD4DD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5CEBBEBF474C47BE7BF51162BAB5A7BFEE30B6F6DD27DED9F088CF093C9C072C4A165B5EFCC7E215D2B74A67E7FAEC2FFBD3B326A398DEB973A078857467F18B0A47FF4566DC04781E78C5B4B3D02A77138098464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378380F58942CD8D8784F7013C04D807543EE2600318D98B6FE480502621A316DBD816C3312E54A569C07D71567A11559893CD2ACB027654F6A1D929B1DDCBF199DB8D67D7F8F988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378388FD1580CF46F934DCFFF83F4746FF493F7806A78788AEC3FFB3839F0E0B7879F868D8DE3E026809B00EB86DC4D00621A316DFD910A04C43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459614FCA9ED43A24373BB87F333A711DEDFE3E9E35FE23C4F4F859EDF16722A65B7B8AEB0E636BDF7DE29D0D8FF89CC0C379A42C7A76AE93AD2FDE25ED9BFE59FAFA7A6570D0CF9DCCD5E0E0B06CEFD8215D5D3BE5E86397CA31C74581C0C6C69F5D6E02B809B06EC8DD0420A611D3D61FA940404CC7EB0A59212B64C508F8CA75C5596885988E3CD2EB0A7B52F6A4D621B9D9C1FD9BD1896B7A7F1F3FDBFA1162BA75667BECDF404CB7F6D4D61DC6D6BEFBC43B1B1EF1398187F33016DD5D8FCB86E77E285DDBD7C8D0F050E384C181E1492FA6FBFA86A5A3A35D76ECEC15192E2D3B1B1B7FFEB5E226C079BCEAC08572D29F71136044725941B621DBAC3FD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869F6A4D621B9D98198363A71B5FBFBF8D1977E84987EE9ECF6B8BF89986EED29AD3B8CAD7DF78977363CE273020FE7B176F5AD3263DA63D2B9FD51FFE0AE6A328BE99E9E1ED9BE7DA7F4F4ECACFC5C6C6C22126E029C0762DA596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E25AB7EB404C47BE7BF51162BAB5A7BFEE30B6F6DD27DED9F088CF093C4474A3F7DC935F93CE8EE765FAF4B60868D7D1C08014AF981ECE7E6EA27EB0AF4FA47D5BB70CF417C5287FD8D84430DC04380FC4B4B3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C4B56ED781988E7CF7EA23C4746B4F7FDD616CEDBB4FBCB3E1119F1378882010A2406063E319E126809B00EB86DC4D00621A316DFD910A04AE2BF1BA4256C80A593102BE725D71165A21A6238FF4BAC29E943DA975486E7670FF6674E25AB7EB404C47BE7BF51162BAB5A7BFEE30B6F6DD27DED9F088CF093C10D3FCF243CF043701CE82574C3B0BAD723701C836649B75493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDDAE03311DF9EED54788E9D69EFEBAC3D8DA779F7867C3233E27F0404C23A63D13DC04380BC4B4B3D02A77138098464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D6ED3A10D391EF5E7D84986EEDE9AF3B8CAD7DF78977363CE273020FC43462DA33C14D80B3404C3B0BAD7237018869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDDAE03311DF9EED54788E9D69EFEBAC3D8DA779F7867C3233E27F0404C23A63D13DC04380BC4B4B3D02A77138098464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D6ED3A10D391EF5E7D84986EEDE9AF3B8CAD7DF78977363CE273020FC43462DA33C14D80B3404C3B0BAD7237018869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDDAE03311DF9EED54788E9D69EFEBAC3D8DA779F7867C3233E27F0404C23A63D13DC04380BC4B4B3D02A77138098464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D6ED3A10D391EF5E7D84986EEDE9AF3B8CAD7DF78977363CE273020FC43462DA33C14D80B3404C3B0BAD7237018869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDDAE03311DF9EED54788E9D69EFEBAC3D8DA779F7867C3233E27F0404C23A63D13DC04380BC4B4B3D02A77138098464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D6ED3A10D391EF5E7D84986EEDE9AF3B8CAD7DF78977363CE273020FC43462DA33C14D80B3404C3B0BAD7237018869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDDAE03311DF9EED54788E9D69EFEBAC3D8DA779F7867C3233E27F0404C23A63D13DC04380BC4B4B3D02A77138098464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D6ED3A10D391EF5E7D84986EEDE9AF3B8CAD7DF78977363CE273020FC43462DA33C14D80B3404C3B0BAD7237018869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDDAE03311DF9EED54788E9D69EFEBAC3D8DA779F7867C3233E27A3F1E8DCB6463ADB1F8D27EF014753F7D95F5EFDDAFF127E12044214086C6CBC3DB809E026C0BA2177138098464C5B7FA40281EB4ABCAE9015B242568C80AF5C579C855688E9C823BDAEB027654F6A1D929B1DDCBF199DB88EE63AE259E33F424C8F9FD51E7F2662BAB5A7B8EE30B6F6DD27DED9F088CF49CA63FB960764CB8B3F93CE6DBF95FEFE78EE643EEAEEEE96CECE2ED97FF6D172D29FB1B1B1E7928D8D9128576E029C07AF9876165AE5B2826C43B65997A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D3DCBF5987E4660762DAE8C435751DF1B3AD1F21A65B67B6C7FE0DC4746B4F6DDD616CEDBB4FBCB3E1119F13E3D1BE71A56CF8E3ADD2D7BBB971C2F0D0F01E21A677ECD8299D1D1DD2DB37D0F8B9906DF1F9676313797013E03CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C4D55C47FCE84B3F424CBF74767BDCDF444CB7F694D61DC6D6BEFBC43B1B1EFE9C0C0E74C9EF1EFD89EC33F42F4D216D9F9DCC627A78784876ECE8966DDB3A647070D07EA4C68A6C0B38B2B28D8D8D33E226809B00EB86DC4D00621A316DFD910A04C43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459614FCA9ED43A24373BB87F333A71ADDBFD20A623DFBDFA0831DDDAD35F77185BFBEE13EF6C78880C0C74C8E6E76F97CDEBFF5176766F97E9D3DB2A4FD4D050715EFF70E5E313F903FA98BBBA7A8BFF751542BA38C8FC414C47286C6C220F6E029C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB8D6ED7E10D391EF5E7D84986EEDE9AF3B8CAD7DF78977363CA4F8A586FF26BF7FF8138D27A7AFAF7F5431DD3FC9C4746FDFB0B4B7C75748A71D886C8B44D8D8441EDC04380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC70FF8698B60EC9CD0EC4B4D1896BDDEE07311DF9EED54788E9D69EFEBAC3D8DA779F7867E778F4F56E940DCFFDA0788FE57F9E780FF8653CA2818181E217FE75C8A9FFE54E99BACF8CE6576263C3C6C69A818D8D9128576E029C0762DA596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459E1FE8DFB37EB90DCEC404C1B9DB8E6DC4F3CA3B523C4746BBCF6E8B311D3AD3DBD7587B1B5EF3EF1CE1EC9A36BFB1AD9B2FEA7B2BD7D55E381F6F54EAEB7AE188D6E7F7F9F6CDFDED9789F653D878D8D9342B6390BADD8D8441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D189EB48F7133FF3D28E10D32F8DDB1EF9B710D3AD3DAD7587B1B5EF3EF1CE561EAFF9773DB2F18FB74857C7DAF00027BB98EEE9E9918E8E4EE9EEEE0D3F171B1BC7816C73165AB1B1893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A313D7BA5D18623AF2DDAB8F10D3AD3DFD7587B1B5EF3EB1CE6EDFB8529E79E287B2CFD4ADD9073659C5F48E1D3B8BB7ECE894DEDEFEECCFC5C6C6B120DB9C85566C6C220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C4B56E17B64788E99EF667E5B78FAF97863A6A9B23872F384AE6CF9A12C98D386A7FE12979FAB9CDC5F96D32E7D587C89187CE9769233E3FEEB2A75D9E7AE269D9BCB3F84AC5F73D64C191C5F71DE32BB57A7EF1406A7BACE3F8A110D3E38034E294BAC338E24B4FAAF2D107CE2CC4ED16E91BE597FDE90FD33B09DFCA63E3C63E191C1CFB17FEB1B1F15645B6390BADD8D8441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1896BDD2E6C928BE92E59F9777F218B3F715DA4541C5DFCF70FCA65EF59148573E7EFE5AA8FBE572EBAE9A170FEF4532E905FFEF06A39617E5BF8F858076BEFF88ABCFB8CCFCA1A89EF9D7BE1777E25577DE0C4F87D8B2FD4EAF952E3631DEBE718F939C4F4481ABBAFEB0EE3EEBFE3C43C8361EDCF0B1B1B3636D60D6C6C8C44B97213E03C10D3CE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0AF76FDCBF5987E46607AEC3E8C4B56E173689C57497DCF6E123E4AC1B3636084DD9E76DF2BEFFEF00B9E9867F6812FBF41DEBE4EAD30FDB75BC5EBEB870815CBA7A47E3B8EDE4F7C9BB673F2637AD78B8713C75BF0BE4B75BBF2647CD18FD95D6F68537AEBC520E5CFCB9F270EAB1B2F4CF17CA2337DCDC94D4CBFEFE3159FE9E63EC7469F57C91FA1E6BF3418CA3404C8F03D28853EA0EE3882F3DA94A86B53F5D6C6CD8D85837B0B13112E5CA4D80F3404C3B0BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342BDCBF71FF661D929B1DB80EA313D7BA5DD8A415D35BEFFFAACC3BE9D30D3A8B3FF713B9F5BF2F91B9C5D1C0A607E5A3AFFE53B971A85FA6EEFFDFE4896D5F92C38B77D778FEE797C8C1EFB8BC71FE85DF7950BEF281458D7AED8ABF9663965CDCA8DFF58D07E5C71F2A3FDEF840EE3FC3CFCA5FB6BD5EBE34D82BD38EBB407E73CFD572FCDCE295D6C52B9CBF78C69BE5D27B3B65CAF4F7CAAACD37C9F1FA7622AD9E5F7CCFDA1E6BEEF18FF131C4F41870329F1A2D8C7DBD1B65FD333F909E9DE53F9A64FEEAA4FCD0E0D0A0CC7EE50972F061EF0A8F9F61ED38D8D8B0B1B16E60636324CA959B00E7819876165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E6956B87FE3FECD3A24373B701D4627AEA3B9B078D6F88F26A998EE919BDF7F882CBD69B34C3BFE3279F6A14BE535237EE68D2B2F2D5ED1FC45D157513FD07E8F9C306B875CBFE4B5B26C45BBCC7CE7B764CBEDE7CA8C11E7AFFCDC5B64F195BF91A9B32E933F76C4AF35E2B446D9B1EA9B3267D1798DFA86353BE4BC37CE6C9E32FCFCDDB2F0E0D31AAF9CBEF8CEE7E48AD30E9656CF17E9AAEDB1361FD8380BC4F43841ED3A2D0D63D7F635D2BEE99EE27FF7CBE0C070F1FEC4AD7DBD897A767F7F9F6CDFDE25FA8B0019D6F1596263E33C906DCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AEA90B8B9F6DFD68728AE9EEC764E9FEC7C9CDC303F237BFDC2C9F79EBBCE427EF9217FED0216DB367C9DCB9B364DA88F32FFCD1E3F295331784F33B562D2F64F3C71A1FFBC1933BE5EC23F60B9F1F79B0FAFA7365E1B26F8BBEF5C7131DD7345E8DED9FDF26D79DF23AF9E8BDDB65F6476E910DD79D258FB778FE8C1A1FAB3FAEF1556389E99D3B77CAD6AD5BE5A1871E9237BCE10DE3FB827BF859CF3CF38CBCEE75AF93819EC7A5B7EB9F64B0EFE9E64F3C302085988EEF3FDEFCE424297A7A7AA5ABABB310D2BDCD477CD0A1EF94830E7B4FF3588B4DEBDED738EEEF1B90B6E9F95FFE39197FF9E18B1B8A2771377F16BDEDD67046FFCE4765DB8B57363E361A8FA12191FEFEC9D51BBD7DC3D2DE3EF6BFB4CC9AF37A39EAF82B028F9D5B7F283BB6FD544663A1274FC6AC74760D15B9289EC831FE90950887AC380FB2E22CB4CA6565FB0B97485FCF5363CE8EBE622E0D4FAE515AECA306A56F37F3FFA8E3FE4A661D706C80C475D671705D897B30B242562C1DE97596AC9015EB0DAE2B46A25CD3AC70FFC6FD9B75486E4FCA1ECCE854D7050BA257AD9E31FE8F4C4A31DDBDF6FB32F39873644ADBE9F2C0965BE4DFFDF61772EB8A7B65CD739B4466BE4AFEEF772E9573FEEC3F345F15DDFDE42D3273C1D90D2AD73EB44DCE3F7E4E24D4F1B09C71C022B9637850AE5DB559CE7F532ABAEDF49EE27DAD0F6DBCAFF5BE8B97CBA6BB97C92CFBD4AED5C4B57E7EFDDD1F945FB474FE329951DB634D1ED8380E7362BAA3A3A31052ED853C1A90030E3840366FDE2C471D75D438BEDA9E7FCA630F7F5FF66BFBBD7475ACADFCB093F915D3DDDD3B1BAF90EEEDEDABFC5CFC2B6244C2BFB83B0F5E05EA2CB4222B910759711E64C5596895CB0AAF98E615D3D625E9ECE015D3BC62DA7A8357811A8972252BCE83EB8AB3D08AAC441E695678C534AF98B60EC9CD0E5E316D74E2CA2BA60B1E1DAB8BB7D35858BE9DC6C2938B5F3C78EF2391527134FDD4CB64EDCF2E91C38B5F66686FA7A16FEDB172FD3D72F2FCE2BD9F47FEE97EB87805F69B1BAFC01E5B4CFBDB6C2CBEFC3EB9FBF3278DFC2A8D7AA498DE74F752B979C9A18DB71019DFF9CB6478D75B85BCFCC75A7968BBFDC04831AD427ACB962D8DBF336FDE3CD97FFFFD659F7DF691BA1B70B70F6A029EA017AF679FF8AA7475AE97E9D3DBB28F7032BE0AB4AFF0D05BB77615AFF41EFD95B10CEBF874B3B1711EC83667A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A313D7BABDE0A47CC5F448316D783E75CD4DF29F5E3720B7FFD587E5C6D5E55B0FE8DB696C29DE4EA37FD7AB9055F696EF39FD52C5B4BF62FAED5FFE95DCF5D913EDDB37D728A63F2877EE7AC5F4F8CE5F26D36A7BACCD8734EEC2C4F4BA75EB1A7F4785F4ECD9B3C3DFAFBB01C3179F2407DC14C59B2286B5372E1B1B3636D60D6C6C8C44B97213E03C10D3CE42AB5C5610D38869EB927476B0078B7B30B24256C88A11F095EB8AB3D00A311D79A4D715EEDFB87FB30EC9CD0E5C87D1896BDD5E70D28B697D3B8F9F3F718B9C76A8BD2FF436F9F6FB17C8B9C52F46D43FFA9ED167F4FD68C45B7FAC287E19E24B15D35DC52F5D3CACF14B17DFFE770FCA5D1F5F149F9DE2288AE9A572C7FB0F6FE1FC424C87B72979698FD50473E5C18DF3039D9D9DF28A57BC227B76DD0D98FD2613FC83DC14C59B2286B5372C1B1B3636D60D6C6C8C44B97213E03C10D3CE42AB5C56906DC836EB927476B0078B7B30B24256C88A11F095EB8AB3D00A311D79A4D715EEDFB87FB30EC9CD0E5C87D1896BDD5E70D28BE94FDFF1B85C7D7A7CD3EDE1E7EF9685079F266B64B8F19ED1E70CFFA4F8E586E7C9CB7F7B0C7F2B8FB77FF9BEE215D3A3BF95C77EEF5C2E1B6EF7B7F218DFF9FFFBDECAA3BFBFBF785B8AE98D6E1B1EE3B709E51AB06BFB1A79F1D95B64DB96DFC66E9DE447BDBD3D326DFA9FC85B4E6658DB53C9B03612E5CAC6C67920DB9C85566425F2202BCE83AC380BAD725941B621DBAC4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B88695C8775486E7620A68D4E5C735E309ED1DAD1E414D3AB9617A2F9638D9FF4D3F7BC28579F7C60FCA9BB1F2BDE33FA387FCFE823D715BFDCF0C4F2971B667FF9E183FEF9317FF9A1C8AA6BCE92459FBC4D46FBE587233FBFBEF8E588EB5A3C7F6EC788C7F2321F6B84B2FB237BA5F578C574FBC695B279FDCFA47BE7B3323C342C85DBDE23FE94BFFCAF537A7BFB0581109F528675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474C163E42BA2AF28C4F4C51531FDB09CB1FFA25244AB683EF2B9423C97C7CB7EF4B82C3F33BEC27AEBFD5F9579277DBAF18AEAFB37DD236F9D9BBCD5C788E760F5F567C9C265B7C9D4FD2E90273AAE91C3A78DF8A46C96AB4E39422EBAB743EC3DA55B3D5F3A8AC75ED3631DF9C8C6538F574CBF6ACEB3B2E18FB74A5F6FF97629FAB5F70431DDD5B5433A3A3A0BC13ED0C4854068A268140CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9068F42002F3C4C2E5ADD25FB9EFAB7B2FE179F94B923383DFFF34BE4E0775CDEF888BEC7F4D9470C16EF3B7D58E37DA7ABE7FB2F349C76FC65F2EC4397CA6B467CADB4EC58FD7D99B3F09CC687AFFD7521BD4F98D73C457FC9E2F40567378EAFB8E7B942981F2CAD9E2FD255DB636D3EB071166389E9C181AEE2D5D13F95E7FFF08F326D9F9D95AF3859C5F4D0D090ECD8D125DBB7EF90C1C1C1CACF8540884818D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D3BB783C79DBF9B2E0ACAF378E165F7E8B7CEF3367C96B66883CFFC0F7E43F9FF8FF36DE5F7AEAACCBE4E98E4BE5B5C5591B575E29072EFEDCAEF37F22B77E7E4921B37BE4FEEB2F9493965DD7F8F8C85753F73F7F9FFCC545DF92CD5DFBC9922BAF96338F9EDD384764BD7C61DAE172D9608FE82F5E5CB1FA3B72FAD1AF94EE17FE553E71C8C972E3507FF26AEA56CF6FFDB1EE7A602F7B194D4CEFECFA9D3CFEF08585B8DD297D7DFA5ED46D95EF55F8DDE295C6C3958F4FE40FE8E3DDB2A557C67AEB1204427C0619D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D34D1E9BE5FAF71F2DCB6EDAD2FCC8BFFFF7D364F56A7F1B861F17AF967ED711FBEDFA7C71FE92D7CBB215EDE5F1D463E5D8A1471B025B3F305262EB71C788F7B1BE3679DFE9ADABBE29F38A5FA6687F169EBC501EB9F7113B948BEF5C27579C7658F3B8D5F3A5784B90561E6BF31BBDCC623431CDB066585B6B31AC8D44B9B2B1711EC83667A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0AAE03D7611D929B1D8869A31357C474E0D1252BBF71992CFEC857C247DB4E394F7EFCF52F355EC91C3E21DB64C5E59F9425977C377CF8D44F2D971BBEF011397C96BFB77477F1B61C3377BD2DC70DC52F213CEFF839E1EF6C5D73BB5CB0F0DD8D5FB0689F98B2CFDBE4FABB6E940F9D72A47DA8B9B67ABEB4F0589BDFE4651688E92A40044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3CCAA39E76F9C3868E46DD36F39572D0FC59B9B39A1FEB69DF241BB616E74F9B2633671F28F3E716EF01F292FEF4C8A63F6C10FDCED3DA66CA8107CD97B1BF52ABE78BD4F75877FF0322A6AB8C10089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F8E6A248098AEC2442044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C883A31A0920A6AB3011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6238FCAD10B4FFD4EB6EC6C9383DF7084CC9D56F974E303ED2F3C254F3FB759FAA54DE6BCFA1039F2D0F932CAA9F92F601FED6997A79E785A36EF2CBE52DB1C3964C191327FD6185FA9D5F38BEF53DB63B5C73CC68A98AEC2412044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9C8231C75ACFAA6CC59745EE36357AFDA2C9F7ED3BCF079E9FCBD5CF5D1F7CA45373D143E3EFD940BE4973FBC5A4E98DF163E3ED6C1DA3BBE22EF3EE3B3B24686C369177EE75772D5074EAC88EE56CFAFF3B1860738C60162BA0A0781109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A6230F3FEA7E4C3EF48AE3E5C6A1FEC6C7AE2DC4F4F9414CAF972F2E5C2097AEDED1F87CDBC9EF9377CF7E4C6E5AF170E378EA7E17C86FB77E4D8E9A31C5BFE628D5C69557CA818B3F577E76EAB1B2F4CF17CA2337DCDC94D4CBFEFE3159FE9E639A7FBBD5F345EA7BACCD07318E02315D858440884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D391C7AEA31EB9EDC387CA59376C6C7E3615D3CFFFFC1239F81D97373E7FE1771E94AF7C6051A35EBBE2AFE598251737EA777DE341F9F187CA8F37BF505A0C3F2B7FD9F67AF9D260AF4C3BEE02F9CD3D57CBF1738B575A17AFC6FEE2196F964BEFED9429D3DF2BAB36DF24C7CF2A2477ABE717DFAFB6C79A3EF6DD1C23A6AB8010089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2681C3D5348E7C3764967FB7414D35D72FD92D7CAB215ED32F39DDF922DB79F2B33ECC4625DF9B9B7C8E22B7F2353675D267FECB8545E33E2736939F2ED426E58B343CE7BE3CCE629C3CFDF2D0B0F3EADF1CAE98BEF7C4EAE38ED6069F57C91FA1E6BF3818DB3404C5741211022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E421C31BEF93535E7DAADC373C241FBEEA2AE9BAE862B979784082982EDEE663E9FEC7353E7EE18F1E97AF9CB9207C958E55CB8BF7A6FE58E3633F7872A79C7DC47EE1F3230F565F7FAE2C5CF66DD1B7FE78A2E31A393CFCAEC36D72DD29AF938FDEBB5D667FE416D970DD59F2788BE7CFA8F1B18E7CDCE3A97727A6878686A5BFBF5FF6DD777AE5CB0D0D49F1B9F87EDB959326D8077AFB86A5BD7D70CC478540887818D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D381C766B9E69423E5938508D65742FFF1E63F958FEFFFC68A98EE7EF21699B9E0ECC6DFBCF6A16D72FEF173C257918E87E58C0316C91DC3835168C7B38A237FCB907D172F974D772F9359C93926AEF5F3EBEFFEA0FC62D75B8C8CEFFC6532A3B6C79A3CB0711C8E26A637ADFF177972CDA7657878587A7BFA64DF197B8F989E35E7F572D4F157047A3BB7FE50766CFBA9F4F70D48DBF4F02F13CDF306064406072797A8EFEC1A921D3B8A7F6118E3CF4187BE530E3AEC3DE18C4DEBDED7381E8B476FEFE462A13FD08B1B8A2771377F16BDEDD67046FFCE4765DB8B57363E361A8F3DF51F71C84A6805212B910759711E64C5596895CBCAF6172E91BE9EA7C6BCCEF615FFB85C6C4B26D59FAD5B07A56F37FF887FD4717F25B30E3836FC5C5C671D077BB0B807232B64C5D2915E67C90A59B1DEE0BA6224CA35CD0AF76FB80EEB90DC9E943D98D1A9AE0B16C417FC56CF18FF47A614B271926DEBFD875BFDEDE2D5CBE77E5BA6ECF33659B9FE1E39F9158FC819FB5705B3BD9D46F3BCF9C92F38EC7EB87845F59B2B42DBBF9355FE361B8B2FBF4FEEFEFC49F689E63A524C6FBA7BA9DCBCE4D0C65B888CEFFC6532BCEA9BC5ABB7CFF39FE9253FD6E6431A77918AE98E8E0ED9B2658BF4EE582DDB5FFC924C9D3AA57855F4804C9F5EBCA776F2674F956DBCB22D3ED1FC2B62E4C1BFB83B0FB2E22CB4222B910759711E64C5596895CB0AAF98E615D3D625E9ECE015D3BC62DA7A8357811A8972252BCE83EB8AB3D08AAC441E695678C534AF98B60EC9CD0E5E316D74E2CA2BA677F1E85E5BBC0AFA98F255D09FBE639D5C7DFA61A2AF7C5E7A405530DB2BA6554C3FD07E8F9CA0BF9470E49F718B697FC5F4DBBFFC2BB9EBB3278EFC2A8D3A8AE90FCA9DBB5E313DBEF397C9B45DAF987EF98FB5F2D076FB0113D3DBB76F6F0869FD0BF3E6CD9329838FCBEF1FFE44E3EFF7F5F523A69FFE86BCF0CCF76434160A6A6060B878C57403D9A4F9CF785E31CDB08E4F271B1BE7816C73165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C2B8F8175F297338E912F0DF636DFCB79867E7CA4601EF1961DDD6BBF5F48EC73644ADBE9F2C096152F434C77C9CDEF3F4C96DEB459DEFE770FCA5D1F5FA4DF35FC89627AA9DCF1FEC35B38BF10D3B53DD6F0B0767B305858D469D3CAB7A578E6996764EEDCB9327BF6ECC6DF635833ACAD8118D646A25CD9D8380F649BB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605D781EBB00EC9CD0EC4B4D1892B625A0664E517FF1F597CE93F894C3D56EE7CEE5FE4D4574E91EEFE3699D6F180BCE390F217215EB1729DFCB7FFEB35223366C8CEDADE1EC3DFCAE3ED5FBEAF78C5F4E86FE5B1DF3B97CB86DBFDAD3CC6777E3D6FE561AF7C8EAD33FEA3F4DD5D18D60C6BEB1E86B59128573636CE03D9E62CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459C175E03AAC4372B303316D74E28A98962EB9EE9483E5A3C52F3C1CCF9F6B576D96F38F5C57FC72C313CB5F6E38E295D4CDBFDFF1A07F5ECF7FD3BCE6A7D262D53567C9A24FDE26A3FD32C3919F5F5FFC72C4752D9E3F77E46379998F357DECBB3B36A18D987652080467A115C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B62BA10D35F5B78907C6A75672433CAD1DFFC7AB37CE6E8E70AF15CFE52C4653F7A5C969F197F7BE4D6FBBF2AF34EFA74E3170EDEBFE91E79EBDCE43DA8477CEDD5D79F250B97DD2653F7BB409EE8B8460E2FDFFD62D7199BE5AA538E908BEEED107B4FE956CFD7F7C9AEEBB18E78D8E32A11D3554C0884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415315DF0E8DCF48274F6473022C55B796CFFB5BCFBFF3843EE1B1E920B7FF4B05CF41F0F921973E7CBAC695DF2EDE2BDA1CF2DDE1B7ADF53FF56D6FFE29332B7F9D7FD171A4E3BFE3279F6A14BA578039051FF74ACFEBECC59784EE3F3D716D2FBFC13FCD5D5FDC52F2E9CBEA0FC858C57DCF39C5C7CF2C1D2EAF95288F7BA1EEBA83FC4289F404C57C1201022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4118FBA1F93A5FB1F27370F0FC80DABB7C979C7CE697E7EE3CA2BE5C0C59F6B1C2FBEFC2772EBE7971472BA47EEBFFE423969D9758D8F8F7C3575FFF3F7C95F5CF42DD9DCB59F2CB9F26A39F3E8F217018AAC972F4C3B5C2E1BEC69FC32C515ABBF23A71FFD4AE97EE15FE513879C2C370EF527AFA66EF57C91561F6BF3877C990562BA0A1081109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB907A28193E0000400049444154DCEC404C1B9DB822A6238F78D45DBC0DC6FEE55B7634DE5B3ABC57F466B97EC9EB65D98AF6F2EF14BF38F1D8A147658D0C378EA7CEBA4C9EEEB8545EBBEB2B76AC5A2E73167DAC71947EADADC52F539CB7E8BC5D678A2C3C79A13C72EF23CDE38BEF5C27579C7658F3B8D5F3455A7BACCD6FF4320BC47415200221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471EF168C42BA6BFBB76BB9CD37C95B39DB64D565CFE495972C977ED038DF5D44F2D971BBEF011397C96BFB77477F1B61C3377BD2DC70DC52F213CEF787FF5B5FEA5AD6B6E970B16BEBBF1EA6CFB6253F6799B5C7FD78DF2A1538EB40F35D756CF1719FF636D7E93975920A6AB0011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF27849473DED9B64C3D60E9169D364E6EC0365FEDC192FE9EB48F156209BFEB0418AAF24D3DA66CA8107CD97B1BF52ABE717DFA1B6C7BAFB1F11315D658440884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D7970542301C47415260221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E1CD54800315D858940884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39107473512404C5761221022138675E4C1C6C679901567A11559893CC88AF3202BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4C1518D0410D355980884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C415311D79144703F2C253BF93E736EF687CA66DE6ABE4B0371C2173A7554E6C7EA0FD85A7E4E9E7364BBFB4C99C571F22471E3A5FC638BDF9F72A454FBB3CF5C4D3B27967F195DAE6C8210B8E94F9B3C6F84AAD9E5F7CC3DA1E6BE5C1573F8098AE32412044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9113C36AEF9995CB8F44CB97975DF888F16E5D463E5CBFFF043F9ECE9C7C48F77FE5EAEFAE87BE5A29B1E0A1F9F7ECA05F2CB1F5E2D27CC6F0B1F1FEB60ED1D5F91779FF1595923C3E1B40BBFF32BB9EA0327564477ABE74B8D8F353CC0310E10D355380884C884611D79B0B1711E64C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E4660762DAE8C41531BD8B47F7DA5B64E6316737E92C3CE37DF29659EBE5869BEE697E6CD98F1E93E5679A9C5E2F5F5CB8402E5DBDEB95D527BF4FDE3DFB31B969C5C38DF3A7EE7781FC76EBD7E4A819539A7F7FB462E3CA2BE5C0C59F2B3F5D48F0A57FBE501EB9E1E6A6A45EF6F7C5F77D8F7D5F9156CF17A9EFB18EF633E43E8E98AE52412044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE88E9068F2EB97EC96B65D98A7699B2CFDBE4E6DFDC24EF79D39F343ED3FD877F954F1C7EB2DC38D42F53A6BF57D6EEB8598E2ADE5DE3F99F5F2207BFE3F2C639177EE741F9CA071635EAB52BFE5A8E597271A37ED7371E941F7FA8FC78E303B9FF0C3F2B7FD9F67AF9D260AF4C3BEE02F9CD3D57CBF1738B575A17AF70FEE2196F964BEFED6C7CDF559B6F92E3671592BBD5F38BEF59DB63CD3DFE313E8698AEC2412044260CEBC8838D8DF3202BCE422BB212799015E741569C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15C43462DA3A24373B10D34627AE8869E5D1F1A09C71C08972C7F0A0A4AF4E6E7CFA81AFCB9C13CF6F90FBEEDAED72CED1539B227BE63BBF255B6E3F5766343E5BFE67E5E7DE228BAFFC8D4C9D7599FCB1E35279CD88CFA565C7AA6FCA9C45E7353E7CC39A1D72DE1B67364F197EFE6E5978F0698D574E5F7CE77372C569074BABE78BB8747FB98FB5F9C0C65920A6ABA010089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B625A79F414AF4E3EFB63F2A315F7C86756B7CB39C7CE0994BAD77EBF789B8F731A1FBBF6D79BE5FC635F94A5FB1F27370F0FC8853F7A5CBE72E682707EC7AAE5856CFE58E3633F7872A79C7DC47EE1F3230F565F7FAE2C5CF66DD1B7FE78A2E31A393CFCAEC36D72DD29AF938FDEBB5D667FE416D970DD59F2788BE7CFE87EACB6C73AF2718FA7DE9D981E1E1E96FEFE01993EBDFA5EDC4343527C2EBEDFF678BEE7FFCE737AFB86A5BD7D70CC878040887818D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D39147F668EDB7CF9563CEFD76E36D3EEEDF748FFC872DB7CACC05E5FB515FFBD03639FFF828B2A5E3E1E215D88B1AAFC0BE765521B2DF342FFB750B232EB77DF85039EB868DB2EFE2E5B2E9EE65322B39D3C4B57E7EFDDD1F945FB474FE3299F164F1DED9B53CD6E4818DE3703431DDB1F5DF64ED431F97C1C141E9EDE9937D674CAF7CB53D554CCF9AF37A39EAF82BC2CFBB73EB0F65C7B69F4A7FDF80B44D0FFF32D13C6F60400A5E934BD477760DC98E1DC5BF308CF1E7A043DF29071DF69E70C6A675EF6B1C8FC5A3B77772B1D01FE8C50DC593B89B3F8BDE766B38A37FE7A3B2EDC52B1B1F1B8D075909C884AC441E64C579901567A1D5DE9495ED2F5C227D3D4F8D799DED2BFE71B9F8F7F249F567EBD641E9DBCD3FE21F75DC5FC9AC038E0D3F17D759C7C11E2CEEC1C80A59B174A47B52B24256AC37B8AE1889724DB3C2FD1BAEC33A04D76124F259899F1559B020BEE037FD7C2BC7538A57C14EB26DFDD83F5EF7DA9FC85B8E39B3F1761AFB9E7AA5FCF11717C9F45D6FBFA1EF47BD72FD3D72F2FCE4171C763F5CBC4AF9CD8D57548F2DA6FD6D36165F7E9FDCFDF9932A0F66A498DE74F752B979C9A18DF7C21EDFF9CB64B8B6C75A7968BBFD402AA6FBFBFB65CB962DB275C3FF90ED1BBE24FBECB34F7163CC2BA679B54E7CB50EFF8AE8D1E25FDCF91777EB06FEC5DD48942BAF4E711EBC62DA596895CB0AAF98E615D3D625E9EC600F16F7606485AC901523E02BD71567A115AF988E3CD2EB0AF76FDCBF5987E46607AEC3E8C495574C471EE1A8FF99BBE43F1DFE9FE5BEE1F2559FE5FB4BCF96EE5DAF425631FD40FB3D7282FE52C2917FC62DA6FD15D36FFFF2AFE4AECF9E38F2AB34EA28A63F2877EE7AC5F4F8CE5F26D36A7BAC9587B6DB0F9898EEEBEB6B08E9CECE4E99356B964C9FFAB4AC7BEC338DBFDFD7D7CF5B793CFD0D79E199EFC9682C14D4C0C070F18AE9DD229F50278CE715D30CEBF894B1B1711EC83667A11559893CC88AF3202BCE42AB5C56906DC836EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0A621A316D1D929B1D8869A31357C474E4D13CEA7EF267F28ED79FD194D217DFF1B85C717AF9D2727BCFE9296DA7CB035B56BC0C31DD2537BFFF30597AD36679FBDF3D28777D7C51F3FB5B11C5F452B9E3FD87B7707E21A677BD3FF6CB7FACF688C6BF9A987EFCF1C71B427ADEBC79D2D6D6260C6B86B57511C3DA48942B1B1BE7816C73165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2ACE03A701DD621B9D98198363A71454C471E8DA367567E5D0E5B7C7EF33323A5B47EB0A3B6B7C7F0B7F278FB97EF2B5E313DFA5B79ECF7CEE5B2E1767F2B8FF19D5FCF5B7998606E0269B1D0B7EBD0B7EDB03F0C6B86B5F502C3DA48942B1B1BE7816C73165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2ACE03A701DD621B9D98198363A71454C471EF2C0373E26277E6479F3A3DFF8E573F2A1B71EDC3C6E141D0F16BFDCF0C4F2971B667FF9E188CF8FF9CB0F45565D73962CFAE46DA3FEF2C3919F5F5FFC72C4752D9E3FB7C6C71A21ECFEC88476FAB6E30C6B86B5750FC3DA48942B1B1BE7816C73165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2ACE03A701DD621B9D98198363A71454C8FE0F1C0F51F9413977DA7F1117DEB8B9F3F718B9C76E87E23CED855763C5C88E9450D31BDEC478FCBF233E36F8FDC7AFF5765DE499F167D0FEAFB37DD236F9D9BBC07F588AFB8FAFAB364E1B2DB64EA7E17C8131DD7C8E1D3467C5236CB55A71C2117DDDB21F69ED2AD9E2F353ED6918F6C3C3562BA4A0981109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC404C1B9DB822A677F17866C52572D892CB1B47D34FBD4C56FFEC12396AC66842B94BBE5DBC37F4B9C57B43EF7BEADFCAFA5F7C52E636B9FA2F349C76FC65F2EC4397CA6B9A9FAB161DABBF2F73169ED3F8C4B5BFDE2CE79F30AF79527FF18B0BA72F38BB717CC53DCFC9C5271F2CAD9E2F52DF636D3EB0711688E92A28044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A98561EDD8FC9D2FD8F939B87071A743E72F33FCB79474C911D7D11567FBFC8916F7EABBC76D614D9B8F24A3970F1E71A272CBEFC2772EBE7971472BA47EEBFFE423969D9758D8F8F7C3575FFF3F7C95F5CF42DD9DCB59F2CB9F26A39F3E8D9BBBEF87AF9C2B4C3E5B2C11ED15769AF58FD1D39FDE8574AF70BFF2A9F38E464B971A83F793575ABE74BCB8F35FED42FFD08315D658740884C18D691071B1BE741569C85566425F2202BCE83AC380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E7620A68D4E5C11D3058F276F3B5F169CF5F5486694A3BF295ED5FC99C6AB9A37CBF54B5E2FCB56B497674E3D568E1D7A54D6C870E378EAACCBE4E98E4BE5B5BBBE4EC7AAE53267D1C71A47D726EF3BBDB5F8658AF3169DB7EB4C9185272F9447EE7DA4797CF19DEBE48AD30E6B1EB77ABE146F09D2CA636D7EA3975920A6AB0011089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B62BAE0F1E46D9F2DC4F4D591CC2847DF5DBD4DCE3976CEAECF6E9315977F52965CF2DD70F6A99F5A2E377CE1237278F1CA6AFBD35DBC2DC7CC5D6FCB7143F10B13CF3BDEBE4679C6D635B7CB050BDFDD7CD5B67E54DFA3FAFABB6E940F9D72A47D99E6DAEAF922E37FACCD6FF2320BC47415200221326158471E6C6C9C075971165A9195C883AC380FB2E22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC20A611D3D621B9D98198363A71454C471E2FE9A8A77D936CD8DA21326D9ACC9C7DA0CC9F3BE3257D1D29DE0A64D31F3648F195645ADB4C39F0A0F932F6576AF5FCE23BD4F65877FF2322A6AB8C10089109C33AF26063E33CC88AB3D08AAC441E64C579901567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916605318D98B60EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264C2B08E3CD8D8380FB2E22CB4222B910759711E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B303316D74E28A988E3C38AA910062BA0A1381109930AC230F3636CE83AC380BADC84AE441569C075971165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E695610D38869EB90DCEC188F98EE6AEFB12F3169D6F51B0676FB58DFF5817F917D67CECA9E8798CE62E1837510404C572922102293973AAC7B7BCB5F321ABFDAC43E7A711CC39A8D8D3F8764C559684556220FB2E23CC88AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B38298464C5B87E466C75862BA7BEB4EE9DAD02503FD43F62526CDBA7E43FFA88F75FAB3FBC8B4A7F695A5FFE377A39E83981E150D9F78B90410D355820884C8A4D5616D7F1B316D2444868AEB567FFFE412F5BD7DC3D2DE3EE83F44A6222B110A59893CB809701E64C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459414C23A6AD4372B32315D3438343B273F30ED9B169A70C0F95F7F493EBCEBEFC6953313D3C302CD39F9926339E9C29D3FAF6699CF45F1F5D6D682A2B62BA82840FD44500315D258940884CC633ACE3DF288F10D34E0531ED2CB41A282E8283633BEFF81726C05167D790ECD831F6BF8C9395F8447113E03CB8AE380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342B8869C4B475486E769898EEE9EE93818EDE20A4EDEF4D66313DA54F64DF756DC5FF66CAD48129F6233556C474C0C1C1FF2A0288E92A6904426432D6B0EEEBEB97E9D3DBE25FD8758498762C886967A115623AF2202BCE83AC380BADF6A6AC20A611D3D6FDA940404C23A6AD37906D46A25CC98AF3C8DDAF705DE1BA621D926605318D98B6DEC8CD8E5FFFD3FF59BC5D47A7ECDCDA2353A2B7B5BF2693514C6F5857B89B27A6CBBECFCD90A9C3539B3FCBC802313D9206F5FF320288E92A6AC47464921BD6F6AF8888691136366C6C2C3164C548942B3701CE83EB8AB3D02A9715040202C1BA249D1D8869C4B4F50662DA48942B59711E5C579C85566425F248B3C2FD1BF76FD621B9D9F1E01B8F6B7CBAAFBF10B96DA3BC08CFBEC0245AD7CBD8FFEF5FFD5110D393E809DD931E2A62BAFA6C22102293DCB0464C3B2336366C6CAC1BC88A9128576E029C07D71567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916685FB37EEDFAC4372B303316D74E2CA7B4C471E1CD54800315D858940884C72C31A31ED8CD8D8B0B1B16E202B46A25CB909701E5C579C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15EEDFB87FB30EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264921BD6886967C4C6868D8D7503593112E5CA4D80F3E0BAE22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC70FFC6FD9B75486E7620A68D4E5C11D39107473512404C576122102293DCB0464C3B2336366C6CAC1BC88A9128576E029C07D71567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916685FB37EEDFAC4372B303316D74E28A988E3C38AA910062BA0A13811099E4863562DA19B1B1616363DD40568C44B97213E03CB8AE380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342BDCBF71FF661D929B1D8869A31357C474E4C1518D0410D355980884C82437AC11D3CE888D0D1B1BEB06B26224CA959B00E7C175C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459E1FE8DFB37EB90DCEC404C1B9DB822A6230F8E6A248098AEC244204426B9618D9876466C6CD8D8583790152351AEDC04380FAE2BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0AF76FDCBF5987E4660762DAE8C415311D7970542301C4741526022132C90D6BC4B4336263C3C6C6BA81AC188972E526C079705D71165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E6956B87FE3FECD3A24373B10D34627AE88E9C883A31A0920A6AB30110891496E5823A69D111B1B3636D60D64C548942B3701CE83EB8AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B3C2FD1BF76FD621B9D98198363A71454C471E1CD54800315D858940884C72C31A31ED8CD8D8B0B1B16E202B46A25CB909701E5C579C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15EEDFB87FB30EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264921BD6886967C4C6868D8D7503593112E5CA4D80F3E0BAE22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC70FFC6FD9B75486E7620A68D4E5C11D39107473512404C576122102293DCB0464C3B2336366C6CAC1BC88A9128576E029C07D71567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916685FB37EEDFAC4372B303316D74E28A988E3C38AA910062BA0A13811099E4863562DA19B1B1616363DD40568C44B97213E03CB8AE380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342BDCBF71FF661D929B1D8869A31357C474E4C1518D0410D355980884C82437AC11D3CE888D0D1B1BEB06B26224CA959B00E7C175C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459E1FE8DFB37EB90DCEC404C1B9DB822A6230F8E6A248098AEC244204426B9618D9876466C6CD8D8583790152351AEDC04380FAE2BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0AF76FDCBF5987E4660762DAE8C415311D7970542301C4741526022132C90D6BC4B4336263C3C6C6BA81AC188972E526C079705D71165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E6956B87FE3FECD3A24373B10D34627AE88E9C883A31A0920A6AB30110891496E5823A69D111B1B3636D60D64C548942B3701CE83EB8AB3D02A9715C43462DABA249D1D8869C4B4F506B2CD48942B59711E5C579C85566425F248B3C2FD1BF76FD621B9D98198363A71454C471E1CD54800315D858940884C72C31A31ED8CD8D8B0B1B16E202B46A25CB909701E5C579C8556B9AC20A611D3D625E9EC404C23A6AD37906D46A25CC98AF3E0BAE22CB4222B91479A15EEDFB87FB30EC9CD0EC4B4D1892B623AF2E0A8460288E92A4C044264921BD6886967C4C6868D8D7503593112E5CA4D80F3E0BAE22CB4CA6505318D98B62E496707621A316DBD816C3312E54A569C07D71567A11559893CD2AC70FFC6FD9B75486E7620A68D4E5C11D39107473512404C576122102293DCB0464C3B2336366C6CAC1BC88A9128576E029C07D71567A1552E2B8869C4B475493A3B10D38869EB0D649B912857B2E23CB8AE380BADC84AE4916685FB37EEDFAC4372B303316D74E28A988E3C38AA910062BA0A13811099E4863562DA19B1B1616363DD40568C44B97213E03CB8AE380BAD7259414C23A6AD4BD2D98198464C5B6F20DB8C44B99215E7C175C559684556228F342BDCBF71FF661D929B1D8869A31357C474E4C1518D0410D355980884C82437AC11D3CE888D0D1B1BEB06B26224CA959B00E7C175C5596895CB0A621A316D5D92CE0EC43462DA7A03D96624CA95AC380FAE2BCE422BB21279A459E1FE8DFB37EB90DCEC404C1B9DB822A6230F8E6A248098AEC244204426B9618D9876466C6CD8D8583790152351AEDC04380FAE2BCE42AB5C5610D38869EB92747620A611D3D61BC8362351AE64C579705D71165A9195C823CD0AF76FDCBF5987E4660762DAE8C415311D7970542301C4741526022132C90D6BC4B4336263C3C6C6BA81AC188972E526C079705D71165AE5B28298464C5B97A4B303318D98B6DE40B6198972252BCE83EB8AB3D08AAC441E6956B87F6BEDFE6DB06F503A3674CA40FF40043BC18FBA760C4967D7E0E88FB2678ABCF1980FCA09677F3E9C83980E389A0788E9260A8ABA0920A6AB44110891496EA3879876466C6C5ADBD828B9818161191C638FE074274ED5D935243B8ACDCD587FC84AA4C34D80F3E0BAE22CB4CA6505318D98B62E496707621A316DBDF1FFB7772E70561477BEAF799C19061C141431B8597713CDBA26023E93DD4F365714F2BA1B416FB29B8DA08977C14776838FECC6C766AFAF5D05F7AE80467C24A009EA4A50D16C8C894FD41B50810824800E23A0CCE0CC303332679833336798BAF5EF3ED555D5DDE7D167CEA3FBCCEF7C3E335D7D4E7577D5B7FEFFEAEA5F57FF1B629B24612FE12B8A07CE2B8A05A5E02B260FB7AFE0FA2DB7EBB7C1DE0196E84E88BF7EC64DA4915823519AC469CFA79BB1B1BBEB59FDBE0676CA1597B34F7FF74A230B84690387B30261DA418144A1094098F61285806032F11BE84198568C30B0C96D60A3884198D659507A60207A43BD0FDBB2CF98C045806A699C57140B4AF99D57204C43989656E2EE3B204C439896B601B14D92B097F015C503E715C58252F0159387DB5770FD96F9FA8D04E9DEB65E367828E9808CDED50AB3664BEBC274ED812A56BBAB8E35B43738F58230EDA0B012DFF8FD56F30B6D0DC2B40603C9C2128030EDE50901C164E237D08330AD186160937960A348A914664C2B16948230AD780C8B490DC964B486BE03839C7577677E0400E715D5C694F23BAF409886302DADC42D20409886302D6D03629B24612FE12B8A07CE2B8A05A5E02B260FB7AFE0FACDFFFAADA75D84EB880F1A82B42419ADD1B95D6A3963BABAB54ACC906E60B1CE3A591D670961DA416125204C9B3CB056220210A6BDA02120984CFC067A10A615230C6CFC073683834956571753A0B41484690D86484298563C204C2B16941A4DBE02611AC2B4B47EB78000611AC2B4B40D886D9284BD84AF281E7ED72B38AFE0BC222DC4ED2BB87E33AFDF5A7EB39C353FBE8C0D2406596D6D8DC4662C2920864F500C234FD856E262F2C860731DAB49F8D789CA0B61DA6C3508D3260FAC95880084692F6808D32613BF811E8469C508031B73600301C11410E02BF0152280F38AB2034AF99D57202040409056E21610705E31CF2BF015F80A7C4512504B9C57140B4AE1268EC9C37D5EC1F59B79FDB6EF47F7B2FDCB1F60834931B12896666291409AF9F940937918D6E22232766F96E8D810A6CD9682306DF2C05A89084098F68286806032F11BE8416C538C30B031073610104C0101BE025F210238AF283BA094DF7905621BC43669256E0101E715F3BC025F81AFC0572401B5C47945B1A01484699387FBBC92CBF55B52CC1EEEEB19347714F2B5413143B8B33BF37B608E9A7012FBEB8B9F366A02611A2F3F940601615A92C0B2A404204C7B7143403099F80DF420B62946B90C6C109E40F1A2D4680A4F005F516D0F5FC14D1C690D7EE715886D10DBA47DB8050408D310A6A56D406C9324EC257C45F1C07945B1A0147CC5E4E1F6954C63D2C3FD4976A8BD97F51D1C603C628195E9BD275DE98469A1B1D7EDAE617F74F4E7D9CC077E660082300D615A1A0484694902CB92128030EDC50D61DA64E237D083D8A618651AD8C85C10A625097B0961DAE48118D38A077C45B1A0D468F21508D310A6A5F5BB050408D310A6A56D406C9324EC257C45F1F0BB5EC9765EE1C39C1DEA4EB0C343D18A9CDBD535C40632BD285A88A9FFE3ABCBD8C73F35530112A94CD76F87070FB3DEB638EBEBEE37B689C2CAFEB664DA62561F62ACB639C6FE6EF5DBAC7E6CA393CFEFFA6D48CC90EE6DEB65FDA959D211D3A4ADBAF90AD309CEEADEAD630DEF37B06A5ECD8E39F30C36E3A1950E0B4A409886302D0D02C2B424816549094098F6E286306D32F11BE8651AD8C8AD21B64912E2451162BC9BCC348054594393A2814D7777E64862F015B3B9E02B260FF705B3DF4580B9057CC5CD03C2B449841E518DDAECA5AEAEC3226663E6CB5B886D663BBBFB0E08D310A6A585E4EB2BBD9114DB323F8E4F4C2EBCE475436CCBE62B243EF67C1867430399C77792775896BD870EB3786F06F15868A99FF9F4A5ECEC6FDD6814399D304D82F4C0477DACB7FD104B0E66D8AFB1B7F0AC740A61DAEFBCC2C5093276A09AD5EEAA635F5EF4083BF6ECB38D42FB5DBF0DF60EB04307FAD840CF809537F3D9CAD85D68567C85E96EC61A768D6163F68FB1CAE916DBF43169A227C106BA128E202D2B164516BA304DA2FC989DF5ACBEA54156C95A42983670E0E587260EE6F615FDE7A6A62676D24927E95F8D285D253AAD28FAD9882A8D8DFD094098F67281D8663281D866F2705F30EB039BC141F1C2883AEF0B23204C9B0C4793D8E6771160D2600C37711411F88A6241A9D1E42BE904049D0884699DC6E8E93BB2896DF015D32E48688A771C62C343D1BADCA3B8A8E4E3E93E551F55B1F3BE753FFBE333CE33B2643ACF26BA84F82866400E25A3273EFA8A6DA99AD7BD5F236681D6B3B9EB771A2CD2F90AD94442CC0C4E08813E3D616357A15A89F78AD9BC877CDA50888F63770BE16D5F83AFB8E43EAF90209DE83CC47A3BFA847FD8FB8B220FB7304DD24ECDFE6A214236B0FADE3AABEDFEC78A1F6714A69910E4C937060F99B38DA3C843F795DA03556276F018567FA0DEB061B7D846D76FDB5EBFDC6230D09B64555546766B258A2C4898EE693A6CDD9C6868370569594308D39284BDC4CB0F4D1E6E5FD17F8530ADD340BAA004204C7B7142983699409836794098563CE02B8A05A5E02B260FF88AE2015F512C28E5E72B6E01C1DCC25E83306D52192D37B5D2896D9206898F7121B01C8E98F898566C4B55AC765F35FBCC5FCC67675F91DB2C50E240E223094D511454DC629B6CDFEAD62A213E36B058671DCB26B6D1E480E1C3C3ACEFC0217648888F2444D2278A3C74B1CDAA83B8D150B7A7968DD93596D50ED658F5720B086E5F2141DA2D3E469185DB57487CA459C1BAF0E6272EC9F3CA40FF203B1C17611A3441DA021851DB90BE428274FD073542901EC76AFA6D9B90F54AE72B567F29E2270FA799291E45FB205FA1FEB2FEBD31ACEE235B98971CE4D2ED2B3D6FBEC5DEB974BEF5F360524C2C8AF94C2C12BF9AB2BDDC5B7897222A36EBCAD2E3419836DBCFAFEF78EB33D3AD4CE96C837EB49F3130F715F6B5FDCCE7069FABD06E5FD17F8630ADD340BAA004204C7B7142403099F809089966A7C8AD47CB0533664C3F289BDC5ABA2F8A8C1F532BA36916287C4559007C05BE22ADC1EFBC220584744F9ED0B610A625417B395ACEB37EE715293E26C4E3D7244847514C718B6DD4AA3C253E36EC1ECB6A123539CD0295B38275613E8A3CA4D826AD5CCE0AAE8F2BA1299DD846DBF48BF8B043221C812E48CB7D45918714A6ABC40BCBEADF8B89BFB1AC7AC89CD6E91610A4AFF4B48B701D428875CF86251E5164217D45BF4921DB562EFDC4A59D1BE7B30F77BD6185EC4857F128F2E86A13615EDEAD6175EF353837292407B9F4F3950D5F9D2AFACB21115E7088C562B532ABB114E616B94F9B789A82FACB4C1FB7AF40985E69E0428C69C4989606E1F615F93D2D214CEB34902E280108D35E9C10A64D267E0202C436C508621BC436690DF01549C25E62C6B4E281F38A6241293F5F81309DFBCB0FF9D0616B4668BC3361828DC09A14DBFC8B2A1E476FAD6617DDBD2D6DDCDCDA9A1ACF6C58DA5714C52529B651F9A5F818DB33C6109AFCC436F295839D5B45B80EF118BE08CDA00BD2B42FFA44910709D303896156F741AD880D6B0BF3766DD47F3FB1ED8D5F7F4ECC0A162F6DEBEAF77D1C3FAA3CDADE13B3389BEAC48CD831D60BCB140595720B082DBF59CE9A1F5F26380EB2DA5A7FA18EE6CB659F33A78E1186545C8427186CAECB283EFAF9CA8E6F5FCA7A376E16F198FD67C452DD48888D9ABF748A120F6629B59FAF6016A8B26608D310A6A535F8F51DF01549C75C4298367960AD8004204C7B6142403099F8090810A6152308D310A6A535C05724097B09615AF1C07945B1A0949FAF4098CE2E4C0F276D41BA4F08D2C3224441D4C4146A7B3F61DA9A252C62E65A62647FADE7C53B340BF4837757B283AD075952C40295E119687FF2134516244CF7B50F8B58C131D6B0CF3B1B96EAE677C1BCE39E4B59DBC6FF275EDA3694567CA457DB458D49578F904BF734786605CB36A625C4369D06F3F80A663D9AB31E214C9B2F3F84D8A6FC07C2348469690D7EE759F88AA4632E214C9B3CB056400210A6BD302120984CFC040408D38A11846908D3D21AE02B9284BD8430AD78E0BCA25850CACF57204CA717A66BABAAD9211113B44F84ADD05F5F1E35E191DA5E17A66996704CC4CCAD6F168FA327D5EC4ECF2CD0C796B33D2BEECEF8F83909B1F417A54FEF61CEFADBBD714DF53AF85D30436C83D8266DC4ED2B10A6214C4BDBC04D1C49C25EBA7D05C234846969217EE75908D3928EB984306DF2C05A01094098F6C284806032F11310204C2B4610A6214C4B6B80AF4812F6321F619A1E494FF4462BC221C53DEEECCE2C891D35E124F6956FAE3100C958A08383E21163F1C22EBFCF688AC70E61DA2B4C1F1E3CCC7AF61F64833DE2A16D1F15DAE72B3F330AD57796302D229050CCDC31343BF670B5A77C6E0101621BC436692410DB24097B095F513CFCC425DCC4C14D1C69216E5F81300D615ADA865FDF01615AD2319710A64D1E582B200108D35E9810A64D2610DB4C1EF9886DC3E2E9D464325A12C28010DBBAB3886DF015D336E02B268F20BE225F64462FADA2100551FA90AF74758B1711F97C6846689D98117AFCC4CFB3990FFCD4C8914D983E2CC236C4DB7AD9D060B4A281F68AF004F143E9CB5C3554C33E73CAA5ECCCAFFFB3C12317613A215EE6757828FDBE8D1D8664856E5AD0CD8B4C9FCFCFFA4FF6F113CF33B26C58389D25BAFBD89088279D2E56ACBFD519BB09DD4A5B3B67F5FB1A3296CB2D20409886302D0D06C2B424612FE12B8A879FB804611AC2B4B410B7AF409886302D6DC3AFEF80302DE9984B08D3260FAC159040BEC2F460EF8075C1ECF7B6E70216AFE0BBCA2420D0C1AA3BABD8E4D854F6B57B7E611C3B9B80409947D3CC36CC9856E68119D398312DAD211F619A6644C685181BB58FFE38BE6FD9FBABD8DF5CFD86F102333F5FA1FAD34BAB12E2055EF4C92CDFF91EA9EC5FFA9E57C48CD0BA26113776AF9811CAABD931679EC1663C645E04A43BAF0CF62559A2ABCF62C2FDA6C996BDC6990BA0BFD04DCF59D55BC3C6BD3F8ED5BDDFC0FEFC7F7F877DFABBA6D8964998A63147AF10E9070E25F55D46224D2F741B4C7363B2F64015ABDD55C7BE7CC723ECD8B32120C806750B0810A64D5F81D8065F81AF48026AE9272EC157E02BD242DCE71508D3E69814E759F33C0B615A7A8EB984306DF2C05A01090415A6E962F9D0013183A77FA8720404C1B3BAB54ABC74A781D57D54174840D09B02C2B44E83B18181E8494C1FB6659F7F166416A8248219D39284BD84AF8819F48924EB3B70C8161F4D3C91584B274C57F530D197D6B3584B3DFBDB6DBF37EAA20BD389DE7E3628C4682948CB8CD1EB35445FA7CD98AE3EC4D89877EA3D33427311A6070F0D5AE2EBA016CA248A3CDCC2745D7C0CABDE2EECA2631C63C376C8133F01C14F98A6310709D214E2853E51E4E1274CD39863CC3B0DAC3E5E67D50BB3402D0CCE3FB780800B66F38219621BC436E92CF0154922CD8B42BF7D29EBDDB859DC1C1421B362FE21B3287858D4CE2D9DA2C422C093AABC4F0AE715138ADB57204CAF3400E13C6B9E67214C1BE6E1AC4098765020516802B90AD387C55BD0F58B432A47E6D361A14B5A98FDE90202EDB14EBC05BEAE690C8B1D5283955C0404BFD20CF61F66C981683D62DC2B1EB78EF7662EF3A74EF91B76FA5F5D675439DB8CE9D13E0BD4802556204C9B440607C40CC2C1EC3701CCADCABBD62BFC84FC25D3E753277F53F8CAF54616B7AFC8999FFAD32651EC4BDDC2343D6D52D754C71ADAD523FAEE8B0012A6B7BD7EB93DF3559C53AAAA0C54D64A1459D079A5A749845B10335FF5FAEBB5CB745E8977F4B2A40851A10BD272DB28F290C274CDFE6A3676EF3856DBAE5E6A27EB954D98F61B73D0B651E4A10BD334E618F3CE585693309940409096612FDD7D072E98CD0B6608D310A6A5C7C057240908D38A849DC279C524E2F61508D32B0D4038CF9AE75908D38679382B10A61D1448149A4026617AC7A67FB466F41DEA146F81F789E918C50B441210BAC5ACD85A7171D8B0DB7B71487C330908833E2FA9B21E45EF38C4FABAC4B3DB117BEC5A0A087E765533202EA03F18CFA6CDBA927D66FE654616B7D8267F1CEDB340FDEC83D84098B62D6434FB4A6FE72136F8919825EC138A208A7DA914A66BDAECA74D629DF6CC4FD917D01217018A86DF79A5E537CB59F3EABBD940DF40DA18C2742B24F3ED10758CB0A4E2E23C9BDC339655F7A6B76C3F617AE7C6F9ECC35D6FB0DE7631ED3CCDA669BE0E4BD57DCBD1454FE2BC2B6E82BFD7C06A074D415A6E00014192B097EEBE0317CCE60533846908D3D263E02B9204846945C24EE1BC621271FB0A84E99506209C67CDF32C8469C33C9C1508D30E0A240A4D209D30DDB3ED2DB6F5DA4B58FCA078D43C31C06A6ABC6F4DA78BE56C8F1115BABC23DDDFA078A9D601F1E21D96214C65E2C8F1ECFD59E64B883EF5C7EFB0134FD82F04C66187C5B0782115172F79E26296344DFC8B642CD04322BEAB6BC6F4E14E31F3FB6DCEAAF78A1027A2BEED7FF6497660FA7403FDFFFCC22B96062F791083E15E71F12D0409F9899A9842E5DEDF460FF4A9CFE1B6617678ABA8C907EABB9D73BEC6AA6A6B9D2F8E1E7F807D769A1DB2806CA0BADA9C06CAC5E6C38786D8E1FE6811A1977575A679A11B559E1FE6ACB7B98EED3DE68B0E0B4AE8BE525D5D6DCD8A1DCDBEF2D549BF61C37111FA6888FBCE102666D19A3B4E2566ACF583A4ED1B3DA6BDDBBFDAFFDDBE32B1BD837DF6D5F5D68FB6AF78CF2BA2476503FA4E22901E147EDF99453EF63BAF9CF487EDECC41DBBACF38AED2B5E9643A20F3E1CB51B9EA20D7BA9E3CBF0F13BAF7CF69557D9C4031FA5CEB3FE02EE80D8B71D0C24C3CE43F653976041E5CEF479FF2F3FC712533E6664F9CA9A67ACF574BE423FF6C6FC39193B0AD9CAFE2CB641C57DF77F7ED938CFE6E22B49C138C3D02E6414ECE2F40ADF8E67E93B0E9CF809D6397D9A517EF88AE92B5F7DE217D618DC1E93FAFB445F161F34008764653FCFDEDBB9CFB3F095E0BE9210D7B8875D63F7909840DA62748A7ED4BC62F166FDE0EC3358FFC7E02B928CDB57721A938A6159A2D6BF4F91FB0DDB92B499CE2CE3461A93EE3BE70B46D1F5BEA3A6C6BFCEA3E93C8BF38AD23AC850683D8BDE8200004000494441542C3A3030C0FEF55FFF957DE2139F306C67242B5562C79947C823D93BB68D14013F61BAA3A383BDF6E08F59CD7FDECD62B15A76E4F846232E175D6E927040175A5133242A77571AF38F351EC14EFC5F17B2532E9EC78E983CD969C79E9E1ED6FADE7DACAB6D8D10A56B84C03864C4012506F2CFD92822097DC6747577AD7814BD91D5B4DAAD3A6ECA71EC94EF7C879D386736AB1B3BD6AAD1E1C38719F1D8F1E697ACF52131FBB35FCC14D76781927D44CD2E6473C959A0556216684C8478A9E9AC973FB14FCEFE1AFBE437FF967D6CEA54E7BBA48859D7D6F22A7BFF9DEB85E85865D98714A66976F02111439866D21F163744A2F67187BD91E5E709CEC6764C607F7EE65C76CADF5D62F84A5F5F1F7BFFDD7B2C5F21A18D7CE59098FD284314483F891E0D2642DE889B38A9501EB9F80AF1225FD976D65F58E86A040FF7408FFAA37EE12D99253C6BF3D0FDDB9FA61FA582A6F3950F5F59C7DEFF8785B6AF081E6423F233DACE2BE42B1FDC7D0F3BB0E2618B03D9873C1F13139223E8759051BBF94B658F0B9B4E3759DAEFBC42DB90AF342FB89CF5FD6E0BF3F315121CC957A27813C78A059AA6D39B7CD619ECC4BFFD1B76E257BE4218AC0F9D573EFAE823F6EEE7CFF1F515CA349AFA0EF88A1A8351DBC35794AFD098947C65E75F7E81D0B05A3146D7CF2BF41D7C45DDF0C479C514DB46D379455EBF6DFFDCE7C92D46BDAFD079B6E5A59759CBF7AEF63DCF8EB631299D57F6DDF323D6FDF02ADF31D868EA3BE02BA6D6313434649D67C946EAEBEBD9A44993585D9DF72959AB63C9E31F84E93CA055EA26F24298EE55B4B5B5B1279F7C92BDFAEAABECDC29C7B33FFFC5B3AC5E33BC28774AB2FD6880EA16A663138E62A77CFB1276CAB7FECE1160293F39606767A7B5E9E1434FB1D677575922DB61111F973E749D4927AE287F486C4B34D5B2AA77632C76D08EB33DEE137FC2A65F798571A12C07FF7401409DD2FB4F9CCF12227CC9E124590571B067B1459DC7872D62463C09D2BDA998E3621605DDAC9876F96586004B031AB28D783CCE62EC3DD6FEFECDCE4C692BBE765B9CF58917BBA5D1222261326E61BA4A3C5DDF7060123BF5BC2BD8A7BFF92D8FAF90BFD09DD421E12B6DBB1E1DD5BE422CC857E8D3F6D5F30D413ACA835DDD703DC2740EBE52BBAB99B55FFBCF867030DACE2B24B275757559BE32B8FAE72CBEEA3143908EF285B2B40F3F61DAEFBC42F9F5F36CCF8D3F64035BB6193CA22C2A491E7EC2F4E4BFFA4B36EDCA2B3D373AE579A5B1B191ED3DF78B86AF8CB6BE03BEA20458F88AD757E81C4BFD078D495BBEF855F80ACE2BB2CBC579459B40E3BE7EDB37EB2BA37A4C4AE715EA37E8FA8DC6A41DDFFF8131E6186D63527D0C96FCF91AF69110A6A536440E359AC6A4F015AFD641D72B6423E3C78FB7FE1A1AD47B849C0E77840908D3230458499BCBCE67E9D2A56CFDFAF5EC0B5FF802FBFAD7BFCEEA77EF61EF5C3ADFAA6A2574D2B2CD74619A666E4D171786275E3047FECCE45D32292A1D7DF4D19623CAB84B94B1123A6959615D40A0995BD38420FDB1B355EC3E39734B0EFE274E9CC8C68AD9D332EE52A55C284B1E526CA3D9F3A7CC133382C55F9DE88CE5471FD0907040F6D1DFBB85BDF3F642312B784088D189C80BD2B2AE5298E6DD8C4D1C3C819DF1D7D71ABE42F9F401CD51471D65F9CAFEFBEE67FB973F60ED6634F98A7B40234FE2F0953893BE92F8DDDBA3F2BC227D85FC856EDE90AFD0DF68F61562E13ECFCAB8B9C4AB120469AB1314FF74619A9E2698FEDD2BD911C71F2F7F667EE795582C366ACFB3641BF015DB3CD28D4947ABAFE89302E8BC42E7D9D13C2685AFA8EB15F88A795EC1F59BF7FA4D4E0AA07E83C660A3754C9ACE57A075D8373AA175A89B37E42BA475D46A214C9DC16B811210A60B0432EABB696E6E66279E78A2558D071F7C907DED6B5F639353212CE88500BF17C274541F9D4DD73674B11B3BF374CFA3B3949F662AD18532CDBE90A292DC0F75D67B84D816D5C7EE653DDC4B12A6279FEF0D5141272D0AE9427794F5C1BFDC7EC367A647F631735907BF65CFC7267BC297503E129388072DE580868403FAF434BFC536FFC777D8A143D9A2BD59D923F36F40C4901E73DCD9EC5333E71AB3E7A902D257E8915979F346566C34FB0ADD4996031AC903BE7294080995F29551785EE9EDEDB5FA0EB20779F3468674196DBE420C64DFE1779EDDFEED4BD9818D9B2319268CEA96EE133F621CFBB84F98B04CE715DAD768EB3BE02B2A4C18B53F7C4585D493BE9248249C1B9DF2BC025FB12705E0BCE27FFD36DACE2BB87E33431FC9F30AC59F979302A4AF40EBB067C1521F4A9FD1362685AF98BE22CFB37E5A876D21C5F90F61BA385C23B7D7AD5BB7B269D3CC974444AE122830088000088000088000088000088000088000088000088000088040DE044AF93A4208D3793753E56D284379545ECD50231000011000011000011000011000011000011000011000011000816C04204C672384DF2B960089E3A57480B083040FB385C043F1000BC58252E0011E2601730DF6A1788085624129F0000F93805A836D281694020FF03009A835D886624129F0000F93805A836D281694020FF0900430635A92C0321404D03999CD001EE06112506BB00DC58252E0011E2601730DF6A1788085624129F0000F93805A836D281694020FF03009A835D886624129F0000F93805A836D281694020FF09004204C4B12588682003A27B319C0033C4C026A0DB6A158500A3CC0C32460AEC13E140FB0502C28051EE06112506BB00DC58252E0011E2601B506DB502C28051EE06112506BB00DC58252E0011E920084694902CB501040E76436037880874940ADC136140B4A8107789804CC35D887E201168A05A5C0033C4C026A0DB6A158500A3CC0C324A0D6601B8A05A5C0033C4C026A0DB6A158500A3CC0431280302D4960190A02E89CCC66000FF03009A835D886624129F0000F9380B906FB503CC042B1A0147880874940ADC136140B4A8107789804D41A6C43B1A0147880874940ADC136140B4A810778480210A625092C4341009D93D90CE0011E2601B506DB502C28051EE0611230D7601F8A0758281694020FF03009A835D886624129F0000F93805A836D281694020FF03009A835D886624129F0000F4900C2B42481652808A073329B013CC0C324A0D6601B8A05A5C0033C4C02E61AEC43F1000BC58252E0011E2601B506DB502C28051EE06112506BB00DC58252E0011E2601B506DB502C28051EE0210940989624B00C0501744E66338007789804D41A6C43B1A01478808749C05C837D281E60A158500A3CC0C324A0D6601B8A05A5C0033C4C026A0DB6A158500A3CC0C324A0D6601B8A05A5C0033C240108D3920496A12080CEC96C06F0000F93805A836D281694020FF03009986BB00FC5032C140B4A8107789804D41A6C43B1A0147880874940ADC136140B4A8107789804D41A6C43B1A0147880872400615A92C0321404D03999CD001EE06112506BB00DC58252E0011E2601730DF6A1788085624129F0000F93805A836D281694020FF03009A835D886624129F0000F93805A836D281694020FF09004204C4B12588682003A27B319C0033C4C026A0DB6A158500A3CC0C32460AEC13E140FB0502C28051EE06112506BB00DC58252E0011E2601B506DB502C28051EE06112506BB00DC58252E0011E920084694902CB501040E76436037880874940ADC136140B4A8107789804CC35D887E201168A05A5C0033C4C026A0DB6A158500A3CC0C324A0D6601B8A05A5C0033C4C026A0DB6A158500A3CC0431280302D4960190A02E89CCC66000FF03009A835D886624129F0000F9380B906FB503CC042B1A0147880874940ADC136140B4A8107789804D41A6C43B1A0147880874940ADC136140B4A810778480210A625092C4341009D93D90CE0011E2601B506DB502C28051EE0611230D7601F8A0758281694020FF03009A835D886624129F0000F93805A836D281694020FF03009A835D886624129F0000F4900C2B4248125088000088000088000088000088000088000088000088000088000088040490840982E09661C040440000440000440000440000440000440000440000440000440000440401280302D496009022000022000022000022000022000022000022000022000022000022050120210A64B8279141DA4FB7DF6C6EFF7B38F4D3F83FD71636D9A8AF7B3D69D4DEC83837DE2F7183BE6E327B24F4E199F262F7D1D34BFBDCDDE9D3BD8FB0707599D583DF2B84FB0934F98443F94E6534E0E43FD2C9E4866AF67AC81358E49D746D9370F94A39C3CF482C63BD8B6A6F7589F85672CFBF8A74E665326C4F41CA5498784C750F77EB663F7FB168FD891C7B0934EFC244BEBB6052733C45A9B77B20F0E1CB2F61C1B7B0CFBD33FFF249B90C124BB5B9BD9EE0F0EB0A4E8378E3CEEE3EC44E1D319B2B3A0F9597F376B6EDACD0E080389C58E641F3FE94436A9644042C8C369F321B677F326F6616C323BE3D43FC9C8DCD964C489F0F1188A0B7F69B2FDC53E77FDA938774D18714D33EF207C1CFABB5B59D3EE0FD06FF8359CB0916D7B0EB0B1E38F679F3C61A25F8E027F172EFBE88FC745FF9CEE13630D8D638ADC7F848B874DA29F956F3C1A121EA11997868487EE22651997868F43A58F479D26CF69FC2F7257F87834300FDA205776CECE0B9528BEBF3825CDB18EE5198FCA52868F47A58F4B25F9BC7CA0E4E352A7B4C1131C1F102818816EBE64C6915C5821BFF38D03BE7B3DD8F46B3E7F6ABD9587F2C9BFE9F36EE69BDB073DDB04CD4F3BE8DBF5B2EF31C6CCF981EF313C071DF117E5E5B071C9371CAE92AFDFB2AAEE5B7C736278C4B5CDBE83F2F2B0CB97E4EB57FE8B2F97CB97FD92F764AF4401738481479C3FBBF40A2F8FEA53F9AD6B36F264016BEBB7ABB6ADBFE0174DADF33DFEE267FEE0DDA46727BF63EEE99EFC75E77E8FBFE1D36FF0A0F9C511B73FFD1FFC5456E539C6350FFD7654F2D01BA173FD3D1697D8E977F12EFD8722A5C3671F1D7CEDA24B3CB641FDEAF479B7F36D5DC5E94743C721998643AADF28923938BB0D1D0FA76432D1CD97CF9E50325F091D8FBEDFF1F3AB6A7CFD448E41EEDEFC918455F065E878881A96733C1A261E6118978689876DFCE51997868F43858F478D9E2EFBF89FB257F478340F1EF626B9B133765F8095A2FB8B51C65CEA98661C56E4F1A82C66E87854FAB85482B796B9D887B1815829EDB8D47DF4A0EB2CE806C80F02FE04E27CF555B39C0B92BB377985E9BEA6FF727EA78B94D88CF3F9DCD9D39DEF2CA1B4475DE007CD4FE53AB8DD3CC68CD917F1D9E78C718E513DEE07BCB9A8AA5BF9396C5CF265A7BEF262D06F5915FB1A7F43E3EDDFAE23FDB6FC3CA8065B567CC7603277C10243843CE3D6E7475AD11CB70F038F045FBDE05883C7ECB973F93955D5CE77973CF4768EF5099EADCFE5A3D3848F2E987BAE736CB2D52BD6E8E2742BBF79EA38E7F7D88C8B8C7EA3BAE17B7CA7718325687ECEDB5EF87767FF4C886C7317CC35ECE38A47F5F204AF73A62DC2C8432FEFC1ED4F382C1A2EB8B7E83771C2C723CE57CD3DC6651F0B0C7FF1DAA04E30BF74F83898FD4655CD397C81F013FDDC329AFD845A79CB8A2B1D1EC5F695F0D98710619B9E74EAAFDB859E4E3769213F2F515B85914739C7A361E351EE7169D878D8FD45E9C7A5E1E3609E57A8AFA8ACF1A8EAA338CF3EFEA7DC953D1E0DCEC3DE223776FADE0B912EBEBFE8A5CCA58EE5198FCA52868F87D97F54DEB85492A7652EF6A1E7B7D3A51C977A8F1EFC1B08D3C199610B178164FB667EF38C46EB8244CE38F40AD3EA8E0D0D3C6E5CA384AFB68D3F75848FD36FF8656A7662D0FC54A80E7EC7D423AC7250E7B4664767AAA462568276C178ED33EFB96A5098D5B07048B4EFE53B76EC70FDEDE27B5A76F2BBA6DAED446D708D21FE158681BE97B0F0E07DBFE71755D55A76D130E776BE538AF1C956BE4ADE4C1162E42F5ABC33F6F5FA8C341D161E9D1B1F74C483BAF36E12B33D53F516779D575D7596FD9BE0F15C5178C49D1985E4A38F6EDAE760EDDBF33A9F5F1DB3FD57CCE6DF99BA81B4EFD91F3AE5BDE6A1B79CFCDBD7FE9BF3FD85F7ABEF83E6E7C37BF97535F6531CB5D3BFC7374B1E62D6B5ECD7DC37CD9C428C3811421E4E9D927CCBCF6DC6D553A75AACEB67165B980E1F8F835B94BF9C7EF5CF78BB736333C1D72D574F1D5CF250216F5E848FC3E0BEFF76FC6DE60D8F8BB36DEA434F27CCB69F94AA1AF3F78EDFCA9F0BB30C1F0F77BD065DA26C717D259C3CF6A56EF0D14DEF67B636F15DBBBCE390AE849B5C21D6C3C8A39CE3D1F0F128EFB8347C3CCA332E0D1F874A1F8FCADE2DB7F1BFC85DE1E3D1C03CC40639B3933B2FD8B2F8FE228B9A6B1DCB331E95A50C1F8F4A1F974AF2B9DA87CC2F97A51D97CAA38E6C09617A64FC46F9D649BE71E5B5CEC5AA3E2BC62D4C0F77BEEECC309BB5F8150FB7A6D5DFB5F64317349B857018343FED50BF9377DB4B1FB88ED1EA884FB3962911CB9529CFD57071485789BE2D3F75DA4ADD0048977B24DF878C87F678F1B5CF7D68546C78B79AE1E5B65923E38856C2C563FD1DF68C7AF2B5D7DC210806DF71C4E10B0BEE2702E2C1379D47BDFD66571E4C858CA0BEE4E11D07C5066A2034F6829F70B7A6F1C2F5675B365DDD78136FB5DA28687E51244DA87F60DB21A3A587F7FDC6B96976E373EE3EC5C89ADF4A0879504592ED6FF28533D42C75D9B7177B166818ED433E82EE2FBAAAC7EA8EB8F8671EFBCCCF28C45621B48B2DCBBF629FA3C50D25F79336D26F8BF6144E0879186DAB8909D2578A2A4C879487F495A2F71306FC70FA4BF9C6A3E1E4E16E32B95E92716918FDA51CE3D21072A8ECF1285979EEE37FCA5DD9E3D1A03C82B1A3BD17F453747FA1D206ABA33CC796743C2AA1869047658F4B83DB876C2A6B59EA71A971F0FC57204CE7CF0E5B8AB835F7A6624AD3ECC7A52B973AE2B35BE4D34FB64FECEAF3B0D385688A4118343FED50866B889D76BB6F1CD4447B0B6F696FE73D0967CA9BA71CF97D112E0EBE75187ECF11E6AD139A11FAC0778B117C19321E0755DC4BB7B8581A613A4C3C94703BFEF2C77D6327AFBBE54B960055147121216621CF3ECF127B1FDEEA8D35DAB75DDD3CB99BE2D46BB3DDAF59F3AEC7260F6EFC9173B3E531EA5782E6177BDCB2DC7E9C96C23178C3FCA8B6235E6E61DC53A0A05F8490075541E77ADAD54BF892AB665A9C8B2AB6D18143C8A3E9E97FE333A6D6F2232EFE894F18938413E6A3FEBC02C6DF0E21878478E2E6D55FADE1F73DB2CEE307D25E8A264C87900799ABFCC83EB366FADFF3A5B75C5C7C5F09258F385F317BA255F70BEF4F3D11974CF2A4F82BFA27843CCA371E15B443C8C3D7064A352E0D238F728C4B43C7A1C2C7A396D1AB3164B6EB64CA5ED1E3D1C03C82B1B3765FC87FC5F697C03C382FCB7854320D218F8A1E97E6611FB2A96859F271A97EF011A4214C8F001E3615B18E16CCE2172F5ECDF7527884611532219D309DF6C255DC8993316E1F10829514A673CD4F332B651C509AE9994CECE56BEF5B6CC5C09C2BE2E75E7DEB0ABEB9C52B8817A60DC3C4C1BF46DBB518CBB7BD64CE1AF6DF6224DF868C47B2D999054CA2FC6BD20E7A9AF9F205675817D23460F4CC1E1E090263DB30F1501702E96644CB192C4511A60D2EDE1569A7B23DF438F3BE2FCDD22EEEA8CF099A5F5CC13BF1B6D389AEF242817E2FC58BFF742AA5E7611F9D66FB4D9D76115FB361B7F5852C473A467A998B9996E5289D7D64A98D762364E6ADDE2781B26C9DF7CF61E2D0D7F23A5F38D57E8F83FFCD9DBCAB99F386E5E4215F0C4A33A51FD8DAC99B565D5A7C613A0B99B2F0D09EB621817EE1DCF32C0EC465DAB917F1FB7FB53D4BA98BF773E97994733C9A9D63E979F8974996836CA4F8E352FF32D0B7B21C253DAF947D5CEAE5517A0E953D1EB509E73EFEAFF4F168701E41D879EDB9D8DF8CD45F82F3C852A3328D4765A9C2C4A312C6A523B18F308E4BA59D645B4298CE4608BFE74E4088443296AF5B98D65F8AE39EB54A07E85CF77F9D8B187AF15AD0FCFA23FFF4F23219EB5A3E562B97B73DE79D75997B0573CC59560E3E65D41EBFA170083D3E598AFA550878B46D7ACCB08919336638F6665D143D53C8F8B0596896950709B1675A75A71781DAE12FF4F28AB89833C65BBF9388BFADA833EBF5E352289E279D36AA3FEF762B86AD73834ADC3878A95DBD18D5D9523C0EABF73941F3EBFD463A615117A64BE93BE5E1E1903512E562A017224C3CEC72992F22B9F3B562DFF0B38F1A0E0E09FEECD21BF95CD74B4B1F16C26CA93F65E5A1F5E533532FD02DB7AF948B07853D92930BE478CBBD3CFDEAC74B3EFE280F0F25B8957D3CEA72C8F2F070158256CB3D2E4D15A99C3CC2342E2D0F87CA1E8FFA58BDB07B73CC6AE651FD46258E47CDBAA6D632F2706D1124AF6BD342AF16C25F7CCB94771DCB331E957508078FCA1A974AB6C63217FBD0F284655C6AD421CB0A84E92C80F07300022E91C8D852CC0E58585D670B5EE2C5662FED51B39787453C53F9D233BA90B1667206CD2F664CCBC748E5C5D098393FE08F3CFD2BBE62D1E58608E9174AC428EB4857CACAC15B78F9482971F10B9FE0DDA2C0DF848007DD3DCD74D1FC98F3A2CC02D7DD6F7765E6B17BF5F71D7FB870F1F3DA63F922D699F692D0B44F2BF8D56984DF0DEEFEB5D13E767C69215637FD97DD67F8C4B5B50EE9621934BF3E4365D6E2DFFAD6A21C4253F978F822701E2F2DD78CE9B0F1A0B880CFDE6C87BCA17EB5A0F1A5FD9BC0FA363C1C3AF84D35F62C6979BEA5E5031BD4CB4C3354A3603F9597877ADA826EF2C93040E5E82F24D072F2E85CAF2617D0CB621FFAD57ABE67CF1EBEFEE9FB8DBEBD582F9F960CF465F97884683CAA01291F0FAD10A964D9C7A5A21CE5E611967169393954F278D46BF5E21BD798D5CCA3CE2995381E35EB9A5ACBC8C3B54590BCAE4D0BB95A287FF12D535E752CCF7854963F3C3C2A6B5C2AF91ACBACF6A1FA90B08C4B8DF2E7B002613A0748C89223812C0ED3B4CA7EC1A1BC909D77FD1D221EE3D58E4826BF97F10983E5372F04E82E911ED9B073A38A5D5B9458B13AA2B272D00B22D25AF0FB728422B04A53661EFA0BECC8C66E7DE405BE63D72E71C17CB771C15C32D1BECC3CB8F6C835F188CDB8882F5ABA942F3CBFD1F0451217E845A4C5FEF435FDC268871B9F514F35C898D369457217CBA0F9F51040E95E8A5A6AA1A9BC3CFC5BBBD40CF452848F479CAFBDF98B8EAFD49E7693234AEAE52E743A5C1C92BC69C34B7CC3D6AD7CDDCF97394F3A507F72E78612CD1C2F6BBFC1F9EEB5FFE4D8C0633BD44B53A5AF943A1452B9ED63DF8627F82DD75FC5E7CEBB996F739D3786DB5E775E7A5BD058EC199CACBC3C42341E4D312A2F0F574385605C5A6E1E611997969B43258F475D566FAFBAC6AC661E1502A812C7A3665D536B1979B8B60892D7B569A1560BE92FBE650A5CC7F28C4765D9C3C5A3B2C6A592B1B1CC621F611B971A65CF7105C2748EA0902D0702591C866627BEB0E4DBCEC59C14A2693967C142479C7A40BCFCD0FE04C9AF2E04F4BB447AA99FBDEE6CEBD8451768CBCA41AF3185475082FC8DCFBD67FE58AAB532F378E1E6CF3A36F7D88E8346ADF50BE652CD7ACC3C63828A17C4EEF3C92FEC62CFCB4E080CDD0F4900BE6A811D1BB414C2CAEE17EE71DA86CAA18BD254B3A0A13982E6D74379CC5AFC0A1DD2F329A5D0547E1E9EEA5B5F4806A59E311D3A1E8966BE64AEFD8237B2574B942E41B89BD0717099C9F0BE979DF37729C245959B875EDF893788A74EC40BFE7A7A7AC432C1D72DFABAD5A7D14B98F726123C51F0972DBBE08BD572F3F096C8FBCDFA1497B43719BD9BE4FD4DF97984683C2A28969F87D994E51E9786814718C6A561E0409651A9E351D3EA536B19AF8754288F4A1C8F06E7E1DA22233B57DE22AC16DA5F7C8B18A48E651A8FCA72878E872C586AA98FD3A2382E7555C75ECD601F7A7DC3302EF52D7F0E5F4298CE0112B2E4482083C3E87BE8D9F3065FB974315FB468115FBA74057F8DC22888A0FDE757D5581774EEF8D4B9E5576FEF2561BA433F602A5D3271A5AC1CCC8AAF5F625F2497E262D03CB2B656561ECA2E8EBAFA296316BD2CE1C625DFB0ECAE642FEE2A2B0F596B5AC6C5ACF1472D3F5CB468297FE8E97596DF387E72DE5D457DD9DFFAFBAE3444E9FB5FFB402F9C9DD6E250FABFFCF04DB3DF089A5F1C45B67F3AD155FFBD982F3F0C0B0F6F23A837C5A763E4B7CD48BF0B1B0F77C8A971F3EEE5ADFA633923AD709AEDC3C6214D311D3F2241D61BBB3EDD56C1BF0F038F831B7F64F45DFACD3D779A66081733367D1878E4D28ABBD7FED062466391623E89130E1E6ADC51EEF1683878981652CE7169387828FB28D7B8341C1C74BBA8C0F1A85E3D99CE32FED7C79B7EE70DFDF7C88D4725037D9985879E35FBA41E237741578AE22F7E25CC9147B9C6A3B2C861E321CBE55E4A7F89E4B8D45D195ACF601F611A97FA153DD7EF204CE74A0AF9B213C8E030B471D79E5D7CD3864D621691373C807CF921BD155BBEE42C58FE247FE17AFBF1EA741D9023B8CDBCB7A8825BA68EA3F81CB466D21E972C7AF812EDB09E6459ED42CD4038EA9A5F7A8A465F48BB28F605B373F0B2F210A54874F05D5B37F14D5BFDE2C1AA971FA67BF98A538F1124D62F574F4E10F7E7B498F3C66EC54B1CE40DAB2BD6A8101F328FDE6FBCD625FA95A0F9C58EB62CCF746342F14817F34F966524CB30F1F0AB87F4915209D361E3411701F2259B243C5EB8F8975A6C763F6285F92E4C1CD6DF77AD15B2E3F43437F8A48DA47B62A91044C2C223C80540ECF4E2DDE00B0B0F6ADBF52BFF85CF9E7D2E9F235E7098F0696C798158CC1051E1E1118EF1687878680651C67169787894775C1A1E0EC22E2A793CAA99BD93CC32FEAFE8F1A803414B64E1A1E5CC28CA19F90ABC52347FF12B670E3CCA351E95C50D138F8A1E974AE0FA32837D84655CAA17379F3484E97CA8611B7F02191C860FBFE7BCFCF08BF7BFEDDABE9B2F9F3DC19A4D43A2B235DB39687EB1C7B675EAE53B77BE71C03C86180CDF3C759C758CA28BB465E6E0545C9B3D7AE3733EB3519D8C454E94954782AF5D70A6D5EE34237AA76786A378E476EE31D6EFA58A7D99F1C64550BB0F9A5F34B58C414582F036D74D22190A83C4B73B5F2B4EAC5839738E8E5177DE4D7CA7AB0CA635666A1FF592070AA960CFD20C9A5F68D95B54B89BBB5DFDC660EAE58B54D6DB5E2A8E0F858D87C9DF5E93A2632984E9D0F1102FE2BDAEA6DEEA23C80E6E5CF3073F4405FF2E6C1C64282CEA37DE70C510A6F3BB64542C1B09158F640F6F6969F1FCB577B5382FC524817E5B7B3B6F6FF79BF736727309150F519DB50B8FB37CC4D73EB4975917EB91DAB0F128F778346C3C1C8B2FD3B8345C3CCA372E0D17874A1F8F3A56AF1299AE8744AECA1E8F2A0C4E2A0B0F271F2582E43536CC7FA5B8FEE253AE6C752CD3785496346C3C2A7B5C2AA96BCB4CF6118271A956D2BC9310A6F346870D3D0432398C9843B37AC1B1CE85CB9AAD6DF6E6E26EF9DA5BFE9773D1FF2F8EF81334BFD89DF65237BA385A236784265AF9AAABCE728E517491B6DC1C520D7370CB834E9D1FD82AE3767B5AADF85F9499879C554BA2D2B87977F19DED7D769D5DB677E1B2DF169F051DA1CC3C74B175E6AD4FF1F69458DFB6E509274EAC127A0B8C4484ECD1679E5EFEC83AF114C5ABFCD557CDBF175F7C95EF4D895F6D2FFCBB63C7545EFBF14511CB75F915CEF7FA6CEAA0F9B990B46FAA1963ED8BFA8D6728B4103553CBEB7C7E75CCFABE68615E42C9C3DBE62513A643C863CB8AEF38765635E6EFF9AB9B3679ECF5D5175FE4AFC9F38D175FF06F42C8A173BDBAF16BF5A35D8356BD925D3B8DB8DBD76A2F2F0D5EF1345B8490479A923A4FE01435467F0879E8FDEEB879B7F39D5DF67996ECE38ED9473A3E745B316E7886904759C7A361E4917298B28C4B43C8A32CE3D21072A8F4F1A8E73C9171FC4FB92B7B3C1A9C87B64556765ADE42244BE02F9E6266A96359C6A3B29021E451E9E35289DE5966B10F279F2B21AFE18A3A2E751D33DF5508D3F992C3765E02DA63F4EE38D194B9AFE949E7E28444C2EAA9538D757AF99C3EB728687E3A46E77A25C6FA1DA3E8B3A5A91021E0601523254C93D856CC988E74AC8C9FB2F388F3D5DA8D09B28B69336618B64742ECDE8C9528E08F65E72166EBA466B7110BFA9B3AB5D6E0F170916E6434ADFEAE711C797CBFA57AEAA1C379A2C2CA577DAA1552406E53DDE86EBBA0F945BFB1D1EC37A6CD986694B3582F0E0D2B0FB7B5CBC74B8B351B561E2F743CC4CDCE85D575862D48BB732F0B19B221741CAC0612FD86A71F35FD64FC65E6395CB6EB4897E1E4E15F2B790140BE52AC18A0E1E411E7AB52930FA46FB8FBD199B7FED2F73D0FFE2473FF369C3CCA371E0D2B0F6A51294C97725C1A4E1EA51F97869343A58F475DFD5896F13FE5AEECF168701ECE1639B073F21620511A7F711534531DCB341E95250C1D0FAB60953E2E95F453CB4CF6E1CAAAAF96625CAA1F6F246908D323A1876D4D025AA7F9C066FF19BA9D5B7FC1E74F558F455B17304268BA61E50B86282D771C343F6D7770D7CB7CE10C3B6C87BC40A2E5E5CB7E59B40B45595E6B19120EF251D262C67434EA9D6E25143C127CFD23B71982A6B48DCB97AEF57D5966BAEA8CF8FB50F0E8E66B175DEE11DCA6CFB98EBFB4EBE088AB986E074DABBFEF39A66C07F7D214C745796FB9C4B3ED7957DFCB9BDD6105AC8307CD2F2E06B63E61CCE6A6F250CCFBFB5F6C4A579D117F1F661E7AE564398BF518BE3C963C8EDB16FCD64B621F9AAFFA9541FFCE7D6355D6299F65E838389548D38F8A73F8AD8FAEF78D2DEC6C3A82447879782BB56585FD52D742DA83FB28E1E511E7EB56DEE83DCF927DAC79BB28A234B1092F8FF28C47C3CCA31CE3D2F0F248D39FD2F54A11C6A5E1E550E9E351AD07D7C614E9AE932977658F4783F3B0B6C8919DB6F711254BE72F5A3133D551FB4D1F7BFAA58B31FE081D0F075B9A7EB462C6A54E45ADC80072B24CA6FE43DBC24A96625CEA3E66BEEB55B4A1306A7C40A084048658776B0BEB4A32561B1BCB261E3B8935D6663A7CD0FCF6BEBA5BF7DAC760313671F214D63826D331CAF15BD07A05CD5F8E3A8DE49841EB1734BF28DB503F6B6D696309AB98B65D4C089D5D488641EB1734BFC011EF662D5D3DD601C78E9FC8264D6894070FE5B2BFBB83B551796B6BD9D8F193457933375ED0FC8CF5B38EBD6D8C8850DF3479CA2496F908E5C514B47E41F397B776C18F1EB47E41F3072F5179B6085AAFA0F945C721FAD12E161B1B637D7D8C4D3C5E9C5F339EC3CBC3411E3568FD82E697C789CA3268FD82E697F69164436C68A8811D7B02EC23FCE35165BD41DB3B687E75A468A482D62F68FEA88C4B83D62B68FE4A1F8F06B7F6CA1E8F06E711AD2D82DA7FB46A17BCB445E751E1E3D2E0C4A3B90584E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D87828300088000088000088000088000088000088000088000088000088040340940988E66BBA1D42000022000022000022000022000022000022000022000022000022010590210A623DB7428380880000880000880000880000880000880000880000880000880000844930084E968B61B4A0D02200002200002200002200002200002200002200002200002200002912500613AB24D57F882BFD5704CE1771A608F67250E04C88DAC200002A389C0C6E74F2E6B75CF9CB5B3ACC7C7C141000440000440000440000440000440000440A0D2084098AEB4161D417D204C8F001E36050110282A0108D345C58B9D8300088000088000088000088000088000088040C90940982E39F2F01E10C27478DB06250381D14E00C2F468B700D41F0440000440000440000440000440000440A0D2084098AEB4161D417D204C8F001E36050110282A0108D345C58B9D8300088000088000088000088000088000088040C90940982E39F2F01E10C27478DB06250381D14E00C2F468B700D41F0440000440000440000440000440000440A0D2084098AEB4161D417D204C8F001E36050110282A0108D345C58B9D8300088000088000088000088000088000088040C90940982E39F2F01E10C27478DB06250381D14E00C2F468B700D41F0440000440000440000440000440000440A0D2084098AEB4161D417DA22C4C0F75BFCF76ECEB13B58FB13F39F593AC312D877EB6776713EB49C6D81F9D74329B30266DC670FE30F4116BDEF101EB8B8D67279D7C022B68F1F3D877F7DE66B6AFA78F8DFFA393D80925843914DFCF76EC39C062E38F63279F30299C6D85521594402509D343F10EB6E3EDCD6C5BF37E161F18109CEAD994534E659F3BEB0C36C9EDD479F86510F08E0F1F77223B615243D64D9DFC25F679C686586BF32ED629BAF9E344DFEDE194B5E4C800022000022000022000022000022000022010360210A6C3D622652C4F9485E94D4BBFC2CEBCEA398BDEAC65BF65BFF9C7BFF027D9F3169B71D4E7D82B7C98DDF9C601F6FDB38FF6CF17D26F7B36DDCB8E3CF3BBACAAE61CB6A1FB25767663955DD2FEF7D923D7FF901DBE7419BBF8D423F32A7DDA7DA7DD5B2F5B326D0ABB7A6B9C9DB9F8B7ECAD7F4AC33CEDF6F9FF20DB3B76FA5DAC6DD3556C42FEBBC29644A000F6536C9015214C0BCE3F5F763BFB9B1FDC9716D70D0FAD63D75DF205E7E65A5ABF2C489B05F5E1A0F9D35633F80F89B7D98C716744B6EF0E5EE1E26FD1B2E1A7ECFA8786D88FEEBBD4B1B7E21F154700011000011000011000011000011000014500C2B46231EA535116A6B78A0BEB6957AC74DAF0B11D87D8374F1EEBAC3B09216ECC1D77167B840FB1BB371D60FF707A2508D3BD6CF9B97FC4AE7CF9E088EAD4B3F5C7ECC869F35955EC6B6C53E7D3EC34297A3BF0DC895EB672CE09ECD2A7BBD885CBDE624FFCE399EE0C455B97EDDD70C1BDACEDC92B20AA8C887461EC674445C861E3C80BD3FDEFB0ABC64D654B87079DDA4E3BF7223663EA38B6FBED9FB2A75FE977BE3FEAEAA758C77FCE61B5E21B7F61BA506D16D48783E677AA34F244C4FBEE910328EC1E647F5F3FF35ED6F13CFAD0C2D2C5DE400004400004400004400004400004722500613A5752A3205F2509D3B5A7DDC49A37FF1FF6C7EE768BBAB8117F9FBDF4FFB6B3417614FBECCCCFB109A45C3125168D446C974245948469882A6E03CF67BD30F693CF91836C136D61BA973D32EF4FD9DC5507AC2A9F76D9BDECA7FF7A11FBCC94F10E82F66DFFCDAE99768175D38CBE7C60F3476CFE69E2E98722FABCDE77E4767349D94A6EF99DEA8D3C11F5BE7BE4040ABA07D9DFE3E65E41B16267200002200002200002200002200002010940980E08AC92B35792304DEDE41BD223ABB831C4BA5BDB450CEAA4D8438C4D3C7E0A6BB4C4DFCC2D1FEF68655D7D49168B8D658DC74ECA691BFF3D8AE37788E38B7D31B1AFC95326E51047FA2376DF9C4FB02B9EEECE3063BA5FECB7CBDA6F2C16630D8D13D984463398AD142A4898DEDAF734FB8C886DDBDAD6C39222FFF889C78A78DC6E10D9452A8AA5DBD245B1BFA93A13D99449E9A37FFBF3B0BF75F88E1D2FF63181ED5879293BE5D2952CBD301DB41DF3E19EA9C4DEDFFABB3B589B88C74D3672AC685745738875B4B630BBC9EDFA79B7B6BFC98BE7509CB5B67431619D6CECF846366982BB0D72B09FFE38EBE88A5B651C3BB6914D10EDA8CA9FAEB485FD3ECAC274D7861FB1A3FFE21F2C20E32FFB196BBB6FAEAF5F27773DC5EA4EBAD0CA37F6829FB00F9F4C176221873663D97DDE10A6EF7F9B3DB1609AE8275AED7E42F8DAB1C2D7CC762E9DCF336173AD5DB6DD8E9F38854DA87997CDADFF7486A75D82FABC885ADDDFCDDABB441F27BADBB1E3270BDF30FBC4915A70217C9E626BCBFE21E77352569F67AC6BD38FD9D167CEB7FAD0FD62C6B4271C52087C7EA4FCB13D0880000880000880000880000880400408707C402045E0CD3147F372FE8DA421B62CFF0E17EEC645EC657EFED49895A6F587771C3277DBF73B7E5155ADF5BB985DACFD96E45B9EBE9B9F5355ED6C4BDBB3EA53B988F9CA7BB49C9C27F8AA05C75AF91EDAB085AFBEFE8BE63662BB6BEE7F85278D6DB2AD24F94671FCF3AB6ACC7D89E3DFFAE87A7144FBD3B7FDBFACDFABEABEC537F70CF3BEED3F35F35399C5DF035B3FB23748B6F2D58B2EE7A7B22A4FBEBA73BFC79FDB75D029D8C12D0FDAFB160C17DDB7C8C362DE0D3FE3AD46A5E27CC5EC89D63662F6A4B31F2B91D8CB575C7FA1E798D3E7DCC4DF68E933F36658EBDCF16BBE70C638633FD3E72EE40BCF6FB4BE13C2B4AB6D82B4231D3857EE36E7AA317FCFB72586CD122776F2F9D5B6CD39DCA58D88F65BF6E23ABE7CC14CA30E42FCE7CFECEAE3C36DAFF3F953EB8DDFC6CDBB9DEF146D6B7C02F09436D278D94FF8D6F58F79DA91DAFDB5541BE4623FAB6EB9C4289FF4B35BD76C0C68E3468D02AFBCF59B3FE3E5FC0B5C606783245F7BD5593643610FBF6E71B5AD938F1222EF823379CDD473F86537ACE07B85BFC9F62C86CF73AE7CF8B4CBEEE0772C34EDB466DA45FCD10DFBB412AAFCC5F279CEBBF9B34BAF316D4E70BBEA96AB9DEFF2EFBBEDAA24DB37F3250B2E70F667F5F5A2DF9C3EEF66AD7F8AF355738FB1F25CF2D0DB1A033BB97DD577ADDFC40D84541F943A2F14CAE7C56176BFFAB0EF39E1C6477FEB9C13A834D24672F1796A73592F596F5A3AF510E78CB0F8BC4D1AFF4100044000044000044000044000042A9900ABE4CAA16EC108945394A6638FE42385E9232EFE196F697AC2111CAA1B6FE27BF51DFB0AD349FEECCD5F72B6A18BF4A953A71AEBE3E6DDCB3B9CFDC4F9F2D9138CDFF50B7C99BE66CDBBCE16D9121B977CC3D89FFBF862F6B7B50B473C16C2E61B42BC94EBF29872690B371D7CC98C2333EE97C42E29B4FAEE4B882C729FB4AC3FEF2E8383AF307DF0778E506B6D2BF63175AA7D3340AE3FB64309E2E9D80C363D691CBBDAD52656790C613A683B729E2F77A3CCA2BEF2868212CC72B3118B87E0EA5E1E71F1E34A780AC8D3B71D5DC7A86EF81E6F16A267BABC763DBAF98A943027CB37C3D506416CDC6096C74A3945693A76DE1FEDC605F54FF22653FAFD19777F9C36A29B1985F6795D98966D4C4BC35FC5FADD1B3E4C15378D301DD046D3D73DC1D72E3CCEF0077759A87CCACF82FB3CEF7CD3F157ABCEA27FD26FDC599CBBE8E681F2618F082F7EDDB2DCEEB3E9E658975521955F67996BDAF079B1BF8D2BAE3438B8FBBFF1973FEEDC944BE7C7FAB1A5CFA76B73FB265FB87CDEC28A7F200002200002200002200002200002154D00C27445376FB0CA5582304D17D724FCAC5FF275E7A25E8ABA160D1F61BA73E38F9CBC75E7FE40CC98B345D36457B398E97A86F3DB158ED0ACC419BAF01F37EF2EBECDDA26C9F76D54335445EC4E4738C8D41272B61BEDAB76FAF7F81B7BE4F1B7F19B67D83383ADD99262A6AE1420483CA119D3D647CC709302F49DAF7E20265D26AD99AC9DEBFFAF53F68B973DCFBBA4DE95E8E06B17A959B052E491FB9662C66DCFFCC19E119B1033E8AE9AE5ECEBC6E7C431AC8FE2A0841B21142DFC9893F79A875E7118E86C62A7DDAE09DCA9DD190B5354BFFBC526FB579A392C6694CA32EA33A683B6E388B9CBF2FAD8945BFC11318579731759669CBFA0B1A77A5C2E66D753DB247B9AF992D9475975932224CDA00DCAD3684721BA2D7E7A0BEFB1F66FB6E3DD9BD5AC7A3FFB19EE7CDD996D7DCDA36F39826AA2E54DBE70EA18AB9CB1D3EF4A89721246F1969115A6B51B1717DEEF9D799B8D986CCF62F8BCDB4EEBCFBB9D6FEB1AB48AA4FB2BDDE06BB5BE2DA6CF73DEB9FE1EC7B7A95F6D4EF571BBD73F6C88C7B2CF0AEAF354DFD5A9A75DC8F7AE79E8B7A9FE29C9B7AFFD37E7D89758EDE45757D55AF266A8EA83547EDA77FE3ECFF9E0BEFF76CA42E784D752E704EEEA8B6F7BCDBE61206DC4EA1773F179518DB6146BBAD9D82ACE1909F117369F57B491020110000110000110000110000110A8540210A62BB565F3A857A508D3D6ECB5E1BDFCBA1A1522E16119DAC2232226F8530B265B22807C54DE44D7CA6F9E6A8792102F54F4883314DA61A7147C531BCA59B84AB030F7E85E9333EF280CC9CBD64C3D956370B79A354C42A214200C914A882D72E6B223368A5D6C49CDB8A39972C6AC71DAFDF03B9E902672DF246E781F5D571CE8916F7BD6A73AAE14A687DB5E76C44CF99DAA8D78E47CCB8F1DC14585BDD073D869BDDE573CFA0757065516C538783B8E9C7BAA581E9BA2EF151B8F8D88FC728635CD7AD4CD47F291ED9B0F4FBD1D3DEC0EAAD9A252DCD3CBAADB8F2EDCDFFD9ABC1961D779DF8BF7F0B90BAEE2CBB43033291A455B445698D6ECC3CF27B20193ED296DC2CEAFEC4B6FB3A03EAFB7BDFEF4842C53DB0BFFEEF8AB1D16491D57D6251F1B95FB37972AE489C76744C67DCFAAB2D8B61BDCE7B9E67B336F7DC53CBCF0C4C7E74EB2EA6BF72B3D4EBF2AEBAA6F904998F6945F3B6E369FA763ACBBC57E8287DA8466C99B1FD50632FC86B411EABB73F379F5B4847E03356C3E6FD61B6B200002200002200002200002200002954800C27425B66A9E75AA14615AC683D6E3E7568FFB812DCE6A22912D6E743BB38D672D760B1536C87DCFFED016AE538FD2EB62CE19B73EEFA1DDB4FAFB9AB821E6BC26BAF89E3D7B784B4B8BF367ADB75349455CD254B884D3AF7ECA1029ED1D27797B4B3BEF49D8F2A51420D28A5446DC6CBD6849DED3D5C55BF6ECE01B5E7C862FB9FE6247709202A5B36F2190BFE612C8694F528821A17BA7156759092452B839A8CD3EBFF0FEE7F9D64D9BF8860DA9BF4D5BF9C667FFC339EE8DCFBDA717D0483B6511CCFDCAB23D25BA2B613A683BF615807BAAC81E9BA2EF151BB71045E2988C73AE669FDBFBD2EB4D33E2F3E1E9EC43B4E3AFDB5DA2D6E03B7C61759DD506B2DDF5B2AAEF4479FA7EEF08E824784D3BF722BE78E56ABE69C73E1F3BB5CB5FCCFF10A6B5A72434FB32DACC6880EC3EAFB7FDACC576B8206317C206A4ADDA82A7B2EB42FB3C95458648CA5616BBCE417D9E62F2DB31FAE9DD014FECB16786EBF54DF6B473F132C4947D7BEBAAE795FDA1EA8354FE91F83CC5D8BE3715828984E997B66EE59B641FBA6103DFB4759373CEA29BA574D331B8CFAB6D54F9C58E42E6F33A6FA44100044000044000044000044000042A930084E9CA6CD7BC6A5569C2344130427A2C162FE873CF14D6E2BFCE72BFC02F45D13D8B5517732EBCDFF5D23FB14DDF16FB4579F2827FCB92AF3862ACF5A8B510F968698741E871C4985C1EF37704083D94470691EAE09ED7F91D3E2FF9D2CB21852D67DF5ADCE914026BE1FCEE23D03B2255EA058AFAFED3A57DC5A7D401E5CD001290DCB3C8298B6C13C998076EC742704F1556139A254BD3465CE11BB4FC0FC8701AA95DE98C2D613A0F9EEE7DA4769D5A28F1CCAFACEA3B3BFBF6D44D164F1B8A76B9ECD6554EA805F318C5598BAC30AD85F2C864F3E9A8F9B7A75F3BDA7B08E2F319EDD4DA9D3A8EEDE3EE7525707A6C24D5CFE9DF67ACBF78CA453E9D728667363315461DDBB2D3C03EAF8542127DDC66F74B4C6D7CDA7F753CD9BF693F3A37EA9C3E482B9FA72F0FE0F37A3D75767E697ACA468F3B6EDEB094A555F5D0FD5BDA952ABF9D3F4C3E2F6B8025088000088000088000088000088040E51280305DB96D1BB86695284C733DA48710D31EDDF0A2396334D9EC84FCC84B98F611B3DD17FC1B977C39A3302DC37078C40C9F1694FB36058834C2839C1DA80B4482C19C79D7F1A5776498319D4E98DEF8A0550F3AB6FD78B93AAE146E64F9484489CDB8882F58B0C0FF6FEE1C7EE31A77880E55E1DDA959EAE9856953FCE781DB517B4C3F87B8BFB25E26F7547935D149093F5E364EED7CF3DBBFBA8F23D783F094DBF8965513CFFCCAAABE734ACB7B5AB6F1554B6FE0E74F8D79EC989E44A0972896E21359615A9B014BF17CED17E5A527266D9FFCF4A53D7D6A366C0E37A30E06F4795D04F586EFA1326AB398ADBECE6BD7D2DE82D8A86FEDA9AF9E3AD6B2B18937BEEC93451DDBB2D3C03EEF12A63D2132DC8754C793FD9B9E23D38C694FFE003EAFB709319D9BAE0F15DFCF9977B3F5F25AD906B9FBBCBAA1E016A6A98E61F1799D37D2200002200002200002200002200002954900C27465B66B5EB5AA48615A90701EDFD6055A91B64538253EE413CAC3234088E34991405EF0D3E3E114BAC3F36785F250C2CFE9D7FCD22744827859DE7DB7F1EB6F59C4D76CD8E7ECDB1420541D54DC66F51D891B8B9FDEC8DB7BECC8D096710CBFC7E757DB42A3142365B969DFDEB8A614CAE31B9668241F1FD70514C9E1604ABC2641D91346226595899E1E273449EA2BCFC2294B9AB022BBD7FE935516C9582F4B6EEDA8664C07E2EE37D3520B772059EAE5916C9C4A0610A9F2E1E9B033844C797465177E6555F643F9291484B0DDD4CB40E99B9EF6BD7CC3AF1EE2F367D80222D996DA0FE528DE27BAC2B40A8363F17AE34006482A3C85E58722A48E7F7BAA76546DA6BECBD5E733DA299552D8AA8C876E87DE51C790769D8F8DFA03507DA1AF0F8B3E4BBE37C0B6395516DFFCE220F2C90BD9A7E965FD854F288F834DBFE6B75C753D5F74DF6ABE3791F9E6D5F615DF49DB0749364E3D03F83CB5890C6972C60DDE5051F63E13BC47F4A3F29E90BF8DC8A32B4EBAAFCA6D649C6A3B77B87C5ED6004B100001100001100001100001100081CA250061BA72DB3670CD2A559826107A480F126D94A01677620D5B2F3FF43CDEAD5EB4173BED76DE61515517FA1E0142FC2E2FF895686A6D94F69F2C1B8927EE78CAC36DBFB1CA4AE5A578C472DF9497423DD81F559E2BD6BCEB7C27C50DEF4BBE386F5B778FB35F194E42EE9B8E75ED33AEF8CFDACCF3232EFE59DA971F0EEEFE6F7E2AABB2F6ED27AAC83027748C4B3C2F35548806F7A9FD5CE299D1ACC43BC538783B06E2AE09EEEED8B49D1A4B25FCA836F1D84800912A1F9EB21D4D1B916C55B9FCCAAAECC714F5B6B9FC62B8F315A79DD57EE4318AB38CB230ADBF20905E8CB7D927863B516B5A6BC7B327FF90FEE3DF9EAA1D559B294133579FD785696BF6BBABE9766BE549F7F2C37C6CD47598D46A923F7BD55956DFE1D71777AE573E76CAF20000093F494441547D966D73C17D9E6B2FFFF40B2BF2FC55675BC72716AD5CDDBC3ACA13FFBF832F997D949557EF839CA75FDC4FD204F079BA21E470A038F12DB29F97D454DB5B2F5914BEE96F23DEFCBAAFCA6DE89D01CDA9ACBA901F069F9735C0120440000440000440000440000440A072094098AEDCB60D5CB34A16A629A4878C5F4AA20FFDC98B7467169DF8AEEEDC1FF0CDED7D16BB64CF5EBE62C199565E534855C2804774145BCA0B7E2558646E8AC1DD4F3AC7A83BEF26E7F889F66DFC8ED9475ABF59420DBD0C2F1573D8141D5579C6CDBB97EFD8D3C27B925DCE0BB44878D8DC2E5FF495E4BBD73FEC888A56BD1EB26320CB7D4B3EF7BFF6815D70C161F982339C32DEF9DA87A90AA9E32A0E09FEF8DC494EDECB973DCFBB52D3FA3A77BDECBC488DCAFF461A71CEDE79B7336B90CA73DB337FB06707263BF8DAEBBFE8EC5F671CB41D8370D7C5B7860BEEE23BBB886782376D788C9F5355ED9447DA942EF82936296C8144AAE03C653B9A36923A7696501ECA7EC464D9A6D48BE204FF9937FC8CEFED4935A4688367175DE2D4F9B15DB6BFC823146B1965619A98C8D00F967F89270A163FF202DFD3DEC51362666EFBAECD7CF955B31CA6F4C4C1732DB6CFFAB7A7F23DD566C17D5EB7532A17EDAB35F560C5EE750F38FD04C5C34F7F532EB88DA6B3914E79034894A561CEED293F1337D2B63CE1EB67417D9E7CF6A905931DCE37FEFCADD44DB604DFAEBD98D57E7780128889CD9DBFDA6EF54189AE66BEEA3AD556AA0F526D32329F377D8FC4E7977675DAC892DDFC8525DF76CA3F6B99FDC24A7F1B919455B954FFA4CE5354B7652F6E112F7D4C84CEE7650DB0040110000110000110000110000110A85C0210A62BB76D03D7ACA2856941C31DD2435DA427F8B3377FC9B9D8B7842371B1AE2F1B2EB83725CC10563533D12340885FA548A0040BDA26F347CEDED58FA9A7E54B16E5BE2D61579B317DEF0C5BC096DB50BCEC8DCBED47CDE5773366CF36C41DF9BD9C5D29F72DBFF75B9E7EF5E3292187EAE3CF61B8ED75E7F17FBF7DD077FEF16C4D46B41F5DF4F5DB173156317B83B6A3FF4C7AFD38923B177182E50C74FD77775AD9943F1BAB86DACBF0547EBBEEB20DF4F60DCAD36F1F8AAC9F4815776E62C8FAD8F1D6555EF9BD7B79C4C53FD1F8ABA314231575619A6C689576A3CBCD525FBFED39F9E483EA4F749B20DF2B84CFEB3EAC1FDF480B91FC895D07534DEA6FD7416D34937DACBB23735F4C65537E13DCE7B39555E7AC0BDF0613EDFC40E706BB0FF26763D535A0CFD336EB967CDD3807B98F2F6F5652DEE03E2FB6D9F82363FF54EFCD223C889CF5ED3E9E5C2FA5CF53DDF0010110000110000110000110000110A86C0210A62BBB7D03D52ECAC2F4F655DFB52EB2CD7899DEEAEB62EDC35B3FD23224F996A7EFF60AA14294B9E1BE675DE25B42084CC75AC7F386992091C07E311F09163DDA11B225B7FFCA7BFC2AF128F73231534F7EA4B8AE8B12F45BE7F6270C31580A8B2FDC77AD213E90B85033ED22BE6653135FB7D49E794731A35BC53EE4BE6946F0AF56DFE6D9EE9A875ED144693AAA7A94DE2334F7348B19A01778F65133ED7C7E7F6AE621ED21DB27D1F226BF79F669C67E6AA77F8F3FF2C862EB3B6F7B076947FBE8B970B772F6ECE44B16CC34CA42335B97BDB89EAF4ACD7655F17E33D84862A713DF5BE5B7CB22DBC0DDBE3C00CFB4FBB00E21C4E6B9C7587590215CE86B7FFB113F24F6F2D5B75C6ED63925CA5DB6F829ED668DB5F3A2FE8BBE304D78927CFBAB8FF1F9B3A7FB329D73F5BD7C5BEA890D09335D7BFAB719C5A4CFDDE76906B1ECCB163FFDACF384861421E90992D75AF419F1C5F7792AD3FA476E73666BCBB25C7DDF2A7EC7DCD36DDBCDBBEF4E51F5F36561D7E709FEF6D31092BE08AFE2D32F9F76D9BD7C43EAC913D50729969EF3423E3E2F8AD0F4E20346BF2E595C70FD72A39CE96CC4AE85BFCFD38D92D5D75FE8D8A123C887C8E7552B2005022000022000022000022000022050A904AAA862E262071F10606F351C53560A67250E94F5F8F6C1FB59476B1BEB4B32168B8D65138F9DC4C6D496B258E2F87BC5F1E990E2F893A788E3E77CF821168FC7D910AB658D8D8DE27FEAD3DFCD5ADB7A98A8121B3B7E229B34A151FE92713914EF602D5D5492181B3F790A9B907B419CFDAA7D10CFF1ECD8291354B99C5CD913F1EE0ED6D5D327EA1663C79F3025072641DB3177EEFD824B97E0423CC74F3E212F2ED96BEC9FA3503CD3ECDDDF7E28737F9C7574C5855F906308BB2CB95F30B6F1F993FD8B5DA26FCF9CB5B3A047EA8F770B3BB2FDD2F6B163852D395E9BE3B10AEBF34C7858C7DE16ABFF898D1DCFA64C9A90633954B682D9E890B0B9F62E6173C2EBC71FCFA664ED8082FABC306BD1AFB4897E853E63C74F167D63BA4E8EF64D6521FB1FCF4E10FD58E93EA24D5A459B5087437DF14461278D41ED247D6987846FC713E2ACD1D0C81A75FB0B81CFA72F357E010110000110000110000110000110A8140210A62BA5250B500F08D30580885D800008148540A509D34581849D8200088000088000088000088000088000088040840840988E506315BBA810A68B4D18FB070110C8970084E97CC9613B1000011000011000011000011000011000011008270108D3E16C97B2940AC27459B0E3A0200002391080309D0324640101100001100001100001100001100001100081081180301DA1C62A7651214C179B30F60F0220902F0108D3F992C37620000220000220000220000220000220000220104E0210A6C3D92E65291584E9B260C741410004722000613A0748C80202200002200002200002200002200002200002112200613A428D55ECA242982E3661EC1F0440205F0210A6F32587ED40000440000440000440000440000440000440209C04204C87B35DCA522A08D365C18E83820008E44000C2740E90900504400004400004400004400004400004400004224400C274841A0B4505011000011000011000011000011000011000011000011000011000814A200061BA125A11750001100001100001100001100001100001100001100001100001100081081180301DA1C6425141000440000440000440000440000440000440000440000440000440A012084098AE8456441D40000440000440000440000440000440000440000440000440000440204204204C47A8B1505410000110000110000110000110000110000110000110000110000110A8040210A62BA115510710000110000110000110000110000110000110000110000110000110881081FF0FC36AA9FD8CD8506A0000000049454E44AE426082>|number_of_papers_2.png>|250pt|||>>
    <label|100000>Jährliche Statistiken über die Zahl der Veröffentlichungen
    in der Mathematik, 1996\U2014. Quelle:
    <slink|https://mathoverflow.net/questions/233984/how-many-papers-are-posted-a-year>.
  </big-figure>

  Heute ist die wissenschaftliche Kommunikation zu einem Massenprodukt
  geworden, mit Zeitschriften unterschiedlicher Qualität. Unsere
  schnelllebige Welt kann jedoch auch die besten Zeitschriften in
  Mitleidenschaft ziehen. Es ist kein Zufall, dass eine Gruppe von Forschern
  plötzlich die Aufmerksamkeit der wissenschaftlichen Gemeinschaft auf sich
  gezogen hat, indem sie absichtlich einige gefälschte Artikel einreichte und
  diese gezielt veröffentlichte. Unter <slink|https://thatsmathematics.com/mathgen/>
  können Sie ein kostenloses Programm ausprobieren, das automatisch einen
  gefälschten Artikel mit beliebigen Autoren, seitenlangem, scheinbar
  tiefgründigem mathematischem Kauderwelsch (einschlieÿlich Formeln) und
  einem ausführlichen, aber unsinnigen Literaturverzeichnis erstellt.

  Es gibt Zeitschriften, in denen es obligatorisch ist, die Hauptergebnisse
  des Artikels mit einer maschinellen Überprüfung zu untermauern, und einige
  verlangen sogar die Vorlage eines in Coq, HOL Light, Isabelle oder
  ähnlichen Sprachen geschriebenen Programms. Es steht also auÿer Zweifel, ob
  der Verfasser des Artikels tatsächlich eine substanzielle Arbeit auf den
  Tisch gelegt hat oder ob er sich nur verstellt. Wenn diese Strategie von
  immer mehr Zeitschriften angewandt werden<nbsp>würde, lieÿe sich auf lange
  Sicht auch vermeiden, dass ein wirklich guter Artikel abgelehnt wird, weil
  der Gutachter einen schlechten Tag hatte und keine Zeit oder Lust hatte,
  sorgfältig über den Inhalt des Artikels nachzudenken. Auf diese Weise
  würden die Rivalität und der Personalismus, die hinter der
  wissenschaftlichen Arbeit stehen, mehr in den Hintergrund treten, und man
  könnte sagen, dass die Wissenschaft mit gröÿerer Gewissheit Objektivität
  repräsentiert.

  Abschlieÿend möchten wir die Aufmerksamkeit des Lesers auf die von
  Microsoft entwickelte Programmiersprache
  <with|font-shape|italic|LEAN><index|LEAN> und ihre Open-Source-Datenbank
  <verbatim|mathlib> lenken. Ende 2022 enthielt sie mehr als 40000
  Definitionen und 100000 Einträge, die von fast 300 Personen beigesteuert
  wurden. Mit diesem Projekt soll langfristig genau das oben genannte Ziel
  erreicht werden.

  <subsection|Aufgaben>

  <\enumerate>
    <item>Betrachten wir ein logisches System, bei dem wir von einer Zahl,
    sagen wir 100, ausgehen und unsere Herleitungsregeln
    <math|x\<longrightarrow\>x+17> und <math|x\<longrightarrow\>x-25> lauten.
    Das betrachtete logische System wird als
    <with|font-shape|italic|kkorrekt> bezeichnet, wenn es nur ganze Zahlen
    herleiten kann, und als <with|font-shape|italic|vvollständig>, wenn alle
    ganzen Zahlen hergeleitet werden können. Wir wollen zeigen, dass unser
    System kkorrekt und vvollständig ist.

    <item>Geben Sie einen eleganten Beweis dafür, dass alle geraden positiven
    Zahlen kleiner als 1000 auf 0, 2, 4, 6 oder 8 enden.
  </enumerate>

  <section|Ist alles, was wahr ist, beweisbar?>

  \RDiese Aussage kann nicht bewiesen werden.\P Das ist eine sehr einfache
  Aussage, aber ist sie auch wahr?

  Wenn das stimmt, haben wir bereits eine Aussage gefunden, die zwar wahr
  ist, aber nicht bewiesen werden kann. Eine peinliche Situation!

  Und wenn sie falsch ist, kann sie bewiesen werden. Aber wie kann eine
  falsche Aussage bewiesen werden? So etwas ist nicht möglich.

  Wir sind zu dem Schluss gekommen, dass die obige Aussage zwar wahr ist,
  aber nicht bewiesen werden kann. Das ist ziemlich unangenehm, denn es dient
  bereits als Gegenbeispiel, um eine wahre Aussage zu beweisen. Damit wird
  der eigentliche Zweck des Findens von Herleitungen für unsere wahren
  Aussagen verfehlt, was eine der groÿen Anforderungen der Mathematik -- und
  der Philosophie und Theologie -- ist.

  Der Leser könnte denken, dass dies ein klug formulierter Satz ist, aber
  unsere üblichen mathematischen Aussagen sind es nicht. Leider müssen wir
  den Leser \U zumindest ein wenig -- enttäuschen, denn es mag durchaus
  Formen dieser Art von Aussagen in unseren gewöhnlichen mathematischen
  Systemen geben. Das ist es, was Gödel in seinem berühmten
  <with|font-shape|italic|Unvollständigkeitssatz><index|Gödelscher
  Unvollständigkeitssatz> gezeigt hat: Jedes System, das kompliziert genug
  ist (so sehr, dass es von natürlichen Zahlen und ihren Haupteigenschaften
  ausgeht), enthält von Natur aus eine Aussage, die wahr, aber nicht
  beweisbar ist.

  Dies ist also eine schallende Ohrfeige für alle, die sich mit der Allmacht
  der Mathematik brüsten. Aber es ist noch nicht alles verloren: Es gibt noch
  viele mathematische Aussagen, die entweder elegant (zu Fuÿ) oder mechanisch
  (mit einer Maschine) bewiesen werden können. Es lohnt sich also, Mathematik
  zu betreiben, auch wenn man beim Beweisen einer Vermutung auf die Idee
  kommt, dass es für die Aussage möglicherweise keine Herleitung gibt. Die
  Chancen dafür sind sehr gering, denn die Zahl der nicht beweisbaren wahren
  Aussagen ist \Rrelativ klein\P.

  Und, man könnte sagen, wahrscheinlich uninteressant. Aber darum geht es in
  der Gödelschen Theorie nicht. Es könnte also durchaus sein, dass es für
  alle wirklich interessanten wahren Aussagen Herleitungen gibt. Aber was ist
  eine \Rwirklich interessante Aussage\P? Diese Frage wirft weitere Fragen
  auf. Wie definieren wir, dass eine Aussage interessant ist? Ist sie kurz
  genug, aber ohne eine kurze Herleitung? Oder ist sie für die Ableitung
  anderer Aussagen nützlich und sollte daher als Lemma oder Theorem
  bezeichnet werden? Gibt es dafür eine objektive Methode, oder verlassen wir
  uns auf unseren Sinn für Schönheit? Wenn wir ehrlich sind, ist das, was für
  uns interessant ist, für andere vielleicht nicht so interessant, und
  umgekehrt.

  Es gibt Initiativen, die in diese Richtung forschen. Einige davon sind
  automatische Suchen nach neuen, \Rwirklich interessanten\P Behauptungen.
  Auf den ersten Blick mag dies abschreckend wirken: Es gibt sicherlich
  einige Leser, die nur sehr ungern eine Maschine entscheiden lassen, ob eine
  Aussage interessant oder langweilig ist. In jedem Fall kann eine Maschine
  nach bestimmten Grundsätzen nach interessanten Sätzen suchen, und sie kann
  nach bestimmten Kriterien sagen, welche Sätze sie bei ihrer Suche gefunden
  hat, die ihr Programmierer für interessant halten würde. Wir werden
  sicherlich von Sätzen hören, die Computer gefunden haben -- nachdem sie
  dafür <with|font-shape|italic|von jemandem> programmiert wurden.

  Um auf die in der Überschrift gestellte Frage zurückzukommen, lautet die
  Antwort eindeutig <with|font-shape|italic|nein>. In einigen logischen
  Systemen gibt es Aussagen, die zwar wahr sind, aber nicht bewiesen werden
  können. Dies kann als eine Einschränkung der Mathematik, als ein
  Verschlieÿen unseres Verstandes angesehen werden.

  Aus dem Gödelschen <with|font-shape|italic|Vollständigkeitssatz> folgt
  jedoch, dass dieser Abschluss noch nicht nachweisbar ist, wenn wir in einer
  <with|font-shape|italic|Logik erster Stufe> denken. Aber die Logik erster
  Stufe ist an sich recht begrenzt, da wir keine Grundmenge angeben können.
  Die Geschlossenheit wird jedoch bereits deutlich, wenn wir Regeln verwenden
  können, die über die Logik erster Stufe hinausgehen, zum Beispiel den
  Begriff der Beweisbarkeit. Unsere Logik ist also umfassender, aber die
  Einschränkung einer freieren Formulierung besteht darin, dass wir nie zu
  bestimmten Ergebnissen kommen können.

  Der <with|font-shape|italic|Unvollständigkeitssatz> von Gödel ist auf viele
  verschiedene Arten interpretiert worden. Eine davon wurde von Emil Post
  (1897--1954) im Jahr 1944 formuliert: <with|font-shape|italic|Im
  Wesentlichen ist das mathematische Denken kreativ und es muss so bleiben.>
  Der andere ist der Gedanke von Paul Rosenbloom (1920--2005):
  <with|font-shape|italic|Niemals wird der Mensch die Notwendigkeit, seine
  eigene Intelligenz zu gebrauchen, ausschalten können, wie klug er es auch
  immer anstellt.>

  <subsection|Aufgaben>

  <\enumerate>
    <item>Warum kann die Aussage \RDiese Aussage kann nicht bewiesen werden\P
    nicht in der Logik erster Stufe formuliert werden? Hinweis: Gehen Sie
    zurück zur Definition möglicher Aussagen in der Logik erster Stufe und
    erinnern Sie sich daran, dass die Beweisbarkeit selbst ein Prädikat ist.

    <item>In einem logischen System bestehen die Aussagen aus 4 Arten von
    Symbolen: den Symbolen D, N, A und --. Diese werden zur Bildung von
    Wörtern beliebiger Länge verwendet. Wir bauen auch eine Maschine, die die
    wahren Aussagen des logischen Systems auflistet, vorzugsweise viele
    davon. Wenn diese Maschine ein Wort ausschreibt, können wir sicher sein,
    dass das Wort wahr ist.

    Wenn die Maschine das Wort <math|x> ausschreiben kann, wird das Wort
    D--<math|x> wahr sein, und umgekehrt, wenn das Wort D--<math|x> wahr ist,
    kann sie <math|x> ausschreiben. Wenn es sicher ist, dass die Maschine
    niemals das Wort <math|y> ausschreiben wird, dann (und nur dann) wird das
    Wort ND--<math|y> immer wahr sein. Wenn sie auÿerdem das Wort
    <math|z>--<math|z> ausschreiben kann, dann (und nur dann) ist das Wort
    DA--<math|z> wahr. Umgekehrt, wenn sie das Wort <math|z>--<math|z> nie
    schreiben kann, dann (und nur dann) ist das Wort NDA--<math|z> wahr. Die
    Maschine arbeitet zuverlässig: Sie hält sich beispielhaft an die oben
    genannten Regeln.

    Finden Sie eine wahre Aussage in diesem System, die nicht ausgeschrieben
    werden kann.

    <item>Man betrachte ein regelmäÿiges <math|n>-Eck mit einer Einheitsseite
    und den Eckpunkten <math|A<rsub|1>,A<rsub|2>,\<ldots\>,A<rsub|n>>. Wählen
    wir 8 davon so aus, dass 4 von ihnen (<math|B,C,D,E>) zwei Paare von
    Strecken (<math|B C>, <math|D E>) sind, die sich in einem Punkt <math|R>
    schneiden, und 4 von ihnen (<math|F,G,H,I>) zwei Paare von weiteren
    Strecken (<math|F G>, <math|H I>) sind, die sich in einem Punkt <math|S>
    schneiden. (Die ausgewählten Punkte können identisch sein, aber
    <math|R\<neq\>S>.) Betrachten Sie alle so erzeugten Strecken <math|R S>:
    Sie werden alle von einer Maschine erzeugt.

    <\enumerate>
      <item>Eine Strecke <math|R S> wird als
      <with|font-shape|italic|interessant> bezeichnet, wenn seine Länge eine
      ganze Zahl gröÿer als 1 ist. Zeigen Sie, dass sich für <math|n=4> keine
      interessante Strecke ergibt, für <math|n=6,7,9> jedoch schon.

      <item>Wir nennen eine Strecke <math|R S> <with|font-shape|italic|sehr
      interessant>, wenn ihre Länge die Quadratwurzel aus einer ganzen Zahl
      (aber nicht 1) ist. Finden Sie sehr interessante Strecken für
      <math|n=4,6,7> und 9.

      <item>Wir nennen eine Strecke <math|R S>
      <with|font-shape|italic|besonders interessant>, wenn sie die Länge
      <math|\<pi\>> oder <math|e> hat. Zeigen Sie, dass für jede positive
      ganze Zahl <math|n> nie eine besonders interessante Strecke
      herauskommt.
    </enumerate>

    Tipp: Nutzen Sie <slink|https://www.geogebra.org/m/zvxf6hbq#material/ysatfr4f>
    und frischen Sie Ihre Kenntnisse der Zahlentheorie und der geometrischen
    Konstruierbarkeit auf, indem Sie die letzten Seiten des Vorlesungsskripts
    <cite|Pillichshammer2022-ZT> aufrufen.
  </enumerate>

  <section|Gibt es Gott?>

  Die Mathematik kann daher nicht alle mathematischen Fragen beantworten. Es
  kann auch nicht erwartet werden, dass sie sich mit bestimmten,
  weitreichenderen Fragen befasst. Dazu gehören Fragen wie die nach dem Sinn
  des Lebens, nach dem, was wir letztlich hier auf der Erde sind, und nach
  der Existenz Gottes, um nur einige zu nennen.

  Wir sind nicht die Einzigen, die sich solche Fragen stellen, und -- wer
  hätte es gedacht -- eine lange Reihe von Mathematikern hat versucht, sich
  mit dieser Art von Fragen zu beschäftigen. Leibniz (1646--1716) zum
  Beispiel wollte eine Maschine bauen, die alle mathematischen Aussagen
  herleiten und gleichzeitig beweisen konnte, dass Gott existiert. Aber auch
  Gödel arbeitete in dieser Richtung, und er führte ein ganzes System der
  Logik ein, um die Existenz Gottes auf rein logische Weise abzuleiten. Dies
  wird hier kurz beschrieben.

  Gödel hat den folgenden Gedankengang nie formell veröffentlicht. Er zeigte
  es nur wenigen Freunden, von denen Dana Scott sich die Freiheit nahm, es
  1987, Jahre nach Gödels Tod, zu veröffentlichen.

  Der Gedankengang selbst basiert auf dem ontologischen Gottesbeweis von
  Anselm von Canterbury (1033--1109), die wie folgt lautet:

  <\enumerate>
    <item><with|font-shape|italic|Das, worüber hinaus nichts Gröÿeres gedacht
    werden kann> [d.<abbr|>i.<abbr|> Gott], existiert nicht in Wirklichkeit,
    sondern nur im Verstand.

    <item>Wenn Aussage 1 gilt, dann kann etwas gedacht werden, das gröÿer ist
    als <with|font-shape|italic|Gott> (nämlich ebendieses, jedoch mit der
    zusätzlichen Qualität, dass es auch in Wirklichkeit existiert, was dann
    gröÿer ist als das lediglich Gedachte, welches nicht in der Wirklichkeit
    existiert).

    <item>Wenn etwas gedacht werden kann, das gröÿer ist als
    <with|font-shape|italic|Gott> dann ist <with|font-shape|italic|Gott>
    etwas, worüber hinaus Gröÿeres gedacht werden kann.

    <item><with|font-shape|italic|Gott> ist etwas, worüber hinaus Gröÿeres
    gedacht werden kann [aus Aussagen 1, 2 und 3 durch zweimalige Anwendung
    des modus ponens].

    <item>Aussage 4 ist widersprüchlich und daher ist Aussage 1 falsch, d.h.:
    <with|font-shape|italic|Gott> existiert in Wirklichkeit und nicht nur im
    Verstand [aus Aussagen 1\U4 durch reductio ad absurdum].
  </enumerate>

  Descartes (1596--1650) und Leibniz hielten diesen Gedankengang für richtig,
  Immanuel Kant (1724--1804) hingegen für falsch. Auch Gödel hat diesen
  Gedankengang grundsätzlich befürwortet, und er ist die Grundlage für die
  folgende formale Ableitung:

  <\axiom>
    <math|P<around|(|\<varphi\>|)>\<wedge\>P<around|(|\<psi\>|)>\<rightarrow\>P*<around|(|\<varphi\>\<wedge\>\<psi\>|)>>

    Konjunktion von zwei positiven Eigenschaften ist eine positive
    Eigenschaft.
  </axiom>

  <\axiom>
    <math|P<around|(|\<neg\>\<varphi\>|)>\<leftrightarrow\>\<neg\>P<around|(|\<varphi\>|)>>

    Unter einer Eigenschaft und ihrer Verneinung ist die eine positiv, und
    die andere nicht positiv.
  </axiom>

  <\axiom>
    <math|P<around|(|\<varphi\>|)>\<rightarrow\>\<Box\>P<around|(|\<varphi\>|)>>

    Positive Eigenschaften sind notwendigerweise positiv.
  </axiom>

  <\axiom>
    <math|<around|[|P<around|(|\<varphi\>|)>\<wedge\>\<Box\>\<forall\>x*<around|[|\<varphi\><around|(|x|)>\<rightarrow\>\<psi\><around|(|x|)>|]>|]>\<rightarrow\>P<around|(|\<psi\>|)>>

    Alle Eigenschaften, die notwendigerweise Folgerungen von positiven
    Eigenschaften sind, sind positiv.
  </axiom>

  <\definition>
    <math|G<around|(|x|)>\<equiv\>\<forall\>\<varphi\>*<around|[|P<around|(|\<varphi\>|)>\<rightarrow\>\<varphi\><around|(|x|)>|]>>

    Die Eigenschaft \RGottähnlichkeit\P heiÿt, dass eine Sache alle positiven
    Eigenschaften besitzt.
  </definition>

  <\definition>
    <math|\<varphi\><space|0.27em><math-up|ess><space|0.27em>x\<equiv\>\<forall\>\<psi\>*<around|{|\<psi\><around|(|x|)>\<rightarrow\>\<Box\>\<forall\>x*<around|[|\<varphi\><around|(|x|)>\<rightarrow\>\<psi\><around|(|x|)>|]>|}>>

    Eine Eigenschaft ist wesentlich (\Ressenziell\P), wenn diese Eigeneschaft
    alle Eigenschaften der Sache notwendigerweise impliziert (für alle
    Sachen).
  </definition>

  <\definition>
    <math|<math-up|NE><around|(|x|)>\<equiv\>\<forall\>\<varphi\>*<around|[|\<varphi\><space|0.27em><math-up|ess><space|0.27em>x\<rightarrow\>\<Box\>\<exists\>x*\<varphi\><around|(|x|)>|]>>

    Die Eigenschaft \Rnotwendigerweise Existenz\P gehört einer Sache, wenn
    für alle wesentlichen Eigenschaften der Sache notwendigerweise gelten,
    dass so eine Entität existiert.
  </definition>

  <\axiom>
    <math|P<around|(|<math-up|NE>|)>>

    Notwendigerweise Existenz ist positiv.
  </axiom>

  <\theorem>
    <math|G<around|(|x|)>\<rightarrow\>G<space|0.27em><math-up|ess><space|0.27em>x>

    Für alle Sachen, die gottähnlich sind, ist diese Eigenschaft wesentlich.
  </theorem>

  <\theorem>
    <math|\<exists\>x*G<around|(|x|)>\<rightarrow\>\<Box\>\<exists\>x*G<around|(|x|)>>

    Wenn eine Sache gottähnlich ist, dann existiert sie notwendigerweise.
  </theorem>

  <\theorem>
    <math|\<Diamond\>\<exists\>x*G<around|(|x|)>\<rightarrow\>\<Diamond\>\<Box\>\<exists\>x*G<around|(|x|)>>

    Wenn es möglich ist, dass es eine gottähnliche Sache existiert, dann ist
    es möglich, dass sie notwendigerweise existiert.
  </theorem>

  <\theorem>
    <math|\<Diamond\>\<Box\>\<exists\>x*<space|0.27em>G<around|(|x|)>\<rightarrow\>\<Box\>\<exists\>x*G<around|(|x|)>>

    Wenn es möglich ist, dass eine gottähnliche Sache notwendigerweise
    exisitiert, dann existiert sie auch notwendigerweise.
  </theorem>

  <\theorem>
    <math|\<Diamond\>\<exists\>x*G<around|(|x|)>>

    Es ist möglich, dass es eine gottähnliche Sache gibt.
  </theorem>

  <\theorem>
    <math|\<Box\>\<exists\>x*G<around|(|x|)>>

    Notwendigerweise existiert eine gottähnliche Sache.
  </theorem>

  Die Beweise für die einzelnen Sätze werden vorerst beiseite gelassen. Es
  ist jedoch klar, dass Gödel auch Zeichen verwendet, die aus unseren
  bisherigen Studien nicht bekannt sind. Um Notwendigkeit und Möglichkeit
  auszudrücken, reichen unsere bisherigen Begriffe und Symbole nicht aus:
  Dazu müssen wir auf die Grundlagen der <with|font-shape|italic|Modallogik><index|Modallogik>
  zurückgreifen. Wir überlassen es dem Leser, auf dieser Grundlage über die
  obigen Ausführungen nachzudenken.

  Wie der Leser jedoch erkennen wird, beweist die obige Argumentation nicht
  mit absoluter Gewissheit die Existenz Gottes. Das beweist
  <with|font-shape|italic|zwar etwas>, aber <with|font-shape|italic|was
  genau>, ist umstritten. Man könnte argumentieren, dass in bestimmten
  Systemen, in denen die oben genannten Axiome und Schlussfolgerungsregeln
  gegeben sind (und die Regeln der Modallogik ebenfalls gelten), die Existenz
  eines \Rhöchsten Gutes\P unvermeidlich ist. Dies ist ein schönes Ergebnis,
  aber es mag einige enttäuschen, dass wir \Rnur so viel\P bewiesen haben.

  <subsection|Was sagt Gott dazu?>

  Einige von Ihnen kennen vielleicht den folgenden kurzen Witz:

  <\quotation>
    \PGott ist tot!\Q (Nietzsche, 1882)

    \PNietzsche ist tot!\Q (Gott, 1900)
  </quotation>

  Spaÿ beiseite: Da wir gesehen haben, dass die Mathematik nicht einmal ganz
  sichere Aussagen über sich selbst machen kann (und damit noch weniger über
  Wissen jenseits ihrer selbst), ist es wahrscheinlich eine gute Idee, Gott
  selbst über seine eigene Existenz zu befragen.

  Hier stoÿen wir auf ein Problem, denn es ist schwierig, sich auf einhellig
  akzeptierte Informationen zu verlassen. Die einen sagen, die Bibel sei die
  einzige sichere göttliche Offenbarung, andere meinen, der Koran habe das
  gleiche Gewicht, oder die heiligen Schriften ihrer Religion. Und eine
  beträchtliche Anzahl lehnt sie ab, weil sie als falsch angesehen werden:
  Alle diese Schriften sind Fälschungen, menschliche Erfindungen und
  aufrührerischer Unfug.

  Von hier aus soll ein Wissenschaftler auf die Beine kommen, der
  unvoreingenommen und ohne die Objektivität völlig zu verbannen, etwas
  erreicht. Auch der Verfasser dieser Zeilen kann nicht völlig objektiv sein,
  sondern nur das weitergeben, was er aufgrund seiner Erziehung, seines
  kulturellen Hintergrunds, seiner persönlichen Motivation und seiner
  Erfahrungen für richtig hält; keineswegs objektiv, aber vielleicht etwas
  motivierend, was den Leser vorantreiben kann.

  <subsubsection*|Die Juden>

  Eine Anekdote besagt, dass Ludwig XIV.<abbr|> einst den Mathematiker Blaise
  Pascal, der auch für seine theologischen Arbeiten bekannt war, an seinen
  Hof holte. \RPascal, beweisen Sie mir, dass es einen Gott gibt, aber so
  kurz wie möglich!\P \RMajestät, die Juden\P, antwortete der Mathematiker in
  drei Worten.

  Ob dies der Fall war, wissen wir nicht. Auf jeden Fall ist die Geschichte
  der Juden sehr bemerkenswert, und wir können daraus schlieÿen, dass die
  über sie aufgezeichneten Ereignisse mit den Grundsätzen übereinstimmen, die
  wir in ihren heiligen Schriften, dem <with|font-shape|italic|Alten
  Testament>, lesen<\footnote>
    Fast alle Bibelzitate in diesem Kapitel stammen aus der Lutherbibel
    <cite|Lutherbibel>.\ 
  </footnote>. Vielleicht gehen wir also nicht allzu sehr am Thema vorbei,
  wenn wir die Informationen des Alten Testaments analysieren.

  Das Alte Testament beginnt mit dem hebräischen Satz
  \R:\<#5E5\>\<#5E8\>\<#5D0\>\<#5D4\> \<#5EA\>\<#5D0\>\<#5D5\>
  \<#5DD\>\<#5D9\>\<#5DE\>\<#5E9\>\<#5D4\> \<#5EA\>\<#5D0\>
  \<#5DD\>\<#5D9\>\<#5D4\>\<#5DC\>\<#5D0\> \<#5D0\>\<#5E8\>\<#5D1\>
  \<#5EA\>\<#5D9\>\<#5E9\>\<#5D0\>\<#5E8\>\<#5D1\>\P. Dieser bedeutet: \RAm
  Anfang schuf Gott Himmel und Erde.\P (1.<abbr|> Mose 1:1). Schon in diesem
  ersten Satz werden wir mit der Tatsache konfrontiert, dass die Existenz
  Gottes kein Theorem, sondern ein Axiom ist. Wer dies bezweifelt, setzt auf
  das falsche Pferd. Zwei Beispiele aus dem Buch der Psalmen:

  <\itemize>
    <item>\RDer Frevler meint in seinem Stolz, Gott frage nicht danach. \TEs
    ist kein Gott\S, sind alle seine Gedanken.\P (Psalm 10:4)

    <item>\RDie Toren sprechen in ihrem Herzen: \TEs ist kein Gott.\S Sie
    taugen nichts; ihr Treiben ist ein Gräuel.\P (Psalmen 14:1 und 53:2)
  </itemize>

  Wir können schnell feststellen, dass die Existenz Gottes im Alten Testament
  eine Selbstverständlichkeit ist. Wir könnten dies in der Formel
  <math|\<exists\>x \ G<around*|(|x|)>> ausdrücken, wenn wir der früheren
  Gödel-Notation folgen.

  Der Gott des Alten Testaments wird jedoch als ein Gott dargestellt, von dem
  es nur <with|font-shape|italic|einen> gibt, und dies wird dem Leser immer
  wieder vor Augen geführt. Dieser eine Gott ist genau derselbe wie der Gott
  Israels. Um nur ein Beispiel aus dem alten Text zu nennen: \ROder ob je ein
  Gott versucht hat, hinzugehen und sich ein Volk mitten aus einem Volk
  herauszuholen durch Machtproben, durch Zeichen, durch Wunder, durch Krieg
  und mit starker Hand und ausgerecktem Arm und durch groÿe Schrecken, wie
  das alles der Herr, euer Gott, für euch getan hat in Ägypten vor deinen
  Augen? Du hast es sehen können, auf dass du wissest, dass der Herr allein
  Gott ist und sonst keiner.\P (5.<abbr|> Mose 4:34-35) Weitere Beispiele
  finden wir unter anderen in den Bibelstellen 5.<abbr|> Mose 32:39,
  2.<abbr|> Samuel 7:22, 1.<abbr|> Könige 8:60, 2.<abbr|> Könige 5:15,
  1.<abbr|> Chroniken 17:20, Jesaja 44:6, 45:5, 45:21, 46:9.

  Obwohl das <with|font-shape|italic|Neue Testament> für orthodoxe Juden
  nicht in die Kategorie der heiligen Schriften fällt -- ganz im Gegenteil
  --, bestätigt das christliche Neue Testament diese Vorstellungen:
  \R<text-dots>so wissen wir, dass es keinen Götzen gibt in der Welt und
  keinen Gott als den einen. Und obwohl es solche gibt, die Götter genannt
  werden, es sei im Himmel oder auf Erden, wie es ja viele Götter und viele
  Herren gibt, so haben wir doch nur einen Gott, den Vater, von dem alle
  Dinge sind und wir zu ihm.\P (1.<strong|> Korinther 8:4-6) Oder: \RGott
  aber ist Einer.\P (Galater 3:20) In mathematischer Schreibweise könnten wir
  auch <math|\<exists\>!x G(x)> schreiben, wenn wir an die Einzigartigkeit
  Gottes denken.

  Bleiben wir noch einen Moment beim Alten Testament, so finden wir auch
  Informationen darüber, dass Gott nicht nur einzigartig ist, sondern dass es
  niemanden gibt, der ihm auch nur annähernd
  <with|font-shape|italic|gleicht>. Drei Gedanken ohne den Anspruch auf
  Vollständigkeit:

  <\itemize>
    <item>\RHerr, Gott Israels, es ist kein Gott weder droben im Himmel noch
    unten auf Erden dir gleich.\P (1.<strong|> Könige 8:23, 2.<strong|>
    Chroniken 6:14)

    <item>\RGedenkt des Vorigen von alters her, denn ich bin Gott, und sonst
    keiner, ein Gott, dem nichts gleicht.\P (Jesaja 46:9)

    <item>\REs gibt keinen andern Gott als den, der so erretten kann.\P
    (Erfahrung von König Nebukadnezar II, 640\U562 v.<strong|> Chr., Daniel
    3:29)
  </itemize>

  Möchte man dies formalisieren, könnte eine Formel <math|\<neg\>\<exists\>y
  \ <around*|(|<around*|(|G<around*|(|x|)>\<wedge\>x\<neq\>y|)>\<rightarrow\>y\<sim\>x|)>>
  lauten. Natürlich befinden wir uns auch hier auf wackligem Boden, denn was
  genau bedeutet die Beziehung <math|\<sim\>>? Hier bedeutet es Ähnlichkeit,
  aber natürlich können wir dies nicht in mathematischen Begriffen
  ausdrücken. Mit der Kenntnis historischer Tatsachen (sofern man akzeptiert,
  dass es solche Tatsachen gibt) ist es jedoch möglich, Statistiken darüber
  zu erstellen, ob ähnliche Ereignisse auch bei anderen Völkern stattgefunden
  haben oder ob die besondere Geschichte der Juden wirklich einzigartig ist.

  <subsubsection*|Die Christen>

  Das Neue Testament erzählt die Geschichte von Jesu Auftreten, seinem Leben
  und Tod, seiner angeblichen Auferstehung und dem Leben und Wirken seiner
  Anhänger; es erteilt Lektionen für das tägliche Leben und lässt
  erstaunliche Ereignisse für die Zukunft -- das Ende der menschlichen
  Geschichte -- vorausahnen. Das Neue Testament stellt die Existenz Gottes
  nach wie vor nicht in Frage (es behandelt sie als ein Axiom), sondern
  versucht, uns mehr Informationen über Gottes Charakter zu geben. Die
  Hauptfrage des Neuen Testaments ist, <with|font-shape|italic|wie> Gott ist.
  Entspricht er wirklich der Person Jesu, oder war das Leben Jesu eine
  Täuschung, ein Betrug, ein Scherz mit den Zuschauern.

  Es geht nicht mehr um die Frage, ob es einen Gott gibt, denn selbst die
  Dämonen (die Untertanen des Teufels) geben das zu: \RDu glaubst, dass nur
  einer Gott ist? Du tust recht; auch die Dämonen glauben und zittern.\P
  (Jakobus 2:19, Elberfelder Übersetzung <cite|Elberfelder>) Die eigentliche
  Frage ist, ob die Gottheit Jesu <with|font-shape|italic|bewiesen> werden
  kann, und wenn ja, <with|font-shape|italic|wie>.

  Das Thema ist auch für uns aktuell, weil es wirklich um den Beweis geht,
  und zwar um den genauen Beweis der wichtigsten Frage der menschlichen
  Geschichte.

  Jesus erwähnte auch, dass die bloÿe Tatsache, dass jemand etwas über sich
  selbst aussagt, kein Beweis ist: \RWenn ich von mir selbst zeuge, so ist
  mein Zeugnis nicht wahr.\P (Johannes 5:31) Später, wenn er eine Aussage
  über sich selbst macht, werden seine Gegner sie gegen ihn vorbringen: \RDa
  redete Jesus abermals zu ihnen und sprach: \TIch bin das Licht der
  Welt.\S\P \ (8:12) \RDa sprachen die Pharisäer zu ihm: Du gibst Zeugnis von
  dir selbst; dein Zeugnis ist nicht wahr.\P (8:13) Das Johannesevangelium
  enthält jedoch zusätzliche Informationen, die weitere Beweise liefern: das
  Zeugnis von Johannes dem Täufer (5:33), die Werke Jesu (5:36), die
  alttestamentlichen Prophezeiungen (5:39) und Gott selbst (8:18). Es sei
  hier auch darauf hingewiesen, dass wir nicht nur den Bericht des Johannes
  haben, sondern auch drei andere Evangelien.

  Im Neuen Testament werden häufig die Begriffe \RZeugnis\P und \RZeuge\P
  verwendet. Der griechische Ursprung dieser Wörter ist
  \<mu\>\<alpha\>\<rho\>\<tau\>\<#3CD\>\<rho\>\<iota\>\<omicron\>\<nu\>, das
  auch im Deutschen ähnlich lautet: das Wort für
  <with|font-shape|italic|Martyrium>. Die Zeugenschaft kann durchaus als eine
  Art historischer Beweis angesehen werden. Wenn eine Behauptung von einem
  oder mehreren Zeugen bestätigt wird, ist es wahrscheinlicher, dass man ihr
  glaubt. Wir kennen das Konzept der Aussage gut aus der Mathematik: Wenn
  eine Vermutung durch mehrere Tests bestätigt wird, können wir der Vermutung
  immer mehr Glauben schenken. Wenn wir also vermuten, dass ungerade
  Quadratszahlen geteilt durch 4 den Rest 1 ergeben, dann werden die
  Beispiele 1, 9, 25 und 49 zunehmend bestätigen, dass dies immer der Fall
  sein wird. Diese Aussage kann jedoch zu einer falschen Schlussfolgerung
  führen: Die ersten Zahlen der Form <math|2<rsup|2<rsup|k>>+1> sind
  Primzahlen, aber ab <math|k=5> ist das Gegenteil der Fall (bisher war keine
  positive ganze Zahl gröÿer als 4 für <math|k> prim).

  Was zeugt noch für Jesus? Zum Beispiel der Tod der 11 Apostel, die durch
  die Hand ihrer Feinde gemartert wurden, als \RBeweis\P. Natürlich kann man
  auch argumentieren, dass einige wenige Beweise oder eine begrenzte Anzahl
  von Beweisen aus wissenschaftlicher Sicht nicht ausreichen. Doch das Neue
  Testament begnügt sich mit einer begrenzten Liste von Zeugen, in der
  Überzeugung, dass diese ausreicht, um den Leser zu überzeugen. So
  formuliert es Johannes gegen Ende seines Evangeliums: \RDiese aber sind
  geschrieben, damit ihr glaubt, dass Jesus der Christus ist, der Sohn
  Gottes, und damit ihr, weil ihr glaubt, das Leben habt in seinem Namen.\P
  (20:31)

  Aber wir wollen niemanden verurteilen, wenn diese Beispiele nicht
  ausreichen. Der Apostel Thomas, eines der ersten Beispiele für Ungläubige,
  akzeptierte keine externen Zeugen. Nur seine eigene Erfahrung hat ihn
  überzeugt. So lesen wir:

  <\quotation>
    Thomas aber, einer der Zwölf, der Zwilling genannt wird, war nicht bei
    ihnen, als Jesus kam. Da sagten die andern Jünger zu ihm: \RWir haben den
    Herrn gesehen.\P Er aber sprach zu ihnen: \RWenn ich nicht in seinen
    Händen die Nägelmale sehe und lege meinen Finger in die Nägelmale und
    lege meine Hand in seine Seite, kann ich's nicht glauben.\P

    Und nach acht Tagen waren seine Jünger abermals drinnen, und Thomas war
    bei ihnen. Kommt Jesus, als die Türen verschlossen waren, und tritt
    mitten unter sie und spricht: \RFriede sei mit euch!\P Danach spricht er
    zu Thomas: \RReiche deinen Finger her und sieh meine Hände, und reiche
    deine Hand her und lege sie in meine Seite, und sei nicht ungläubig,
    sondern gläubig!\P Thomas antwortete und sprach zu ihm: \RMein Herr und
    mein Gott!\P

    Spricht Jesus zu ihm: \RWeil du mich gesehen hast, darum glaubst du?
    Selig sind, die nicht sehen und doch glauben!\P (20:24--29)
  </quotation>

  <subsection|Aufgaben>

  <\enumerate>
    <item>Beweisen Sie, dass die ungeraden Quadratszahlen geteilt durch 4 den
    Rest 1 geben.

    <item>Jemand vermutet, dass alle ungeraden Zahlen auÿer 1 Primzahlen
    sind. Wenn er es einzeln versucht, wie viele Zeugen muss er anrufen, um
    seine Behauptung erfolgreich zu <with|font-shape|italic|widerlegen>?

    <item>Wir nehmen <math|n> Punkte auf dem Umfang eines Kreises und
    verbinden sie alle jeweils mit einer geraden Strecke miteinander. So
    lässt sich die Fläche des Kreises entlang der Abschnitte in etliche Teile
    unterteilen. Wir versuchen, die Umfangspunkte so zu platzieren, dass wir
    den Kreis in möglichst viele Teile aufteilen können. Bei <math|n=2>
    können wir also den Kreis in 2 Teile teilen, bei <math|n=3> in 4 Teile.
    Und im Fall von <math|n=4> in 8 Teile. Suchen Sie nach weiteren Zeugen,
    die die Vermutung bestätigen, dass die maximal erreichbare Anzahl von
    Teilen <math|2<rsup|n-1>> ist!

    <with|font-shape|italic|Widerlegen> Sie schlieÿlich die obige Vermutung.

    <item>Hat der Apostel Thomas wirklich die Nägelmale an Jesu Hand
    überprüft? Was sagt der neutestamentliche Text bzw.<abbr|> was schlagt er
    vor? Hat der Apostel Thomas doch Beweise bekommen?
  </enumerate>

  <chapter|Danksagungen>

  Der Autor möchte all jenen danken, die bei der Erstellung dieses Skriptums
  geholfen haben. Viele Freunde, Kolleginnen, Kollegen und Studierende haben
  direkt oder indirekt dazu beigetragen. Und schlieÿlich lässt sich in dieser
  Arbeit der offensichtliche Einfluss meiner Lehrer, einschlieÿlich derer auf
  Sekundarschul- und Universitätsebene, nachvollziehen.

  In dieser Danksagung nenne ich nur die Namen derjenigen, die mir direkt
  geholfen haben, sonst wäre die Liste extrem lang. Das Skriptum basiert
  weitgehend auf den jahrzehntelangen Forschungen meines Freundes
  <with|font-shape|italic|Christopher W.<abbr|> Brown>, der die CAD-Methode
  weithin zugänglich gemacht hat. Doch erst mit Hilfe meines Freundes
  <with|font-shape|italic|Róbert Vajda> lernte ich die CAD-Methode kennen.
  Ich wurde stark von meinem Doktorvater <with|font-shape|italic|Tomás Recio>
  beeinflusst, der meine Forschung in Richtung CAD-Methode sehr unterstützt
  hat.

  Die Motivationsdiskussion der Aussagenlogik basiert auf den Richtlinien
  meines hervorragenden Lehrers <with|font-shape|italic|Lajos Pósa>.

  Besonderer Dank geht an meinen Freund <with|font-shape|italic|Herbert
  Leonhartsberger>, der den letzten Unterabschnitt des Skriptums durchgesehen
  hat. Auch das Feedback von <with|font-shape|italic|Stefan Pechhacker> war
  bei der Vorbereitung dieses Kapitels hilfreich.

  Ich danke meiner Kollegin <with|font-shape|italic|Beatrix Hauer> und meinem
  Freund <with|font-shape|italic|Markus Hohenwarter> für die Möglichkeit, den
  Logikkurs in der Lehrerausbildung in Linz zu starten. Ich möchte mich
  besonders für die Hilfe meiner Studierenden <with|font-shape|italic|Andreas
  Ebetshuber>, <with|font-shape|italic|Hannah Hofmarcher> und
  <with|font-shape|italic|Hannah Ladendorfer> bedanken, die die ersten
  Versionen des Skriptums durchgesehen und einige korrigierende Anmerkungen
  gemacht haben. Dank an <with|font-shape|italic|Alexander Thaller>, der
  aktiv an der ersten Version des Kurses teilgenommen und das Aris-Programm
  verbessert hat.

  Die letzten 4 Schachprobleme in Kapitel 4 wurden von
  <with|font-shape|italic|Domonkos Kovács> erstellt.

  Nicht zuletzt danke ich dem <with|font-shape|italic|<TeXmacs>-Team> für die
  Unterstützung, insbesondere für die hilfreichen Kommentare von
  <with|font-shape|italic|Joris van der Hoeven>.

  \;

  <\bibliography|bib|tm-plain|wip>
    <\bib-list|26>
      <bibitem*|1><label|bib-AppelHaken77>Kenneth Appel<localize| and
      >Wolfgang Haken. <newblock>Solution of the four color map problem.
      <newblock><with|font-shape|italic|Scientific American>,
      237(4):108\U121, October 1977.<newblock>

      <bibitem*|2><label|bib-Arnon1981>Dennis<nbsp>S.<nbsp>Arnon.
      <newblock><with|font-shape|italic|Algorithms for the geometry of
      semi-algebraic sets>. <newblock><localize|PhD thesis>, Computer
      Sciences Department, University of Wisconsin, Madison, 1981.
      <newblock>Technical Report No. 436.<newblock>

      <bibitem*|3><label|bib-Elberfelder>Rudolf Brockhaus.
      <newblock><with|font-shape|italic|Elberfelder Bibel>.
      <newblock>Christliche Verlagsgesellschaft, Wuppertal/Dillenburg,
      2006.<newblock>

      <bibitem*|4><label|bib-buchbergerPhd>Bruno Buchberger.
      <newblock><with|font-shape|italic|An Algorithm for finding a basis for
      the residue class ring of a zero-dimensional polynomial ideal>.
      <newblock><localize|PhD thesis>, Math. Inst. University of Innsbruck,
      Austria, 1965.<newblock>

      <bibitem*|5><label|bib-RISC5936>David Cerna. <newblock>AXolotl: A
      self-study tool for first-order logic. <newblock>RISC Report Series,
      Research Institute for Symbolic Computation (RISC), Johannes Kepler
      University Linz, Altenberger Straÿe 69, 4040 Linz, Austria, May
      2019.<newblock>

      <bibitem*|6><label|bib-RISC5887>David<nbsp>M.<nbsp>Cerna.
      <newblock>Manual for AXolotl. <newblock>RISC Report Series, Research
      Institute for Symbolic Computation (RISC), Johannes Kepler University
      Linz, Altenberger Straÿe 69, 4040 Linz, Austria, 2019.<newblock>

      <bibitem*|7><label|bib-Chou_1987>Shang-Ching Chou.
      <newblock><with|font-shape|italic|Mechanical geometry theorem proving>.
      <newblock>Springer Science <math|+> Business Media, 1987.<newblock>

      <bibitem*|8><label|bib-Collins1975>George<nbsp>E.<nbsp>Collins.
      <newblock>Quantifier elimination for the elementary theory of real
      closed fields by cylindrical algebraic decomposition.
      <newblock><localize|Volume><nbsp>33<localize| of
      ><with|font-shape|italic|Lecture Notes in Computer Science>,
      <localize|pages >134\U183. 1975.<newblock>

      <bibitem*|9><label|bib-aris>Ian Dunn. <newblock>GNU Aris 2.2.
      <newblock>2014. <newblock><slink|https://www.gnu.org/software/aris/>.<newblock>

      <bibitem*|10><label|bib-minisat>Niklas Eén<localize| and >Niklas
      Sörensson. <newblock>An extensible SAT-solver. <newblock><localize|In
      >Enrico Giunchiglia<localize| and >Armando Tacchella<localize|,
      editors>, <with|font-shape|italic|SAT>, <localize|volume>
      2919<localize| of ><with|font-shape|italic|Lecture Notes in Computer
      Science>, <localize|pages >502\U518. Springer, 2003.<newblock>

      <bibitem*|11><label|bib-Gonthier2008>Georges Gonthier. <newblock>Formal
      proof \V the four-color theorem. <newblock><with|font-shape|italic|Notices
      of the AMS>, 55(11):1382\U1393, 12 2008.<newblock>

      <bibitem*|12><label|bib-Hales2015>Thomas Hales, Mark Adams, Gertrud
      Bauer, Dat<nbsp>Tat Dang, John Harrison, Truong<nbsp>Le Hoang, Cezary
      Kaliszyk, Victor Magron, Sean McLaughlin, Thang<nbsp>Tat Nguyen,
      Truong<nbsp>Quang Nguyen, Tobias Nipkow, Steven Obua, Joseph Pleso,
      Jason Rute, Alexey Solovyev, An<nbsp>Hoai<nbsp>Thi Ta, Trung<nbsp>Nam
      Tran, Diep<nbsp>Thi Trieu, Josef Urban, Ky<nbsp>Khac Vu<localize|, and
      >Roland Zumkeller. <newblock>A formal proof of the Kepler conjecture.
      <newblock>2015.<newblock>

      <bibitem*|13><label|bib-checkmate>Zoltán Kovács<localize| and >Benedek
      Kovács. <newblock>Checkmate. <newblock>2022.
      <newblock><slink|https://github.com/kovzol/checkmate>.<newblock>

      <bibitem*|14><label|bib-gdm>Zoltán Kovács<localize| and >Peter
      Mayerhofer. <newblock>Das Epsilon-Delta Spiel und Schach.
      <newblock><with|font-shape|italic|Mitteilungen der Gesellschaft für
      Didaktik der Mathematik>, 108:45\U48, 2020.<newblock>

      <bibitem*|15><label|bib-Lutherbibel>Martin Luther.
      <newblock><with|font-shape|italic|Die Bibel nach der Übersetzung Martin
      Luthers, revidierte Fassung>. <newblock>Deutsche Bibelgesellschaft,
      Stuttgart, 2017.<newblock>

      <bibitem*|16><label|bib-Pillichshammer2022>Friedrich Pillichshammer.
      <newblock><with|font-shape|italic|Diskrete Mathematik für Lehramt,
      Wintersemester 2022>. <newblock>Johannes Kepler Universität, Linz,
      2022.<newblock>

      <bibitem*|17><label|bib-Pillichshammer2022-ZT>Friedrich Pillichshammer.
      <newblock><with|font-shape|italic|Eine Einführung in die Zahlentheorie,
      Sommersemester 2022>. <newblock>Johannes Kepler Universität, Linz,
      2022.<newblock>

      <bibitem*|18><label|bib-Robertson1997>Neil Robertson, Daniel Sanders,
      Paul Seymour<localize|, and >Robin Thomas. <newblock>The four-colour
      theorem. <newblock><with|font-shape|italic|Journal of Combinatorial
      Theory, Series B>, 70(1):2\U44, 1997.<newblock>

      <bibitem*|19><label|bib-Tarski1983>Wolfram Schwabhäuser, Wanda
      Szmielew<localize|, and >Alfred Tarski.
      <newblock><with|font-shape|italic|Metamathematische Methoden in der
      Geometrie>. <newblock>Springer, 1983.<newblock>

      <bibitem*|20><label|bib-RS-WB>Raymond Smullyan.
      <newblock><with|font-shape|italic|Wie heiÿt dieses Buch?>
      <newblock>Vieweg, Braunschweig/Wiesbaden, 1981.<newblock>

      <bibitem*|21><label|bib-RS-DT>Raymond Smullyan.
      <newblock><with|font-shape|italic|Dame oder Tiger?> <newblock>Fischer
      Verlag, Frankfurt am Main, 1985.<newblock>

      <bibitem*|22><label|bib-Sturm1999>Thomas Sturm.
      <newblock><with|font-shape|italic|Real quantifier elimination in
      geometry>. <newblock><localize|PhD thesis>, FMI Passau, 1999.<newblock>

      <bibitem*|23><label|bib-tarski51>Alfred Tarski.
      <newblock><with|font-shape|italic|A decision method for elementary
      algebra and geometry>. <newblock>University of California Press,
      1951.<newblock>

      <bibitem*|24><label|bib-RISC3848>Róbert Vajda. <newblock>Supporting
      exploration in elementary analysis by computational, graphical and
      reasoning tools. <newblock>RISC Report Series 09-11, Research Institute
      for Symbolic Computation (RISC), Johannes Kepler University Linz,
      Altenberger Straÿe 69, 4040 Linz, Austria, June 2009.<newblock>

      <bibitem*|25><label|bib-ValeEnriquez-Brown>Fernando
      Vale-Enriquez<localize| and >Christopher<nbsp>W.<nbsp>Brown.
      <newblock>Polynomial constraints and unsat cores in
      <with|font-shape|small-caps|tarski>. <newblock><localize|In
      ><with|font-shape|italic|Mathematical Software \U ICMS 2018>,
      <localize|volume> 10931<localize| of ><with|font-shape|italic|Lecture
      Notes in Computer Science>, <localize|pages >466\U474. Springer, Cham,
      2018.<newblock>

      <bibitem*|26><label|bib-Wasilewska2021>Anita Wasilewska.
      <newblock><with|font-shape|italic|Logics for Computer Science:
      Classical and Non-Classical>. <newblock>Springer, 2021.
      <newblock><slink|https://www3.cs.stonybrook.edu/~cse371/sbook.pdf>.<newblock>
    </bib-list>
  </bibliography>

  \ 

  <\the-glossary|gly>
    <glossary-2|DNF|disjunktive Normalform|<pageref|auto-16>>

    <glossary-2|CNF|konjunktive Normalform|<pageref|auto-18>>

    <glossary-2|GNU|GNU's Not Unix|<pageref|auto-73>>

    <glossary-2|PDF|Portable Document Format|<pageref|auto-84>>

    <glossary-2|DIMACS|Center for Discrete Mathematics and Theoretical
    Computer Science|<pageref|auto-94>>

    <glossary-2|CAD|Cylindrical Algebraic Decomposition|<pageref|auto-136>>
  </the-glossary>

  <\the-index|idx>
    <index+1|AXolotl|<pageref|auto-38>>

    <index+1|Bachet-Spiel|<pageref|auto-127>>

    <index+1|CAD|<pageref|auto-137>>

    <index+1|CNF|<pageref|auto-17>>

    <index+1|Coq|<pageref|auto-156>>

    <index+1|DIMACS-CNF|<pageref|auto-95>>

    <index+1|DNF|<pageref|auto-15>>

    <index+1|Fallunterscheidung|<pageref|auto-9>>

    <index+1|Gödelscher Unvollständigkeitssatz|<pageref|auto-164>>

    <index+1|Gödelscher Vollständigkeitssatz|<pageref|auto-150>>

    <index+1|GeoGebra Discovery|<pageref|auto-105>>

    <index+1|GNU Aris|<pageref|auto-72>>

    <index+1|Herleitung|<pageref|auto-30>>

    <index+1|Hilbert-Kalkül|<pageref|auto-34>>

    <index+1|HOL Light|<pageref|auto-158>>

    <index+1|Hypothese|<pageref|auto-25>>

    <index+1|implikative Tautologie|<pageref|auto-27>>

    <index+1|Isabelle|<pageref|auto-159>>

    <index+1|Keplersche Vermutung|<pageref|auto-157>>

    <index+1|Konklusion|<pageref|auto-24>>

    <index+1|Kontraposition|<pageref|auto-32>>

    <index+1|LEAN|<pageref|auto-161>>

    <index+1*|Logik>

    <index+2|Logik|erster Stufe|<pageref|auto-100>>

    <index+2|Logik|nullter Stufe|<pageref|auto-99>>

    <index+1|L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|0|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X|<pageref|auto-51>,
    <pageref|auto-83>>

    <index+1|Mathematica|<pageref|auto-19>>

    <index+1|Minisat|<pageref|auto-96>>

    <index+1|Modallogik|<pageref|auto-167>>

    <index+1|modus ponens|<pageref|auto-33>>

    <index+1|Prämisse|<pageref|auto-23>>

    <index+1|Pränexform|<pageref|auto-113>>

    <index+1|Rückwärtsverkettung|<pageref|auto-37>>

    <index+1|reelle Quantorenelimination|<pageref|auto-110>>

    <index+1|SAT-Solver|<pageref|auto-88>>

    <index+1|Tarski\USeidenberg-Theorem|<pageref|auto-142>>

    <index+1|These|<pageref|auto-26>>

    <index+1|Umschreibregel|<pageref|auto-39>>

    <index+1|Vier-Farben-Satz|<pageref|auto-155>>

    <index+1|Wahrheitstafel|<pageref|auto-12>>

    <index+1|Wolfram\|Alpha|<pageref|auto-14>>

    <index+1|WolframScript|<pageref|auto-89>>

    <index+1|zulässige Ausdrücke|<pageref|auto-31>>
  </the-index>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|1.<space|2spc>Vorwort>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|2.<space|2spc>Was
    bedeutet \RLogik\P?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-2><vspace|0.5fn>

    2.1.<space|2spc>Welche Themen werden vorkommen?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>

    2.2.<space|2spc>Um welchen mathematischen Inhalt wird es gehen?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>

    2.3.<space|2spc>Benötige ich für die Teilnahme an dem Kurs irgendwelche
    Vorkenntnisse? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>

    2.4.<space|2spc>Aufgaben <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|3.<space|2spc>Aussagenlogik>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-7><vspace|0.5fn>

    3.1.<space|2spc>Eine Motivationsaufgabe
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>

    <with|par-left|1tab|3.1.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>>

    3.2.<space|2spc>Aufgaben auf der Insel der Ritter und Schurken
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>

    3.3.<space|2spc>Tautologien und Sätze
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>

    <with|par-left|1tab|3.3.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    3.4.<space|2spc>Herleitungen <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>

    <with|par-left|1tab|3.4.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>

    <with|par-left|1tab|3.4.2.<space|2spc>Rückwärtsverkettungen
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <with|par-left|1tab|3.4.3.<space|2spc>Vorgeschlagene Aufgaben in AXolotl
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>>

    3.5.<space|2spc>Zwischenspiel: Damen oder Tiger?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>

    <with|par-left|1tab|3.5.1.<space|2spc>Einleitung von Smullyan
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54>>

    <with|par-left|1tab|3.5.2.<space|2spc>Die Versuche des ersten Tages
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55>>

    <with|par-left|2tab|Der erste Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56>>

    <with|par-left|2tab|Der zweite Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>>

    <with|par-left|2tab|Der dritte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>>

    <with|par-left|1tab|3.5.3.<space|2spc>Die Versuche des zweiten Tages
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>>

    <with|par-left|2tab|Der vierte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>>

    <with|par-left|2tab|Der fünfte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>>

    <with|par-left|2tab|Der sechste Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>>

    <with|par-left|2tab|Der siebente Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>>

    <with|par-left|2tab|Der achte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>>

    <with|par-left|1tab|3.5.4.<space|2spc>Die Versuche des dritten Tages
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>>

    <with|par-left|2tab|Der neunte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66>>

    <with|par-left|2tab|Der zehnte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-67>>

    <with|par-left|2tab|Erste, zweite und dritte Wahl
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>>

    <with|par-left|1tab|3.5.5.<space|2spc>Der vierte Tag
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69>>

    <with|par-left|2tab|Ein logisches Labyrinth
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70>>

    3.6.<space|2spc>Herleitungen auf eine etwas andere Art
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>

    <with|par-left|1tab|3.6.1.<space|2spc>Eine frühere Tautologie
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-77>>

    <with|par-left|1tab|3.6.2.<space|2spc>Der vierte Versuch
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-81>>

    <with|par-left|1tab|3.6.3.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-86>>

    3.7.<space|2spc>SAT-solver <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-87>

    <with|par-left|1tab|3.7.1.<space|2spc>Wir formalisieren das logische
    Labyrinth <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-90>>

    <with|par-left|1tab|3.7.2.<space|2spc>Die Mathematica-Formel und ihre
    Analyse <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-91>>

    <with|par-left|1tab|3.7.3.<space|2spc>Aufgaben zur Formalisierung
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-92>>

    <with|par-left|1tab|3.7.4.<space|2spc>Erfüllbarkeit
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-93>>

    <with|par-left|1tab|3.7.5.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-97>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|4.<space|2spc>Prädikatenlogik>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-98><vspace|0.5fn>

    4.1.<space|2spc>Syntax <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-101>

    <with|par-left|1tab|4.1.1.<space|2spc>Die Schreibweise in Aris
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-102>>

    <with|par-left|1tab|4.1.2.<space|2spc>Die Schreibweise in Mathematica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-103>>

    <with|par-left|1tab|4.1.3.<space|2spc>Die Schreibweise in GeoGebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-104>>

    4.2.<space|2spc>Operationen <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-106>

    4.3.<space|2spc>Die Grundmenge <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-107>

    <with|par-left|1tab|4.3.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-108>>

    4.4.<space|2spc>Reelle Quantorenelimination
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-109>

    <with|par-left|1tab|4.4.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-111>>

    4.5.<space|2spc>Pränexforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-112>

    <with|par-left|1tab|4.5.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-114>>

    4.6.<space|2spc>Suchen nach Gewinnstrategie
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-115>

    <with|par-left|1tab|4.6.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-121>>

    4.7.<space|2spc>Schach und Matt! <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-122>

    <with|par-left|1tab|4.7.1.<space|2spc>Alternative: Das Bachet-Spiel
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-126>>

    <with|par-left|1tab|4.7.2.<space|2spc>Anwendungen
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-128>>

    <with|par-left|1tab|4.7.3.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-129>>

    4.8.<space|2spc>CAD <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-135>

    <with|par-left|1tab|4.8.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-143>>

    4.9.<space|2spc>Herleitbarkeit in der euklidischen Geometrie
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-145>

    <with|par-left|1tab|4.9.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-146>>

    <with|par-left|1tab|4.9.2.<space|2spc>Herleitungen nur mit Polynomen
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-147>>

    <with|par-left|1tab|4.9.3.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-148>>

    4.10.<space|2spc>Ohne Grundmenge <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-149>

    <with|par-left|1tab|4.10.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-151>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|5.<space|2spc>Logiken
    höherer Stufen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-153><vspace|0.5fn>

    5.1.<space|2spc>Maschinelle Beweise <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-154>

    <with|par-left|1tab|5.1.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-162>>

    5.2.<space|2spc>Ist alles, was wahr ist, beweisbar?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-163>

    <with|par-left|1tab|5.2.1.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-165>>

    5.3.<space|2spc>Gibt es Gott? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-166>

    <with|par-left|1tab|5.3.1.<space|2spc>Was sagt Gott dazu?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-168>>

    <with|par-left|2tab|Die Juden <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-169>>

    <with|par-left|2tab|Die Christen <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-170>>

    <with|par-left|1tab|5.3.2.<space|2spc>Aufgaben
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-171>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|6.<space|2spc>Danksagungen>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-172><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|Literaturverzeichnis>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-173><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|Glossar>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-174><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|Index>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-175><vspace|0.5fn>
  </table-of-contents>
</body>

<\initial>
  <\collection>
    <associate|global-title|Logik für Lehramt Mathematik>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|100000|<tuple|5.1|77>>
    <associate|3-1-impl|<tuple|3.1|14>>
    <associate|3-2-impl|<tuple|3.2|14>>
    <associate|3-3-impl|<tuple|3.3|15>>
    <associate|3-4-impl|<tuple|3.4|15>>
    <associate|3-5-impl|<tuple|3.5|15>>
    <associate|3-6-impl|<tuple|3.6|15>>
    <associate|4-5-1|<tuple|4.5.1|52>>
    <associate|4-5-1-1|<tuple|1|52>>
    <associate|AX1|<tuple|3.1|20>>
    <associate|AX10|<tuple|3.10|26>>
    <associate|AX11|<tuple|3.11|27>>
    <associate|AX2|<tuple|3.2|21>>
    <associate|AX3|<tuple|3.3|22>>
    <associate|AX4|<tuple|3.4|23>>
    <associate|AX5|<tuple|3.5|23>>
    <associate|AX6|<tuple|3.6|24>>
    <associate|AX7|<tuple|3.7|24>>
    <associate|AX8|<tuple|3.8|25>>
    <associate|AX9|<tuple|3.9|25>>
    <associate|aris-dt4|<tuple|3.18|37>>
    <associate|aris-dt4-latex|<tuple|3.19|38>>
    <associate|aris-godel1-latex|<tuple|4.19|73>>
    <associate|aris-keyb|<tuple|3.15|35>>
    <associate|aris-mp|<tuple|3.12|34>>
    <associate|aris-mp2|<tuple|3.13|34>>
    <associate|aris-mp3|<tuple|3.14|35>>
    <associate|aris-pimplp|<tuple|3.17|36>>
    <associate|aris-rules|<tuple|3.16|36>>
    <associate|auto-1|<tuple|1|5>>
    <associate|auto-10|<tuple|3.1|12>>
    <associate|auto-100|<tuple|Logik|45>>
    <associate|auto-101|<tuple|4.1|45>>
    <associate|auto-102|<tuple|4.1.1|45>>
    <associate|auto-103|<tuple|4.1.2|46>>
    <associate|auto-104|<tuple|4.1.3|46>>
    <associate|auto-105|<tuple|GeoGebra Discovery|46>>
    <associate|auto-106|<tuple|4.2|47>>
    <associate|auto-107|<tuple|4.3|47>>
    <associate|auto-108|<tuple|4.3.1|48>>
    <associate|auto-109|<tuple|4.4|49>>
    <associate|auto-110|<tuple|reelle Quantorenelimination|49>>
    <associate|auto-111|<tuple|4.4.1|50>>
    <associate|auto-112|<tuple|4.5|51>>
    <associate|auto-113|<tuple|Pränexform|51>>
    <associate|auto-114|<tuple|4.5.1|52>>
    <associate|auto-115|<tuple|4.6|53>>
    <associate|auto-116|<tuple|4.1|54>>
    <associate|auto-117|<tuple|4.2|55>>
    <associate|auto-118|<tuple|4.3|55>>
    <associate|auto-119|<tuple|4.4|56>>
    <associate|auto-12|<tuple|Wahrheitstafel|12>>
    <associate|auto-120|<tuple|4.5|56>>
    <associate|auto-121|<tuple|4.6.1|58>>
    <associate|auto-122|<tuple|4.7|58>>
    <associate|auto-123|<tuple|4.6|58>>
    <associate|auto-124|<tuple|4.7|59>>
    <associate|auto-125|<tuple|4.8|59>>
    <associate|auto-126|<tuple|4.7.1|60>>
    <associate|auto-127|<tuple|Bachet-Spiel|60>>
    <associate|auto-128|<tuple|4.7.2|60>>
    <associate|auto-129|<tuple|4.7.3|60>>
    <associate|auto-13|<tuple|3.2|12>>
    <associate|auto-130|<tuple|4.9|61>>
    <associate|auto-131|<tuple|4.10|61>>
    <associate|auto-132|<tuple|4.11|61>>
    <associate|auto-133|<tuple|4.12|62>>
    <associate|auto-134|<tuple|4.13|62>>
    <associate|auto-135|<tuple|4.8|63>>
    <associate|auto-136|<tuple|CAD|63>>
    <associate|auto-137|<tuple|CAD|63>>
    <associate|auto-138|<tuple|4.14|63>>
    <associate|auto-139|<tuple|4.15|64>>
    <associate|auto-14|<tuple|Wolfram\|Alpha|13>>
    <associate|auto-140|<tuple|4.16|65>>
    <associate|auto-141|<tuple|4.17|66>>
    <associate|auto-142|<tuple|Tarski\USeidenberg-Theorem|67>>
    <associate|auto-143|<tuple|4.8.1|67>>
    <associate|auto-144|<tuple|4.18|67>>
    <associate|auto-145|<tuple|4.9|68>>
    <associate|auto-146|<tuple|4.9.1|69>>
    <associate|auto-147|<tuple|4.9.2|69>>
    <associate|auto-148|<tuple|4.9.3|71>>
    <associate|auto-149|<tuple|4.10|71>>
    <associate|auto-15|<tuple|DNF|13>>
    <associate|auto-150|<tuple|Gödelscher Vollständigkeitssatz|73>>
    <associate|auto-151|<tuple|4.10.1|73>>
    <associate|auto-152|<tuple|4.19|73>>
    <associate|auto-153|<tuple|5|75>>
    <associate|auto-154|<tuple|5.1|75>>
    <associate|auto-155|<tuple|Vier-Farben-Satz|75>>
    <associate|auto-156|<tuple|Coq|76>>
    <associate|auto-157|<tuple|Keplersche Vermutung|76>>
    <associate|auto-158|<tuple|HOL Light|76>>
    <associate|auto-159|<tuple|Isabelle|76>>
    <associate|auto-16|<tuple|DNF|13>>
    <associate|auto-160|<tuple|5.1|77>>
    <associate|auto-161|<tuple|LEAN|77>>
    <associate|auto-162|<tuple|5.1.1|77>>
    <associate|auto-163|<tuple|5.2|77>>
    <associate|auto-164|<tuple|Gödelscher Unvollständigkeitssatz|78>>
    <associate|auto-165|<tuple|5.2.1|78>>
    <associate|auto-166|<tuple|5.3|79>>
    <associate|auto-167|<tuple|Modallogik|81>>
    <associate|auto-168|<tuple|5.3.1|81>>
    <associate|auto-169|<tuple|5.3.1|81>>
    <associate|auto-17|<tuple|CNF|13>>
    <associate|auto-170|<tuple|<with|mode|<quote|math>|\<bullet\>>|82>>
    <associate|auto-171|<tuple|5.3.2|83>>
    <associate|auto-172|<tuple|6|85>>
    <associate|auto-173|<tuple|6|87>>
    <associate|auto-174|<tuple|26|89>>
    <associate|auto-175|<tuple|26|91>>
    <associate|auto-18|<tuple|CNF|13>>
    <associate|auto-19|<tuple|Mathematica|13>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-20|<tuple|3.1.1|13>>
    <associate|auto-21|<tuple|3.2|13>>
    <associate|auto-22|<tuple|3.3|14>>
    <associate|auto-23|<tuple|Prämisse|14>>
    <associate|auto-24|<tuple|Konklusion|14>>
    <associate|auto-25|<tuple|Hypothese|14>>
    <associate|auto-26|<tuple|These|14>>
    <associate|auto-27|<tuple|implikative Tautologie|15>>
    <associate|auto-28|<tuple|3.3.1|16>>
    <associate|auto-29|<tuple|3.4|17>>
    <associate|auto-3|<tuple|2.1|8>>
    <associate|auto-30|<tuple|Herleitung|17>>
    <associate|auto-31|<tuple|zulässige Ausdrücke|17>>
    <associate|auto-32|<tuple|Kontraposition|18>>
    <associate|auto-33|<tuple|modus ponens|18>>
    <associate|auto-34|<tuple|Hilbert-Kalkül|19>>
    <associate|auto-35|<tuple|3.4.1|19>>
    <associate|auto-36|<tuple|3.4.2|19>>
    <associate|auto-37|<tuple|Rückwärtsverkettung|19>>
    <associate|auto-38|<tuple|AXolotl|19>>
    <associate|auto-39|<tuple|Umschreibregel|19>>
    <associate|auto-4|<tuple|2.2|8>>
    <associate|auto-40|<tuple|3.1|20>>
    <associate|auto-41|<tuple|3.2|21>>
    <associate|auto-42|<tuple|3.3|22>>
    <associate|auto-43|<tuple|3.4|23>>
    <associate|auto-44|<tuple|3.5|23>>
    <associate|auto-45|<tuple|3.6|24>>
    <associate|auto-46|<tuple|3.7|24>>
    <associate|auto-47|<tuple|3.8|25>>
    <associate|auto-48|<tuple|3.9|25>>
    <associate|auto-49|<tuple|3.10|26>>
    <associate|auto-5|<tuple|2.3|9>>
    <associate|auto-50|<tuple|3.11|27>>
    <associate|auto-51|<tuple|L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X|28>>
    <associate|auto-52|<tuple|3.4.3|29>>
    <associate|auto-53|<tuple|3.5|29>>
    <associate|auto-54|<tuple|3.5.1|29>>
    <associate|auto-55|<tuple|3.5.2|29>>
    <associate|auto-56|<tuple|3.5.2|29>>
    <associate|auto-57|<tuple|3.5.2|30>>
    <associate|auto-58|<tuple|3.5.2|30>>
    <associate|auto-59|<tuple|3.5.3|30>>
    <associate|auto-6|<tuple|2.4|9>>
    <associate|auto-60|<tuple|3.5.3|31>>
    <associate|auto-61|<tuple|3.5.3|31>>
    <associate|auto-62|<tuple|3.5.3|31>>
    <associate|auto-63|<tuple|3.5.3|31>>
    <associate|auto-64|<tuple|3.5.3|31>>
    <associate|auto-65|<tuple|3.5.4|32>>
    <associate|auto-66|<tuple|3.5.4|32>>
    <associate|auto-67|<tuple|3.5.4|32>>
    <associate|auto-68|<tuple|3.5.4|32>>
    <associate|auto-69|<tuple|3.5.5|33>>
    <associate|auto-7|<tuple|3|11>>
    <associate|auto-70|<tuple|3.5.5|33>>
    <associate|auto-71|<tuple|3.6|33>>
    <associate|auto-72|<tuple|GNU Aris|33>>
    <associate|auto-73|<tuple|GNU|33>>
    <associate|auto-74|<tuple|3.12|34>>
    <associate|auto-75|<tuple|3.13|34>>
    <associate|auto-76|<tuple|3.14|35>>
    <associate|auto-77|<tuple|3.6.1|35>>
    <associate|auto-78|<tuple|3.15|35>>
    <associate|auto-79|<tuple|3.16|36>>
    <associate|auto-8|<tuple|3.1|11>>
    <associate|auto-80|<tuple|3.17|36>>
    <associate|auto-81|<tuple|3.6.2|37>>
    <associate|auto-82|<tuple|3.18|37>>
    <associate|auto-83|<tuple|L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X|38>>
    <associate|auto-84|<tuple|PDF|38>>
    <associate|auto-85|<tuple|3.19|38>>
    <associate|auto-86|<tuple|3.6.3|39>>
    <associate|auto-87|<tuple|3.7|39>>
    <associate|auto-88|<tuple|SAT-Solver|39>>
    <associate|auto-89|<tuple|WolframScript|39>>
    <associate|auto-9|<tuple|Fallunterscheidung|11>>
    <associate|auto-90|<tuple|3.7.1|39>>
    <associate|auto-91|<tuple|3.7.2|40>>
    <associate|auto-92|<tuple|3.7.3|41>>
    <associate|auto-93|<tuple|3.7.4|41>>
    <associate|auto-94|<tuple|DIMACS|41>>
    <associate|auto-95|<tuple|DIMACS-CNF|41>>
    <associate|auto-96|<tuple|Minisat|43>>
    <associate|auto-97|<tuple|3.7.5|43>>
    <associate|auto-98|<tuple|4|45>>
    <associate|auto-99|<tuple|Logik|45>>
    <associate|bib-AppelHaken77|<tuple|1|87>>
    <associate|bib-Arnon1981|<tuple|2|87>>
    <associate|bib-Chou_1987|<tuple|7|87>>
    <associate|bib-Collins1975|<tuple|8|87>>
    <associate|bib-Elberfelder|<tuple|3|87>>
    <associate|bib-Gonthier2008|<tuple|11|87>>
    <associate|bib-Hales2015|<tuple|12|87>>
    <associate|bib-Lutherbibel|<tuple|15|87>>
    <associate|bib-Pillichshammer2022|<tuple|16|87>>
    <associate|bib-Pillichshammer2022-ZT|<tuple|17|87>>
    <associate|bib-RISC3848|<tuple|24|87>>
    <associate|bib-RISC5887|<tuple|6|87>>
    <associate|bib-RISC5936|<tuple|5|87>>
    <associate|bib-RS-DT|<tuple|21|87>>
    <associate|bib-RS-WB|<tuple|20|87>>
    <associate|bib-Robertson1997|<tuple|18|87>>
    <associate|bib-Sturm1999|<tuple|22|87>>
    <associate|bib-Tarski1983|<tuple|19|87>>
    <associate|bib-ValeEnriquez-Brown|<tuple|25|87>>
    <associate|bib-Wasilewska2021|<tuple|26|87>>
    <associate|bib-aris|<tuple|9|87>>
    <associate|bib-buchbergerPhd|<tuple|4|87>>
    <associate|bib-checkmate|<tuple|13|87>>
    <associate|bib-gdm|<tuple|14|87>>
    <associate|bib-minisat|<tuple|10|87>>
    <associate|bib-tarski51|<tuple|23|87>>
    <associate|cad1|<tuple|4.14|63>>
    <associate|cad2|<tuple|4.15|64>>
    <associate|cad3|<tuple|4.16|65>>
    <associate|cad4|<tuple|4.17|66>>
    <associate|cad56|<tuple|4.18|67>>
    <associate|chess1|<tuple|4.6|58>>
    <associate|chess2|<tuple|4.7|59>>
    <associate|chess2b|<tuple|4.8|59>>
    <associate|chess3|<tuple|4.9|61>>
    <associate|chess4|<tuple|4.10|61>>
    <associate|chess5|<tuple|4.11|61>>
    <associate|chess6|<tuple|4.12|62>>
    <associate|chess7|<tuple|4.13|62>>
    <associate|cnf|<tuple|3.7|41>>
    <associate|e1|<tuple|4.13|70>>
    <associate|e2|<tuple|4.14|70>>
    <associate|e3|<tuple|4.15|70>>
    <associate|e4|<tuple|4.16|70>>
    <associate|e5|<tuple|4.17|70>>
    <associate|e6|<tuple|4.18|70>>
    <associate|e8|<tuple|4.19|70>>
    <associate|f1|<tuple|4.20|70>>
    <associate|f2|<tuple|4.21|70>>
    <associate|f3|<tuple|4.22|70>>
    <associate|f4|<tuple|4.23|70>>
    <associate|f5|<tuple|4.24|70>>
    <associate|f6|<tuple|4.25|70>>
    <associate|f8|<tuple|4.26|70>>
    <associate|footnote-3.1|<tuple|3.1|13>>
    <associate|footnote-3.2|<tuple|3.2|33>>
    <associate|footnote-5.1|<tuple|5.1|81>>
    <associate|footnr-3.1|<tuple|3.1|13>>
    <associate|footnr-3.2|<tuple|3.2|33>>
    <associate|footnr-5.1|<tuple|5.1|81>>
    <associate|limes1|<tuple|4.1|54>>
    <associate|limes2|<tuple|4.2|55>>
    <associate|limes3|<tuple|4.3|55>>
    <associate|limes4b|<tuple|4.4|56>>
    <associate|limes5b|<tuple|4.5|56>>
    <associate|limit|<tuple|4.12|54>>
    <associate|line1|<tuple|4.6|50>>
    <associate|line2|<tuple|4.7|50>>
    <associate|line3|<tuple|4.8|50>>
    <associate|no-limit|<tuple|4.11|53>>
    <associate|pred|<tuple|4.1|45>>
    <associate|pred2|<tuple|4.2|47>>
    <associate|pred3|<tuple|4.3|47>>
    <associate|prenex|<tuple|4.9|51>>
    <associate|quadr|<tuple|4.5|49>>
    <associate|rah-fel|<tuple|3.1|11>>
    <associate|twin|<tuple|4.4|48>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      RS-DT

      RS-DT

      RS-DT

      RS-DT

      RS-DT

      RS-DT

      RS-DT

      Pillichshammer2022

      Pillichshammer2022

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      RS-WB

      Pillichshammer2022

      Pillichshammer2022

      Wasilewska2021

      RISC5887

      RISC5936

      Pillichshammer2022

      aris

      RS-DT

      Pillichshammer2022

      minisat

      RISC3848

      gdm

      checkmate

      ValeEnriquez-Brown

      Collins1975

      Arnon1981

      tarski51

      Sturm1999

      Chou_1987

      buchbergerPhd

      Tarski1983

      AppelHaken77

      Robertson1997

      Gonthier2008

      Hales2015

      Pillichshammer2022-ZT

      Lutherbibel

      Elberfelder
    </associate>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.1>|>
        \;
      </surround>|<pageref|auto-40>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.2>|>
        \;
      </surround>|<pageref|auto-41>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.3>|>
        \;
      </surround>|<pageref|auto-42>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.4>|>
        \;
      </surround>|<pageref|auto-43>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.5>|>
        \;
      </surround>|<pageref|auto-44>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.6>|>
        \;
      </surround>|<pageref|auto-45>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.7>|>
        \;
      </surround>|<pageref|auto-46>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.8>|>
        \;
      </surround>|<pageref|auto-47>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.9>|>
        \;
      </surround>|<pageref|auto-48>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.10>|>
        \;
      </surround>|<pageref|auto-49>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.11>|>
        \;
      </surround>|<pageref|auto-50>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.12>|>
        \;
      </surround>|<pageref|auto-74>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.13>|>
        \;
      </surround>|<pageref|auto-75>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.14>|>
        \;
      </surround>|<pageref|auto-76>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.15>|>
        \;
      </surround>|<pageref|auto-78>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.16>|>
        \;
      </surround>|<pageref|auto-79>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.17>|>
        \;
      </surround>|<pageref|auto-80>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.18>|>
        \;
      </surround>|<pageref|auto-82>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.19>|>
        \;
      </surround>|<pageref|auto-85>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.1>|>
        \;
      </surround>|<pageref|auto-116>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.2>|>
        \;
      </surround>|<pageref|auto-117>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.3>|>
        \;
      </surround>|<pageref|auto-118>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.4>|>
        \;
      </surround>|<pageref|auto-119>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.5>|>
        \;
      </surround>|<pageref|auto-120>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.6>|>
        \;
      </surround>|<pageref|auto-123>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.7>|>
        \;
      </surround>|<pageref|auto-124>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.8>|>
        \;
      </surround>|<pageref|auto-125>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.9>|>
        \;
      </surround>|<pageref|auto-130>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.10>|>
        \;
      </surround>|<pageref|auto-131>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.11>|>
        \;
      </surround>|<pageref|auto-132>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.12>|>
        \;
      </surround>|<pageref|auto-133>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.13>|>
        \;
      </surround>|<pageref|auto-134>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.14>|>
        \;
      </surround>|<pageref|auto-138>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.15>|>
        \;
      </surround>|<pageref|auto-139>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.16>|>
        Ausgabe des <with|font-shape|<quote|small-caps>|Tarski>-Programms für
        die Eingabe <with|font-family|<quote|tt>|language|<quote|verbatim>|(plot2d
        [x\<less\>y^2] "400 400 -5 5 -5 5 -")>. Hier ist \R400 400\P die
        Gröÿe der Ausgabe, und die folgenden Zahlen sind die minimalen und
        maximalen <with|mode|<quote|math>|x>- und
        <with|mode|<quote|math>|y>-Koordinaten. Das Programm kann unter
        <locus|<id|%-4E6633268--4E5B620B8>|<link|hyperlink|<id|%-4E6633268--4E5B620B8>|<url|https://matek.hu/tarski/webtarski.html>>|<with|font-family|<quote|tt>|language|<quote|verbatim>|https://matek.hu/tarski/webtarski.html>>
        getestet werden.
      </surround>|<pageref|auto-140>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.17>|>
        Eine Version der Ausgabe des <with|font-shape|<quote|small-caps>|Tarski>-Programms,
        gespiegelt an der Geraden <with|mode|<quote|math>|y=x>, erzeugt durch
        die Eingabe <with|font-family|<quote|tt>|language|<quote|verbatim>|(plot2d
        [y\<gtr\>0 /\\ x^2=(x+y)^2] "400 400 -5 5 -5 5 -" '(ord (y x)))>.
        Hier gibt das Ende des Befehls an, dass das Slicing \Rin umgekehrter
        Richtung\P zur Standardeinstellung erfolgen soll.
      </surround>|<pageref|auto-141>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.18>|>
        \;
      </surround>|<pageref|auto-144>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.19>|>
        \;
      </surround>|<pageref|auto-152>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|5.1>|>
        Jährliche Statistiken über die Zahl der Veröffentlichungen in der
        Mathematik, 1996\U2014. Quelle: <locus|<id|%-4E6633268--4E5B35E38>|<link|hyperlink|<id|%-4E6633268--4E5B35E38>|<url|https://mathoverflow.net/questions/233984/how-many-papers-are-posted-a-year>>|<with|font-family|<quote|tt>|language|<quote|verbatim>|https://mathoverflow.net/questions/233984/how-many-papers-are-posted-a-year>>.
      </surround>|<pageref|auto-160>>
    </associate>
    <\associate|gly>
      <tuple|normal|DNF|disjunktive Normalform|<pageref|auto-16>>

      <tuple|normal|CNF|konjunktive Normalform|<pageref|auto-18>>

      <tuple|normal|GNU|GNU's Not Unix|<pageref|auto-73>>

      <tuple|normal|PDF|Portable Document Format|<pageref|auto-84>>

      <tuple|normal|DIMACS|Center for Discrete Mathematics and Theoretical
      Computer Science|<pageref|auto-94>>

      <tuple|normal|CAD|Cylindrical Algebraic
      Decomposition|<pageref|auto-136>>
    </associate>
    <\associate|idx>
      <tuple|<tuple|Fallunterscheidung>|<pageref|auto-9>>

      <tuple|<tuple|Wahrheitstafel>|<pageref|auto-12>>

      <tuple|<tuple|Wolfram\|Alpha>|<pageref|auto-14>>

      <tuple|<tuple|DNF>|<pageref|auto-15>>

      <tuple|<tuple|CNF>|<pageref|auto-17>>

      <tuple|<tuple|Mathematica>|<pageref|auto-19>>

      <tuple|<tuple|Prämisse>|<pageref|auto-23>>

      <tuple|<tuple|Konklusion>|<pageref|auto-24>>

      <tuple|<tuple|Hypothese>|<pageref|auto-25>>

      <tuple|<tuple|These>|<pageref|auto-26>>

      <tuple|<tuple|implikative Tautologie>|<pageref|auto-27>>

      <tuple|<tuple|Herleitung>|<pageref|auto-30>>

      <tuple|<tuple|zulässige Ausdrücke>|<pageref|auto-31>>

      <tuple|<tuple|Kontraposition>|<pageref|auto-32>>

      <tuple|<tuple|modus ponens>|<pageref|auto-33>>

      <tuple|<tuple|Hilbert-Kalkül>|<pageref|auto-34>>

      <tuple|<tuple|Rückwärtsverkettung>|<pageref|auto-37>>

      <tuple|<tuple|AXolotl>|<pageref|auto-38>>

      <tuple|<tuple|Umschreibregel>|<pageref|auto-39>>

      <tuple|<tuple|L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X>|<pageref|auto-51>>

      <tuple|<tuple|GNU Aris>|<pageref|auto-72>>

      <tuple|<tuple|L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X>|<pageref|auto-83>>

      <tuple|<tuple|SAT-Solver>|<pageref|auto-88>>

      <tuple|<tuple|WolframScript>|<pageref|auto-89>>

      <tuple|<tuple|DIMACS-CNF>|<pageref|auto-95>>

      <tuple|<tuple|Minisat>|<pageref|auto-96>>

      <tuple|<tuple|Logik|nullter Stufe>|<pageref|auto-99>>

      <tuple|<tuple|Logik|erster Stufe>|<pageref|auto-100>>

      <tuple|<tuple|GeoGebra Discovery>|<pageref|auto-105>>

      <tuple|<tuple|reelle Quantorenelimination>|<pageref|auto-110>>

      <tuple|<tuple|Pränexform>|<pageref|auto-113>>

      <tuple|<tuple|Bachet-Spiel>|<pageref|auto-127>>

      <tuple|<tuple|CAD>|<pageref|auto-137>>

      <tuple|<tuple|Tarski\USeidenberg-Theorem>|<pageref|auto-142>>

      <tuple|<tuple|Gödelscher Vollständigkeitssatz>|<pageref|auto-150>>

      <tuple|<tuple|Vier-Farben-Satz>|<pageref|auto-155>>

      <tuple|<tuple|Coq>|<pageref|auto-156>>

      <tuple|<tuple|Keplersche Vermutung>|<pageref|auto-157>>

      <tuple|<tuple|HOL Light>|<pageref|auto-158>>

      <tuple|<tuple|Isabelle>|<pageref|auto-159>>

      <tuple|<tuple|LEAN>|<pageref|auto-161>>

      <tuple|<tuple|Gödelscher Unvollständigkeitssatz>|<pageref|auto-164>>

      <tuple|<tuple|Modallogik>|<pageref|auto-167>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.1>|>
        <assign|the-label|Wahrheitstafel><flag|Index|dark
        green|key><assign|auto-nr|11><write|idx|<tuple|<tuple|Wahrheitstafel>|<pageref|auto-11>>>
      </surround>|<pageref|auto-11>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.2>|>
        \;
      </surround>|<pageref|auto-13>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1.<space|2spc>Vorwort>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2.<space|2spc>Was
      bedeutet \RLogik\P?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      2.1.<space|2spc>Welche Themen werden vorkommen?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      2.2.<space|2spc>Um welchen mathematischen Inhalt wird es gehen?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      2.3.<space|2spc>Benötige ich für die Teilnahme an dem Kurs irgendwelche
      Vorkenntnisse? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      2.4.<space|2spc>Aufgaben <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3.<space|2spc>Aussagenlogik>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-7><vspace|0.5fn>

      3.1.<space|2spc>Eine Motivationsaufgabe
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      <with|par-left|<quote|1tab>|3.1.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      3.2.<space|2spc>Aufgaben auf der Insel der Ritter und Schurken
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      3.3.<space|2spc>Tautologien und Sätze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      <with|par-left|<quote|1tab>|3.3.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      3.4.<space|2spc>Herleitungen <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>

      <with|par-left|<quote|1tab>|3.4.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|3.4.2.<space|2spc>Rückwärtsverkettungen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|3.4.3.<space|2spc>Vorgeschlagene Aufgaben
      in AXolotl <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      3.5.<space|2spc>Zwischenspiel: Damen oder Tiger?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      <with|par-left|<quote|1tab>|3.5.1.<space|2spc>Einleitung von Smullyan
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|3.5.2.<space|2spc>Die Versuche des ersten
      Tages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|Der erste Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|2tab>|Der zweite Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|2tab>|Der dritte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1tab>|3.5.3.<space|2spc>Die Versuche des zweiten
      Tages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|2tab>|Der vierte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|2tab>|Der fünfte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|2tab>|Der sechste Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|2tab>|Der siebente Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|Der achte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|3.5.4.<space|2spc>Die Versuche des dritten
      Tages <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|Der neunte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|2tab>|Der zehnte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|2tab>|Erste, zweite und dritte Wahl
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|1tab>|3.5.5.<space|2spc>Der vierte Tag
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <with|par-left|<quote|2tab>|Ein logisches Labyrinth
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      3.6.<space|2spc>Herleitungen auf eine etwas andere Art
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      <with|par-left|<quote|1tab>|3.6.1.<space|2spc>Eine frühere Tautologie
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>>

      <with|par-left|<quote|1tab>|3.6.2.<space|2spc>Der vierte Versuch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>>

      <with|par-left|<quote|1tab>|3.6.3.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>>

      3.7.<space|2spc>SAT-solver <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>

      <with|par-left|<quote|1tab>|3.7.1.<space|2spc>Wir formalisieren das
      logische Labyrinth <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>>

      <with|par-left|<quote|1tab>|3.7.2.<space|2spc>Die Mathematica-Formel
      und ihre Analyse <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>>

      <with|par-left|<quote|1tab>|3.7.3.<space|2spc>Aufgaben zur
      Formalisierung <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>>

      <with|par-left|<quote|1tab>|3.7.4.<space|2spc>Erfüllbarkeit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93>>

      <with|par-left|<quote|1tab>|3.7.5.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4.<space|2spc>Prädikatenlogik>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-98><vspace|0.5fn>

      4.1.<space|2spc>Syntax <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>

      <with|par-left|<quote|1tab>|4.1.1.<space|2spc>Die Schreibweise in Aris
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102>>

      <with|par-left|<quote|1tab>|4.1.2.<space|2spc>Die Schreibweise in
      Mathematica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103>>

      <with|par-left|<quote|1tab>|4.1.3.<space|2spc>Die Schreibweise in
      GeoGebra <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-104>>

      4.2.<space|2spc>Operationen <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106>

      4.3.<space|2spc>Die Grundmenge <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-107>

      <with|par-left|<quote|1tab>|4.3.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-108>>

      4.4.<space|2spc>Reelle Quantorenelimination
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-109>

      <with|par-left|<quote|1tab>|4.4.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111>>

      4.5.<space|2spc>Pränexforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-112>

      <with|par-left|<quote|1tab>|4.5.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-114>>

      4.6.<space|2spc>Suchen nach Gewinnstrategie
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-115>

      <with|par-left|<quote|1tab>|4.6.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-121>>

      4.7.<space|2spc>Schach und Matt! <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-122>

      <with|par-left|<quote|1tab>|4.7.1.<space|2spc>Alternative: Das
      Bachet-Spiel <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-126>>

      <with|par-left|<quote|1tab>|4.7.2.<space|2spc>Anwendungen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-128>>

      <with|par-left|<quote|1tab>|4.7.3.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-129>>

      4.8.<space|2spc>CAD <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-135>

      <with|par-left|<quote|1tab>|4.8.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-143>>

      4.9.<space|2spc>Herleitbarkeit in der euklidischen Geometrie
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-145>

      <with|par-left|<quote|1tab>|4.9.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-146>>

      <with|par-left|<quote|1tab>|4.9.2.<space|2spc>Herleitungen nur mit
      Polynomen <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-147>>

      <with|par-left|<quote|1tab>|4.9.3.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-148>>

      4.10.<space|2spc>Ohne Grundmenge <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-149>

      <with|par-left|<quote|1tab>|4.10.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-151>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|5.<space|2spc>Logiken
      höherer Stufen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-153><vspace|0.5fn>

      5.1.<space|2spc>Maschinelle Beweise
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-154>

      <with|par-left|<quote|1tab>|5.1.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-162>>

      5.2.<space|2spc>Ist alles, was wahr ist, beweisbar?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-163>

      <with|par-left|<quote|1tab>|5.2.1.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-165>>

      5.3.<space|2spc>Gibt es Gott? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-166>

      <with|par-left|<quote|1tab>|5.3.1.<space|2spc>Was sagt Gott dazu?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-168>>

      <with|par-left|<quote|2tab>|Die Juden
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-169>>

      <with|par-left|<quote|2tab>|Die Christen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-170>>

      <with|par-left|<quote|1tab>|5.3.2.<space|2spc>Aufgaben
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-171>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|6.<space|2spc>Danksagungen>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-172><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Literaturverzeichnis>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-173><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Glossar>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-174><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Index>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-175><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>