# Variable types

open terminal here and run 

```sh
terraform console
```

you will get console. you can access variables in that console.

## Access varibles

### string variable

```tf
var.mystring
```

### map variable

```tf
var.mymap["name"]
var.mymap.name
```

### list variables

```tf
# both are same
var.mylist[0]
element(var.mylist, 0)

# get part of list
slice(var.mylist, 1, 2)
```

## Terraform Variable Types

### Simple Variable Types

- string
- number
- bool

### Complex Variable Types

- list(type)
- set(type)
- map(type)
- object
- tuple([type,...])