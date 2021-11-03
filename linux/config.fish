
alias python='python3.10'

alias py2='alias python=\'python2.7\''

alias py3='alias python=\'python3.10\''

set JAVA8 '/opt/jdk/jdk-8'
set JAVA11 '/opt/jdk/jdk-11'

set PATH /home/ajay/nextjs/ecommerce-nextjs-frontend/node_modules/eslint/bin $PATH

set PATH $JAVA11/bin $PATH

set PATH /opt/cassandra/bin $PATH

alias jdk8='set PATH $JAVA8/bin $PATH'
alias jdk11='set PATH (string match -v $JAVA8/bin $PATH)'

function javar
     javac $argv
     #echo $status
     
     if test $status -eq 0
     	printf '\n'
     	java (string split . -- $argv)[1]
     else
     end
end
