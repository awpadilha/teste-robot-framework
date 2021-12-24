# André Wilson Padilha
*** Variables ***
${SITE}                                           https://www.digitalhouse.com/br
${NAVEGADOR}                                      Chrome   
${BOTAO-CURSOS}                                   xpath=//a[contains(text(),'Conheça nossos cursos')]

# VARIAVEIS TESTE 1
${CURSO-DATA-ANALYTICS}                           xpath=//div[@id='__next']/div/main/section[2]/div/div/div/a/span
${DESCRICAO-DATA-ANALYTICS}                       xpath=//div[@id='__next']/div/main/section/div/div
${TEXTO-DESCRICAO-DATA-ANALYTICS}                 Transforme grandes quantidades de dados em insights
${TEXTO-DESCRICAO-DATA-ANALYTICS-EXTRA}           manipulação e análise de dados
${INSCREVA-SE-DATA-ANALYTICS}                     xpath=//*[@id="0"]/div/a
${DESCRICAO-VALIDAR-CURSO-DATA-ANALYTICS}         xpath=//div[@id='__next']/div/main/section[2]/div/div[2]/dl/div/div[4]/div/div/span
${TEXTO-VALIDAR-CURSO-DATA-ANALYTICS}             R$ 9.824,00

# VARIAVEIS TESTE 2
${CURSO-DATA-SCIENCE}                            xpath=//div[@id='__next']/div/main/section[2]/div/div/div[2]/a/span/p
${DESCRICAO-DATA-SCIENCE}                        xpath=//div[@id='__next']/div/main/section/div/div
${TEXTO-DESCRICAO-DATA-SCIENCE}                  Machine learning, inteligência artificial e tudo mais sobre a ciência de dados
${TEXTO-DESCRICAO-DATA-SCIENCE-EXTRA}            processamento e análise de grandes quantidades de dados
${INSCREVA-SE-DATA-SCIENCE}                      xpath=//*[@id="0"]/div/a
${DESCRICAO-VALIDAR-CURSO-DATA-SCIENCE}          xpath=//div[@id='__next']/div/main/section[2]/div/div[2]/dl/div/div[4]/div/div/span
${TEXTO-VALIDAR-CURSO-DATA-SCIENCE}              R$ 11.312,00

# VARIAVEIS TESTE 3
${CURSO-MOBILE-ANDROID}                          xpath=//div[@id='__next']/div/main/section[2]/div/div/div[3]/a/span/p
${DESCRICAO-MOBILE-ANDROID}                      xpath=//div[@id='__next']/div/main/section/div/div    
${TEXTO-DESCRICAO-MOBILE-ANDROID}                Crie seu próprio app do zero em até 5 meses      
${TEXTO-DESCRICAO-MOBILE-ANDROID-EXTRA}          desenvolver aplicações móveis como um programador profissional
#${INSCREVA-SE-MOBILE-ANDROID} ESGOTADO                   
#${DESCRICAO-VALIDAR-CURSO-MOBILE-ANDROID} ESGOTADO        
#${TEXTO-VALIDAR-CURSO-DATA-MOBILE-ANDROID} ESGOTADO

