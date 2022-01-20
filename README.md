# instagram_clone

Um projeto de clonar a interface do instagram para treinar os recursos de navegação, autenticação de usuário e construção de telas na linguagem dart/framework Flutter

## Primeiros passos

Primeiramente, para o armazenamento de dados da aplicação e informações de usuario, foram utilizados recursos da plataforma de nuvem **firebase** 

###### Recursos de integração do firebase

- firebase_auth: para implementação do serviço de autenticação
- firebase_core: para estabelecer a conexão do firebase com a aplicação flutter
- firebase_storage: para o armazenamento de arquivos da aplicação (ex: fotos de postagens e perfil do usuário), vulgo repositório
- cloud_firestore: armazenamento dos dados da aplicação (banco de dados)