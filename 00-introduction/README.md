# About terraform language

- used for declaring resources AKA Infra

**Terraform configuration**: It is complete document in the terraform language that tells terraform how to manage a given collection of infrastructure. It consists of multiple files and directories.

## Basic block of terraform language

```tf
<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK NAME>" {
	# Block body
	<IDENTIFIER> = <EXPRESSION>  # This is argument
}
```

`<BLOCK TYPE>` can be `resource`,  `data`, `module`
`<BLOCK LABEL>` is dependent on provider
`<BLOCK NAME>` is user defined name to block

**Example**

```tf
resource "aws_vpc" "main" {
	cidr_block = var.base_cidr_block
}
```

# Directories and Modules

Module is collection of `.tf` and/or `.tf.json` files kept together in a directory. 

**module consists only top level configuration files in directory, nested directories are treated as complete separate modules**

Terraform module can use `module calls` to explicitely include other modules into the configuration.