module "demo_module" {
  source = "./module"
  file_name1 = "./demo1.txt"
  file_name2 = "./demo2.txt"
}

output "module" {
  value = module.demo_module
}