# Variables

you can create terraform variable using following command

```tf
variable "variableName" {
	type = TYPE
	key  = value
}
```

## Arguments

Terraform CLI defines the following optional arguments for variable declarations:

- **default** - A default value which then makes the variable optional.
- **type** - This argument specifies what value types are accepted for the variable.
- **description** - This specifies the input variable's documentation.
- **validation** - A block to define validation rules, usually in addition to type constraints.
- **sensitive** - Limits Terraform UI output when the variable is used in configuration.

## Types

### Basic

- string
- number
- bool

### Complex

- list(<TYPE>)
- set(<TYPE>)
- map(<TYPE>)
- object({<ATTR NAME> = <TYPE>, ... })
- tuple([<TYPE>, ...]) 

## Assigning Values to Root Module Variables 

### Variables on the Command Line

```sh
terraform apply -var='image_id_list=["ami-abc123","ami-def456"]' -var="instance_type=t2.micro"
```

### Variable Definitions (.tfvars) Files

create file with following content

```
image_id = "ami-abc123"
availability_zone_names = [
  "us-east-1a",
  "us-west-1c",
]
```

if you name file as follow, **terraform will automatically picks values**
- Files named exactly `terraform.tfvars` or `terraform.tfvars.json`.
- Any files with names ending in `.auto.tfvars` or `.auto.tfvars.json`.

but if you name something else like `something.tfvars`, then you have to tell terraform about file

```sh
terraform apply -var-file="something.tfvars"
```

### Environment Variables 

```sh
# value for image_id
export TF_VAR_image_id=ami-abc123
export TF_VAR_availability_zone_names='["us-west-1b","us-west-1d"]'
```

## Variable precedence

1. Environment variables
2. The `terraform.tfvars` file, if present.
3. The `terraform.tfvars.json` file, if present.
4. Any `*.auto.tfvars` or `*.auto.tfvars.json` files, processed in lexical order of their filenames.
5. Any `-var` and `-var-file` options on the command line, in the order they are provided.

