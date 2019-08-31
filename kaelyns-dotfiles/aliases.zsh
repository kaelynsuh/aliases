as() { grep $1 $HOME/Documents/code/client-configs/ }

docker-kill-all(){
    docker stop $(docker ps -a -q);
    docker rm $(docker ps -a -q);
    docker image prune -a
}

# core
alias dcb='docker-compose build'
alias dcu='docker-compose up'
alias dcub='docker-compose up --build'

alias dcsh='docker-compose run --service-ports core sh'
alias desh='docker exec -it $(docker ps -q --filter="name=ao-core_core") sh'