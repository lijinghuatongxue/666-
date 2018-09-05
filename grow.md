## git忽略上传特殊文件和文件夹

在根目录下创建 文件 

```
touch .gitignore  #里面写入声明，哪些文件不上传
```

示范

```
Python:
*.py[cod]
*.so
*.egg
*.egg-info
dist
build

My configurations:
db.ini
deploy_key_rsa
```
