# 🧰 Scripts Utilitários — Fernando Workstation

A pasta `/scripts` contém ferramentas essenciais para:

- Manutenção do sistema
- Produtividade em desenvolvimento
- Gerenciamento de containers
- Kubernetes
- Rotinas Git
- Integração com Google Drive
- Criação e gerenciamento de microserviços

Os scripts são organizados por categorias:

```
scripts/
├── system
├── git
├── docker
├── k8s
├── gdrive
└── dev
```

---

# ▶️ Como usar

Dê permissão de execução:

```bash
chmod +x scripts/**/*.sh
```

Execute diretamente:

```bash
./scripts/system/update-system.sh
```

Ou adicione ao PATH:

```bash
export PATH="$HOME/scripts:$PATH"
```

---

# 🧩 Categorias e Explicação Detalhada

## 1. SYSTEM
Scripts para manutenção geral.

### cleanup.sh
Remove caches e arquivos temporários.

### update-system.sh
Atualiza apt, Flatpak, Snap, SDKMAN, NVM e Pyenv.

### boost.sh
Ativa modo performance.

### restore-governor.sh
Restaura modo normal.

### check-env.sh
Mostra diagnóstico rápido de versões instaladas.

---

## 2. GIT

### sync-projects.sh
Executa git pull em todos os projetos de ~/projects.

### backup-dotfiles.sh
Salva e envia dotfiles com chezmoi.

### rotate-ssh-keys.sh
Gera nova chave SSH e mostra a pública.

---

## 3. DOCKER

### docker-reset.sh
Remove containers, imagens, volumes e redes.

### docker-clean-untagged.sh
Remove imagens <none>.

### docker-up-all.sh
Sobe automaticamente todos docker-compose em ~/projects.

---

## 4. K8S

### k8s-ctx.sh
Lista e troca contextos.

### k9s-ns.sh
Abre K9s direto no namespace desejado.

### kind-reset.sh
Recria cluster Kind.

---

## 5. GDRIVE

### gdrive-restart.sh
Reinicia serviço do Google Drive.

### gdrive-remount.sh
Desmonta e monta novamente.

---

## 6. DEV

### new-microservice.sh
Cria estrutura inicial de um microserviço.

### start-dev-all.sh
Sobe API e Frontend em paralelo.

---

# Sugestão de Alias

```bash
alias update="~/scripts/system/update-system.sh"
alias clean="~/scripts/system/cleanup.sh"
alias dr="~/scripts/docker/docker-reset.sh"
alias kc="~/scripts/k8s/k8s-ctx.sh"
```

---

# Conclusão

Scripts essenciais para produtividade e manutenção de uma workstation profissional automatizada.