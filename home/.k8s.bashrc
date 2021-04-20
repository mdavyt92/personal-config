# Custom Bashrc for K8s
# To install:
#   echo "source .k8s.bashrc" >> ~/.bashrc

# Base alias
alias k=kubectl

# Autocomplete for k & kubectl
source <(kubectl completion bash)
complete -F __start_kubectl k

# Extra aliases
alias kns='kubectl config set-context --current --namespace'
alias klns='kubectl get ns'
alias klpod='kubectl get pod'
alias klsvc='kubectl get svc'
alias klnod='kubectl get node'

# Shortcuts
an="--all-namespaces"
do="--dry-run=client -oyaml"
fg="--force --grace-period 0"
