1. Entre na pasta 'S3' com o comando `cd S3`
2. Execute o comando `terraform init`
3. Execute o comando `terraform apply -auto-approve`
4. Você acabou de criar o bucket que lhe servirá de estado remoto
5. Saia da pasta com `cd ..`
6. Entre na pasta 'test' com o comando `cd test`
7. Utilize o comando `terraform init` para sincronizar com o estado remoto
8. Execute o comando `terraform apply -auto-approve`
9. Execute o comando `rm -rf .terraform` para remover todos os arquivos de estado do terraform
10. Execute novamente `terraform init`
11. Execute o comando `terraform apply -auto-approve`
    ![apply](images/apply0.png)
12. Execute o comando `terraform destroy -auto-approve`
