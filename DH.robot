# André Wilson Padilha
*** Settings ***
Library         SeleniumLibrary
Resource        ./DH.resource
Test Setup      Abrir o site
Test Teardown   Close Browser   

*** Test Cases ***
1.Validação das informações do curso de Data Analytics
  1.Clicar em “Aceitar Cookies”
  1.Clicar em “Conheça nossos cursos”
  1.Selecionar o curso “Data Analytics”
  1.Verificar se o subtitulo do curso corresponde a “Transforme grandes quantidades de dados em insights.”
  1.Verificar se a página contém o termo “manipulação e análise de dados”
  1.Clicar em “Inscreva-se”
  1.Validar se o valor do curso é “R$ 9.824,00”

2.Validação das informações do curso de Data Science
  2.Clicar em “Aceitar Cookies”
  2.Clicar em “Conheça nossos cursos”
  2.Selecionar o curso “Data Science”
  2.Verificar se o subtitulo do curso corresponde a “Machine learning, inteligência artificial e tudo mais sobre a ciência de dados.”
  2.Verificar se a página contém o termo “processamento e análise de grandes quantidades de dados”
  2.Clicar em “Inscreva-se”
  2.Validar se o valor do curso é “R$ 11.312,00”

3.Validação das informações do curso de Desenvolvimento Mobile Android
  3.Clicar em “Aceitar Cookies”
  3.Clicar em “Conheça nossos cursos”
  3.Selecionar o curso “Desenvolvimento Mobile Android”
  3.Verificar se o subtitulo do curso corresponde a “Crie seu próprio app do zero em até 5 meses”
  3.Verificar se a página contém o termo “desenvolver aplicações móveis como um programador profissional”
  #3.Clicar em “Inscreva-se”
  #3.Validar se o valor do curso é “R$ 8.269,00”

4.Validação das informações do curso de Desenvolvimento Mobile IOS
  4.Clicar em “Aceitar Cookies”
  4.Clicar em “Conheça nossos cursos”
  4.Selecionar o curso “Desenvolvimento Mobile IOS”
  4.Verificar se o subtitulo do curso corresponde a “Aprenda Swift e crie seu próprio app em até 5 meses”
  4.Verificar se a página contém o termo “criar apps estáveis, funcionais e atrativos”
  4.Clicar em “Inscreva-se”
  4.Validar se o valor do curso é “R$ 8.269,00”

5.Validação das informações do curso de Desenvolvimento Web Full Stack
  5.Clicar em “Aceitar Cookies”
  5.Clicar em “Conheça nossos cursos”
  5.Selecionar o curso “Desenvolvimento Web Full Stack”
  5.Verificar se o subtitulo do curso corresponde a “Aprenda a criar sites e aplicativos web, do começo ao fim.”
  5.Verificar se a página contém o termo “integração do front-end com o back-end”
  5.Clicar em “Inscreva-se”
  5.Validar se o valor do curso é “R$ 9.824,00”


6.Validação das informações do curso Certified Tech Developer
  6.Clicar em “Aceitar Cookies”
  6.Clicar em “Conheça nossos cursos”
  6.Selecionar o curso “Certified Tech Developer”
  6.Verificar se o subtitulo do curso corresponde a “Crie novas formas de viver o mundo”
  6.Verificar se a página contém o termo “Venha desenvolver uma carreira que pode mudar o mundo”
  6.Clicar em “Inscreva-se”
  6.Preencher os campos do formulário “Faça parte do futuro digital”