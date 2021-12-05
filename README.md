# Trabalhando com EL e JSTL na prática: implementando uma agenda de contatos

- O **JSTL** é um conjunto amplo de tag libraries

- O **EL** permite ainda mais facilidade na hora de 
ler informações presentes em um escopo


<h2>Evite o Uso de Código Java em JSP</h2>

- Apesar de JSPs terem sido criados para 
possibilitarem a mistura de HTML e código 
Java, escrever código Java em JSPs não é 
uma boa prática
– Dificulta o trabalho de web designers, que não 
são programadores
– Para páginas complexas, o código fica confuso
– Dificuldade de manutenção

<h3>Alternativas aos Scriptlets</h3>

- JavaBeans
- EL (Expression Language)
- JSTL (Java Server Pages Standard Tag )
Library

<h3>JavaBeans</h3>

 <p>É uma especificação Java que define um padrão de classe</p>
<p>Uma classe é um JavaBean se: </p>

<li>Possui um construtor público sem argumentos</li>

<li>Possui métodos getters e/ou setters definidos 
corretamente</li>

<li> A assinatura dos getters e setters segue um 
padrão</li>

<h3>EL e JavaBeans</h3>

<li> Ler propriedades de JavaBeans é muito mais 
fácil usando EL</li>

<h3>JSTL</h3>

<p><strong>JSTL é um conjunto de tag libraries que 
complementa as facilidades providas pela 
EL</strong></p>

<li>As tag libraries definem ações</li>
<li>Substituem códigos Java nos arquivos JSP</li>
<br>
<p><strong>JSTL é bastante extensa :</strong></p>
<li>Core library</li>
<li>SQL library</li>
<li>Formatting library</li>
<li>XML library</li>
<br>

<p><strong>Para usar o JSTL na sua aplicação, são 
necessários dois arquivos JAR no classpath</strong></p>

<li>jstl-api-XX.jar</li>
<li>jstl-impl-XX.jar</li>
<li>Os arquivos podem ser encontrados na 
página do projeto do JSTL</li>
<li>http://jstl.java.net</li>
