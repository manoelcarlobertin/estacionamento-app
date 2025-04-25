🧁 Visão Geral do Projeto: Sistema de Gestão de Estacionamento
✅ Funcionalidades
Autenticação e Autorização:

Login e logout (com Devise)

Controle de acessos e permissões (com Pundit)

Cadastros:

Clientes

Veículos

Vagas

Entradas e saídas de veículos

Dashboard de Vagas:

Exibir vagas livres e ocupadas em tempo real

Design:

Layout bonito com Bootstrap

Navbar, footer, páginas organizadas

Extras:

Uso de simple_form, faker para seeds

Código com partials para reaproveitamento

🎥 VÍDEOS RECOMENDADOS
Curso de Rails da Invenio Tech (Daniel Moreira)

Autenticação com Devise – Diego Fernandes (Rocketseat)

Agora o projeto conta com:

Políticas Pundit completas

Dashboard dinâmico no Home

Alerts compartilhados

Botões com ícones

Partials reaproveitáveis

Fluxo Operacional
Registrar Entrada

Operador digita placa + seleciona vaga livre.

Movimento.create dispara after_create, marcando vaga como ocupada e gravando entrada: Time.current.

Registrar Saída

Em outra view (ou index de movimentos), o operador escolhe um Movimento sem saida e adiciona a hora de saída.

after_update libera a vaga (status: true).
