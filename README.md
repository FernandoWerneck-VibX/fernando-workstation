# 🧰 Fernando Workstation — Provisionamento Profissional para Pop!_OS com Ansible

Este repositório contém um conjunto completo de **playbooks Ansible**, **roles modulares** e **scripts de automação**
para configurar rapidamente uma estação de trabalho Pop!_OS totalmente preparada para desenvolvimento moderno.

A proposta principal é simples:

> **Ligar uma máquina nova → rodar o bootstrap → sair com tudo configurado, idêntico em todas as máquinas.**

---

# 🚀 Principais Recursos

- **Sistema Operacional Otimizado**
  - Atualizações automatizadas
  - Remoção de apps desnecessários
  - Sysctl e ZRAM otimizados

- **Ambiente de Desenvolvimento Completo**
  - Java (SDKMAN, Maven, Gradle)
  - Node (NVM, Yarn, PNPM, Vue CLI, Vite)
  - Python (Pyenv)
  - Flutter SDK

- **DevOps e Kubernetes**
  - Docker + Compose
  - kubectl
  - k9s
  - helm
  - kind

- **Shell Produtivo (Bash)**
  - fzf
  - ripgrep
  - bash-autosuggestions
  - bash-syntax-highlighting
  - bash-you-should-use
  - bash-git-prompt
  - Git com autocompletion

- **Aplicativos Essenciais**
  - Chrome
  - Sublime Text
  - Obsidian
  - Postman
  - Discord
  - Spotify
  - YouTube Music
  - Celluloid (vídeo)
  - gThumb (imagens)

- **Google Drive Integrado**
  - rclone + systemd mount
  - bind automático das pastas:
    - `~/Downloads`
    - `~/docs`

- **Gerenciamento de Dotfiles**
  - Chezmoi integrado e aplicado automaticamente

- **Clonagem Automática de Projetos**
  - Repositórios definidos em `group_vars/all.yml` são clonados em `~/projects`

---

# 🧭 Como Usar

## 🔹 1. Baixe o repositório (ou clone no GitHub)

```bash
git clone git@github.com:FernandoWerneck-VibX/fernando-workstation.git
cd fernando-workstation
```

## 🔹 2. Execute o bootstrap

```bash
chmod +x bootstrap.sh
./bootstrap.sh
```

O script irá:

1. Instalar Ansible
2. Validar dependências
3. Executar o playbook principal
4. Configurar todo o ambiente automaticamente

---

# ⚙️ Primeira Execução com Google Drive

A integração com o Google Drive usa **rclone**.

Na primeira máquina, execute:

```bash
rclone config
```

Siga os passos na tela e configure um remote chamado `gdrive`.

Depois, execute o playbook novamente:

```bash
ansible-playbook -i inventory.ini site.yml --ask-become-pass
```

Isso ativará:

- `/home/SEU_USUARIO/GoogleDrive`  
- Bind para `~/Downloads` e `~/docs`  

---

# 🛠 Personalização

Toda a personalização do ambiente fica em:

```
group_vars/all.yml
```

### Exemplos de configurações disponíveis:

```yaml
dev_user: fernando
dev_home: "/home/{{ dev_user }}"

git_user_name: "Fernando Werneck"
git_user_email: "fernando@vibx.com.br"

java_version: "24-open"
node_version: "lts/*"
python_version: "3.12.2"

chezmoi_repo: "https://github.com/SEU_REPO_DOTFILES"

projects_repos:
  - name: exemplo-api
    url: git@github.com:usuario/exemplo-api.git
  - name: exemplo-front
    url: git@github.com:usuario/exemplo-front.git
```

Você pode customizar:

- Versões de linguagens
- Repositório de dotfiles
- Repositórios a serem clonados
- Nome do usuário
- Estrutura de pastas
- Apps a instalar nas roles

---

# 🧪 Testes e Troubleshooting

## 🔹 Testar se o Google Drive montou corretamente

```bash
mount | grep GoogleDrive
```

## 🔹 Reiniciar o serviço do Google Drive

```bash
systemctl --user restart rclone-gdrive
```

## 🔹 Testar Docker

```bash
docker run hello-world
```

## 🔹 Testar se os repositórios foram clonados

```bash
ls ~/projects
```

## 🔹 Testar configurações do Bash

```bash
echo $PROMPT_COMMAND
type _fzf_history
```

## 🔹 Ver logs de erros do Ansible

```bash
cat ansible.log
```

---

# 🎯 Motivação do Projeto

Este projeto nasceu da necessidade de:

- Eliminar horas de configuração manual após formatar uma máquina  
- Garantir que computadores diferentes tenham exatamente o **mesmo ambiente**  
- Acelerar o onboarding em novas máquinas ou ambientes de trabalho  
- Padronizar ferramentas, versões e comportamento do sistema  
- Aumentar produtividade e evitar discrepâncias entre setups pessoais/profissionais  
- Criar uma workstation robusta, moderna e confiável  

A configuração manual pode levar **3 a 5 horas** — aqui, tudo leva apenas **10 minutos**.

---

# 📄 Licença

**MIT License**

Você pode:

- Usar
- Modificar
- Adaptar
- Distribuir
- Incorporar em projetos pessoais ou corporativos

Tudo livremente.

```
Copyright 2025  
Permissão é concedida...
```