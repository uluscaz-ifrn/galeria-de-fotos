#!/bin/bash

# Definir o comando docker em uma variável
DOCKER_CMD="docker run --rm -it -u $(id -u ${USER}):$(id -g ${USER}) -v ${PWD}:${PWD} -w $PWD --network=host node:22-alpine3.19"

# Função para exibir o help
function show_help {
  echo "Uso: $0 [comando]"
  echo
  echo "Comandos disponíveis:"
  echo "  npm [parametros]    Executa comando npm no container"
  echo "  dev                 Inicia a aplicação em modo de desenvolvimento"
  echo "  install             Instala as dependências"
  echo "  build               Executa o build (compila)"
  echo "  lint                Executa a verificação de estilo de código"
  echo "  format              Executa a formatação de código"
  echo "  create              Cria um novo projeto"
  echo
}

# Função para verificar se o arquivo package.json existe no diretório atual
function check_package_json {
  if [ ! -f "package.json" ]; then
    echo "Erro: Arquivo package.json não encontrado. Certifique-se de estar no diretório correto."
    exit 1
  fi
}

# Verifica se algum argumento foi fornecido
if [ "$#" -gt 0 ]; then
  case "$1" in
    dev)
      # Verifica se package.json existe
      check_package_json
      # Inicia a aplicação em modo de desenvolvimento
      $DOCKER_CMD npm run dev
      ;;

    npm)
      # Verifica se package.json existe
      check_package_json
      # Inicia a aplicação em modo de desenvolvimento
      shift
      $DOCKER_CMD npm "$@"
      ;;
    install)
      # Verifica se package.json existe
      check_package_json
      # Instala as dependências
      $DOCKER_CMD npm install
      ;;
    build)
      # Verifica se package.json existe
      check_package_json
      # Executa o build ("compila")
      $DOCKER_CMD npm run build
      ;;
    lint)
      # Verifica se package.json existe
      check_package_json
      # Executa o lint
      $DOCKER_CMD npm run lint
      ;;
    format)
      # Verifica se package.json existe
      check_package_json
      # Executa o format
      $DOCKER_CMD npm run format
      ;;
    create)
      # O comando create não depende de package.json
      $DOCKER_CMD npm create vue@latest
      ;;
    *)
      # Caso comando não seja reconhecido, exibe uma mensagem de erro e o help
      echo "Erro: Comando '$1' não reconhecido."
      show_help
      ;;
  esac
else
  # Se nenhum parâmetro for fornecido, exibe o help
  show_help
fi
