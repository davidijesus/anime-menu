# 📺 Anime Menu — Atividade Ponderada 2

Aplicativo SwiftUI de listagem e detalhamento de programas de TV (animes, desenhos e séries), desenvolvido em grupo durante a Atividade Ponderada 2.

**Integrantes:** Davi e Laura  
**Duração:** 100 minutos

---

## 📋 Sobre o Projeto

O app **Anime Menu** implementa quatro telas de um catálogo de programas:

- **Tela 1 — Lista de Programas:** exibe 3 cards fixos (sem ScrollView), cada um navegando para sua própria tela de detalhe.
- **Telas 2a / 2b / 2c — Detalhe do Programa:** exibem sinopse, informações gerais e personagens principais de cada série.

O foco da atividade estava em estruturar layouts com `VStack`, `HStack` e `ZStack`, criar componentes reutilizáveis (`ShowCard`, `InfoBadge`, `CharacterRow`) e implementar os wireframes com fidelidade visual.

---

## Passo a Passo do Desenvolvimento

### 1. Leitura do enunciado e divisão de tarefas
A dupla leu o documento da ponderada juntos para entender o escopo completo. Decidimos dividir: cada um ficaria responsável por partes específicas para depois integrar tudo na tela principal.

### 2. Criação da estrutura de pastas e arquivos (Davi)
Davi criou toda a estrutura de pastas e arquivos do projeto Xcode, seguindo exatamente o esqueleto pedido no enunciado — `Models/`, `Views/` e `Views/Components/`.

### 3. Pesquisa de componentes na documentação Apple (Laura)
Laura mergulhou nas documentações da Apple para estudar a construção dos componentes necessários, com foco principal no `InfoBadge`. As referências consultadas foram:

- [Create an Algorithm for Badges](https://developer.apple.com/tutorials/develop-in-swift/create-an-algorithm-for-badges)
- [VStack — SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/vstack)
- [SF Symbols](https://developer.apple.com/sf-symbols/)

### 4. Implementação do ShowCard e telas de detalhe (Davi)
Davi implementou os `ShowCard`s e as `DetailView`s. Os cards exigiam atenção especial para a **avaliação com estrelas**, que foi uma das maiores dificuldades do projeto — representar visualmente a nota com estrelas preenchidas, semivazias e vazias de forma dinâmica deu trabalho.

### 5. Dificuldade com integração ao GitHub
A dupla perdeu um tempo tentando conectar o projeto ao repositório via GitHub no PC — o processo de autenticação e configuração do Xcode com Git deu problema. No começo optamos por **subir o projeto como arquivo `.zip`** para não perder tempo da ponderada.Mas bem no finalzinho, o Davi conseguiu fazer o push em um repositório. O ponto ruim foi que no momento da construção, Laura ficou sem commits registrados, Mas aqui nesse documento estamos evideciando a contribuição de cada um da dupla. 

### 6. Integração dos componentes na tela principal (Davi)
Com os componentes prontos, Davi ficou responsável por integrá-los à `ListaView`, conectando os `NavigationLink`s de cada `ShowCard` às suas respectivas `DetailView`s.

### 7. Implementação do CharacterRow (juntos)
Enquanto Davi integrava, Laura foi estudando a estrutura e construção do `CharacterRow`. Esse componente foi **codado em conjunto**, revisando o layout `HStack` e o estilo visual das linhas de personagem.

### 8. Ir Além: DetailView reutilizável
A dupla tentou implementar o bônus de **Ir Além** — uma única `ProgramaDetailView(programa: Programa)` reutilizável em vez de três views separadas. Esse esforço foi mais desafiador do que esperávamos, mas fez parte do aprendizado de como parametrizar Views em SwiftUI.

---

## ⚠️ Dificuldades Encontradas

| Dificuldade | Descrição |
|---|---|
| **GitHub no PC** | Autenticação e configuração do Xcode com Git não funcionaram; resolvemos subindo o `.zip` do projeto |
| **Estrelas no ShowCard** | Renderizar a avaliação com estrelas parciais de forma dinâmica exigiu mais lógica do que o esperado |
| **Ir Além** | Parametrizar uma única `DetailView` para os três programas foi o trecho mais desafiador da entrega |

---

## 📚 Referências

- [Firelink Library — Plano de Estudos SwiftUI](https://firelink-library.github.io/mobile/swift/plano-estudos)
- [SwiftUI — Views and Controls](https://developer.apple.com/documentation/swiftui/views-and-controls)
- [SwiftUI — NavigationStack](https://developer.apple.com/documentation/swiftui/navigationstack)
- [SwiftUI — VStack](https://developer.apple.com/documentation/swiftui/vstack)
- [Create an Algorithm for Badges](https://developer.apple.com/tutorials/develop-in-swift/create-an-algorithm-for-badges)
- [SF Symbols](https://developer.apple.com/sf-symbols/)
