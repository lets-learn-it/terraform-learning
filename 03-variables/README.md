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