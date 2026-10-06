# Serv Granja — Petshop e Veterinária

Landing page completa e responsiva em HTML5, CSS3 e JavaScript puro, pronta para hospedagem na Hostinger. Não requer Node.js, PHP, banco de dados, npm ou etapa de build no servidor.

## Publicar na Hostinger

1. Baixe [serv-granja-hostinger.zip](downloads/serv-granja-hostinger.zip?raw=true).
2. No hPanel, abra o gerenciamento do domínio e o **Gerenciador de arquivos**. Use uma hospedagem de sites com acesso a arquivos; o Criador de Sites da Hostinger não importa este projeto como um template editável.
3. Abra a pasta **public_html** do domínio. Se houver outro site, faça um backup antes de substituir arquivos. Em uma instalação vazia, remova ou renomeie somente a página padrão que conflitar com `index.html`.
4. Envie o ZIP e extraia seu conteúdo **diretamente em public_html**, sem criar uma subpasta. Depois da extração, `public_html/index.html`, `public_html/styles.css`, `public_html/app.js`, `public_html/.htaccess` e `public_html/assets/` devem existir.
5. Remova da hospedagem o ZIP enviado depois de extrair. Abra o domínio com HTTPS e verifique os botões do WhatsApp, menu móvel, fotos e mapa. O domínio precisa apontar para sua hospedagem e ter SSL ativo.

O ZIP contém apenas os arquivos públicos. Não envie a pasta completa do repositório para o servidor. Se preferir baixar pelo botão **Code → Download ZIP** do GitHub, envie apenas o **conteúdo** de `public_html` para a pasta homônima do domínio.

Documentação oficial: [Gerenciador de arquivos](https://support.hostinger.com/en/articles/4548688-basic-actions-in-the-file-manager) · [Arquivos em public_html](https://www.hostinger.com/support/4622321-basic-actions-in-cpanel-file-manager-at-hostinger/).

## Estrutura

```text
public_html/
  index.html       # Conteúdo, serviços, contatos, horários e mapa
  styles.css       # Estilo e layout responsivo
  app.js           # Menu, animações e links de agendamento
  .htaccess        # Documento inicial, compressão e cabeçalhos
  assets/          # Imagens locais
downloads/
  serv-granja-hostinger.zip
scripts/
  package.ps1      # Atualiza o ZIP depois de editar o site
```

## Editar e testar

Abra `public_html/index.html` no navegador. Edite os textos e horários no HTML, o visual no CSS e as mensagens de WhatsApp no JavaScript. Os links e imagens usam caminhos relativos e funcionam no domínio ou em subpastas.

Depois de alterar arquivos, execute no Windows, a partir da raiz do projeto:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/package.ps1
```

Em Linux/macOS, gere um ZIP com os arquivos públicos, incluindo `.htaccess`:

```sh
mkdir -p downloads
cd public_html
zip -r -FS ../downloads/serv-granja-hostinger.zip .
```

Envie novamente o ZIP atualizado. O repositório não contém credenciais ou configurações de publicação do serviço Sites. Nenhum login do ChatGPT é necessário para abrir a versão hospedada na Hostinger.

## Funcionalidades e dados

- Menu responsivo e navegável por teclado, animações com respeito à preferência de movimento reduzido.
- Especialidades, Exames Complementares e Atendimento Veterinário com a relação de serviços solicitada.
- Botões abrem o WhatsApp com mensagem sobre a categoria; agendamentos dependem da confirmação da equipe.
- Endereço e WhatsApp confirmados: Rua Justo Bernardino da Silva, 49-A, José Américo, João Pessoa/PB; (83) 98840-0564.
- Horários confirmados: segunda a sexta, 8h às 19h; sábado e domingo, 8h às 18h. Não há promessa de plantão 24 horas.
- E-mail `petshopservgranja@gmail.com` e fotos consultados no [cadastro público da empresa](https://mechameaqui.com.br/v2/serv-granja-joao-pessoa-pb). O e-mail ainda deve ser confirmado pela empresa.
- Mascote original gerado para a proposta; marca tipográfica proposta, sem arquivo oficial de logotipo fornecido.
- Feed estático com acesso ao [Instagram oficial](https://www.instagram.com/servgranja/), sem sincronização automática ou avaliações inventadas.
- Google Maps, Google Fonts, Instagram e WhatsApp dependem de internet. Não há formulários, rastreadores nem armazenamento de dados pessoais.

Para trocar o número, altere `contact.whatsapp` em `app.js` e os links de fallback `wa.me` e `tel` em `index.html`.

