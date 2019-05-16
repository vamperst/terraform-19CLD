# terraform-workspace

Understanding how workspaces work in terraform, and how to isolate `dev`, `test`, `stage` and `prod` environment with it.

## Create

```bash
# Creates a dev workspace
$ terraform workspace new dev

# Creates a prod workspace
$ terraform workspace new prod
```

## Switch

```bash
# Select the dev workspace
$ terraform workspace select dev

# Select the prod workspace
$ terraform workspace select prod
```

## List

```bash
$ terraform workspace list
```

## Show

```bash
$ terraform workspace show
```