# VARIAVEIS TESTE 4
${CURSO-MOBILE-IOS}                               xpath=//div[@id='__next']/div/main/section[2]/div/div/div[4]/a/span                    
${DESCRICAO-MOBILE-IOS}                           xpath=//div[@id='__next']/div/main/section/div/div/div/div/div/p              
${TEXTO-DESCRICAO-MOBILE-IOS}                     Aprenda Swift e crie seu próprio app em até 5 meses                  
${TEXTO-DESCRICAO-MOBILE-IOS-EXTRA}               criar apps estáveis, funcionais e atrativos         
${INSCREVA-SE-MOBILE-IOS}                         xpath=(//a[contains(text(),'Inscreva-se')])[2]    
${DESCRICAO-VALIDAR-CURSO-MOBILE-IOS}             xpath=//div[@id='__next']/div/main/section[2]/div/div[2]/dl/div/div[4]
${TEXTO-VALIDAR-CURSO-MOBILE-IOS}                 R$ 8.269,00

# VARIAVEIS TESTE 5
${CURSO-WEB-FULL-STACK}                           xpath=//div[@id='__next']/div/main/section[2]/div/div/div[5]/a/span               
${DESCRICAO-WEB-FULL-STACK}                       xpath=//div[@id='__next']/div/main/section/div/div
${TEXTO-DESCRICAO-WEB-FULL-STACK}                 Aprenda a criar sites e aplicativos web, do começo ao fim.  
${TEXTO-DESCRICAO-WEB-FULL-STACK-EXTRA}           integração do front-end com o back-end
${INSCREVA-SE-WEB-FULL-STACK}                     xpath=(//a[contains(text(),'Inscreva-se')])[2]
${DESCRICAO-VALIDAR-CURSO-WEB-FULL-STACK}         xpath=//div[@id='__next']/div/main/section[2]/div/div[2]/dl/div/div[4]
${TEXTO-VALIDAR-CURSO-WEB-FULL-STACK}             R$ 9.824,00


# VARIAVEIS TESTE 6
${CURSO-CTD}                                      xpath=//div[@id='__next']/div/main/section[2]/div/div/div[10]/a/span/p                         
${DESCRICAO-CTD}                                  xpath=//div[@id='uJoXSc4pmpxQqCNPVe60oOnXzvTHiJXF']/h1/font/b
${TEXTO-DESCRICAO-CTD}                            Crie novas formas de viver o mundo
${TEXTO-DESCRICAO-CTD-EXTRA}                      Venha desenvolver uma carreira que pode mudar o mundo 
${INSCREVA-SE-CTD}                                xpath=//a[@id='wIc9FaFLQtAaqfERX7toZ8vOupowTGkN']/div
${BOTAO-NOME-INSCRICAO-CTD}                       xpath=//input[@id='SPxdIrhGPqy1WTAe5qzVoB7MONOoSOZB']
${NOME-INSCRICAO-CTD}                             André 
${BOTAO-SOBRENOME-INSCRICAO-CTD}                  xpath=//input[@id='DyESSyoTrg8EZUGtiPbmZmuL5y03FlCN']     
${SOBRENOME-INSCRICAO-CTD}                        Padilha   
${BOTAO-EMAIL-INSCRICAO-CTD}                      xpath=//input[@id='Lbqhh6B7SmT1OnakIxZ0TBmT2o2IxVNq'] 
${EMAIL-INSCRICAO-CTD}                            padilha.a.w@gmail.com
${BOTAO-CELULAR-INSCRICAO-CTD}                    xpath=//input[@id='zVe3bzxdSNmVk5qFPuJgonal9LqQMlq8'] 
${CELULAR-INSCRICAO-CTD}                          14 998542228   

*** Keywords ***
Abrir o site 
  Open Browser                      ${SITE}                 ${NAVEGADOR}
  Maximize Browser Window
  Set Selenium Speed                0.25

#TESTE 1
1.Clicar em “Aceitar Cookies”
  Sleep               5
  Select frame        xpath=/html/body/iframe[2]
  Click Element       xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect frame
  
1.Clicar em “Conheça nossos cursos”
  Wait and Click                    ${BOTAO-CURSOS}
  
1.Selecionar o curso “Data Analytics”
  Wait and Click                    ${CURSO-DATA-ANALYTICS}

1.Verificar se o subtitulo do curso corresponde a “Transforme grandes quantidades de dados em insights.”
  Element Should Contain            ${DESCRICAO-DATA-ANALYTICS}                    ${TEXTO-DESCRICAO-DATA-ANALYTICS}

1.Verificar se a página contém o termo “manipulação e análise de dados”
  Page Should Contain               ${TEXTO-DESCRICAO-DATA-ANALYTICS-EXTRA}

1.Clicar em “Inscreva-se” 
  Wait and Click                    ${INSCREVA-SE-DATA-ANALYTICS} 

1.Validar se o valor do curso é “R$ 9.824,00”
  Element Should Contain            ${DESCRICAO-VALIDAR-CURSO-DATA-ANALYTICS}       ${TEXTO-VALIDAR-CURSO-DATA-ANALYTICS}     


#TESTE 2
2.Clicar em “Aceitar Cookies”
  Sleep               5
  Select frame        xpath=/html/body/iframe[2]
  Click Element       xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect frame
  
2.Clicar em “Conheça nossos cursos”
  Wait and Click                    ${BOTAO-CURSOS}
  
2.Selecionar o curso “Data Science”
  Wait and Click                    ${CURSO-DATA-SCIENCE}

2.Verificar se o subtitulo do curso corresponde a “Machine learning, inteligência artificial e tudo mais sobre a ciência de dados.”
  Element Should Contain            ${DESCRICAO-DATA-SCIENCE}                  ${TEXTO-DESCRICAO-DATA-SCIENCE}

2.Verificar se a página contém o termo “processamento e análise de grandes quantidades de dados”
  Page Should Contain               ${TEXTO-DESCRICAO-DATA-SCIENCE-EXTRA}

2.Clicar em “Inscreva-se”
  Wait and Click                    ${INSCREVA-SE-DATA-SCIENCE} 

2.Validar se o valor do curso é “R$ 11.312,00”
  Element Should Contain            ${DESCRICAO-VALIDAR-CURSO-DATA-SCIENCE}     ${TEXTO-VALIDAR-CURSO-DATA-SCIENCE}     

# TESTE 3
3.Clicar em “Aceitar Cookies”
  Sleep               5 
  Select frame        xpath=/html/body/iframe[2]
  Click Element       xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect frame

3.Clicar em “Conheça nossos cursos”
  Wait and Click                    ${BOTAO-CURSOS}

3.Selecionar o curso “Desenvolvimento Mobile Android”
  Wait and Click                    ${CURSO-MOBILE-ANDROID}

3.Verificar se o subtitulo do curso corresponde a “Crie seu próprio app do zero em até 5 meses”
  Element Should Contain            ${DESCRICAO-MOBILE-ANDROID}           ${TEXTO-DESCRICAO-MOBILE-ANDROID}

3.Verificar se a página contém o termo “desenvolver aplicações móveis como um programador profissional”
  Page Should Contain               ${TEXTO-DESCRICAO-MOBILE-ANDROID-EXTRA}

#3.Clicar em “Inscreva-se”
  #Wait and Click                   ${INSCREVA-SE-MOBILE-ANDROID} 

#3.Validar se o valor do curso é “R$ 8.269,00”
  #Element Should Contain           ${DESCRICAO-VALIDAR-CURSO-MOBILE-ANDROID}       ${TEXTO-VALIDAR-CURSO-MOBILE-ANDROID} 

# TESTE 4
4.Clicar em “Aceitar Cookies”
  Sleep               5
  Select frame        xpath=/html/body/iframe[2]
  Click Element       xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect frame

4.Clicar em “Conheça nossos cursos”
  Wait and Click                    ${BOTAO-CURSOS}

4.Selecionar o curso “Desenvolvimento Mobile IOS”
  Wait and Click                    ${CURSO-MOBILE-IOS} 

4.Verificar se o subtitulo do curso corresponde a “Aprenda Swift e crie seu próprio app em até 5 meses”
  Element Should Contain            ${DESCRICAO-MOBILE-IOS}                    ${TEXTO-DESCRICAO-MOBILE-IOS}  

4.Verificar se a página contém o termo “criar apps estáveis, funcionais e atrativos”
  Page Should Contain               ${TEXTO-DESCRICAO-MOBILE-IOS-EXTRA}     

4.Clicar em “Inscreva-se”
  Wait and Click                    ${INSCREVA-SE-MOBILE-IOS}   

4.Validar se o valor do curso é “R$ 8.269,00”
  Element Should Contain            ${DESCRICAO-VALIDAR-CURSO-MOBILE-IOS}      ${TEXTO-VALIDAR-CURSO-MOBILE-IOS} 

# TESTE 5
5.Clicar em “Aceitar Cookies”
  Sleep               5
  Select frame        xpath=/html/body/iframe[2]
  Click Element       xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect frame

5.Clicar em “Conheça nossos cursos”
   Wait and Click                   ${BOTAO-CURSOS}

5.Selecionar o curso “Desenvolvimento Web Full Stack”
  Wait and Click                    ${CURSO-WEB-FULL-STACK} 

5.Verificar se o subtitulo do curso corresponde a “Aprenda a criar sites e aplicativos web, do começo ao fim.”
  Element Should Contain            ${DESCRICAO-WEB-FULL-STACK}                    ${TEXTO-DESCRICAO-WEB-FULL-STACK}  

5.Verificar se a página contém o termo “integração do front-end com o back-end”
  Page Should Contain               ${TEXTO-DESCRICAO-WEB-FULL-STACK-EXTRA} 

5.Clicar em “Inscreva-se”
   Wait and Click                   ${INSCREVA-SE-WEB-FULL-STACK} 

5.Validar se o valor do curso é “R$ 9.824,00”
  Element Should Contain            ${DESCRICAO-VALIDAR-CURSO-WEB-FULL-STACK}      ${TEXTO-VALIDAR-CURSO-WEB-FULL-STACK}  

# TESTE 6
6.Clicar em “Aceitar Cookies”
  Sleep               5
  Select frame        xpath=/html/body/iframe[2]
  Click Element       xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect frame
  
6.Clicar em “Conheça nossos cursos”
  Wait and Click                    ${BOTAO-CURSOS}
  
6.Selecionar o curso “Certified Tech Developer”
  Wait and Click                    ${CURSO-CTD}

6.Verificar se o subtitulo do curso corresponde a “Crie novas formas de viver o mundo”
  Element Should Contain            ${DESCRICAO-CTD}                          ${TEXTO-DESCRICAO-CTD}

6.Verificar se a página contém o termo “Venha desenvolver uma carreira que pode mudar o mundo”
  Page Should Contain               ${TEXTO-DESCRICAO-CTD-EXTRA}

6.Clicar em “Inscreva-se”
  Wait and Click                    ${INSCREVA-SE-CTD} 

6.Preencher os campos do formulário “Faça parte do futuro digital”
  Input Text                        ${BOTAO-NOME-INSCRICAO-CTD}               ${NOME-INSCRICAO-CTD}     
  Input Text                        ${BOTAO-SOBRENOME-INSCRICAO-CTD}          ${SOBRENOME-INSCRICAO-CTD}
  Input Text                        ${BOTAO-EMAIL-INSCRICAO-CTD}              ${EMAIL-INSCRICAO-CTD}
  Input Text                        ${BOTAO-CELULAR-INSCRICAO-CTD}            ${CELULAR-INSCRICAO-CTD}             

Wait and Click
  [Arguments]                       ${ELEMENTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  [Arguments]                       ${ELEMENTO}     ${TEXTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Input Text                        ${ELEMENTO}     ${TEXTO}