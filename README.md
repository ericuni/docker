```bash
build docker image from Dockerfile
```

[探讨Docker容器中修改系统变量的方法](
https://tonybai.com/2014/10/14/discussion-on-the-approach-to-modify-system-variables-in-docker/)

使用–privileged选项, 容器获得了额外的特权,并且可以对系统变量的值进行修改了.不过这样的修改是不能保存在容器里的, 我们stop
容器,再重启该容器就能看出来.
这样一来,我们能做的只有把产品启动与系统变量值修改放在一个脚本中了,并将该脚本作为docker 容器的cmd命令来执行.
