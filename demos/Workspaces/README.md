
1. Execute o comando `terraform init` para inicializar o terraform
2. Crie um novo workspace com o comando `terraform workspace new dev`
3. Crie outro workspace com o comando `terraform workspace new prod`
4. Para voltar ao ambiente dev execute `terraform workspace select dev`
5. Para listar todos os workspaces execute `terraform workspace list`
6. Rode o apply com cada um dos ambiente e note que serão gerados arquivos diferentes para cada workspaces dentro da pasta 'modules'.