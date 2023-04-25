# terraform-project-template

Deploy to AWS cloud using [terraform][terraform] and [docker-compose][docker-compose]

### prerequisites
- [make][make]
- [docker-compose][docker-compose]

### configuration
- Update terraform variables at [vars/main.tfvars]
- Update remote backend for terraform state [backends/main.tfbackend]

### initialize terraform project
```bash
$ make init
```

### validate .tf files
```bash
$ make validate
```

### apply formatting to .tf files
```bash
$ make fmt
```

### deploy
```bash
$ make deploy
```

[terraform]: https://www.terraform.io/
[docker-compose]: https://docs.docker.com/compose/
[make]: https://www.gnu.org/software/make/
[vars/main.tfvars]: ./vars/main.tfvars
[backends/main.tfbackend]: /backends/main.tfbackend