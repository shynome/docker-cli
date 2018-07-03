
# 介绍

和 [`sshrc`](https://github.com/Russell91/sshrc) 搭配起来就可以保持一致的环境配置

```sh
# .bashrc
dcli () {

  if [ w = w$(command -v docker) ]; then
    echo 'dcli required docker.'
    return
  fi

  local work_dir=$([[ w = w$1 ]] && echo /work || echo $1)
  local image='shynome/docker-cli'$([[ w = w$2 ]] && echo '' || echo ':'$2)
  local docker_sock=/var/run/docker.sock

  local common="
    docker run --rm -ti \
      -v $HOME:/root \
      -v $work_dir:/work \
      -v $docker_sock:$docker_sock
  "

  if [ w != w$SSHHOME ]; then
  
    $common \
      -e SSHHOME=$SSHHOME -v $SSHHOME:$SSHHOME \
      $image \
      $SSHHOME/bashsshrc
      
  else

    $common \
      $image
  
  fi
  
}
```