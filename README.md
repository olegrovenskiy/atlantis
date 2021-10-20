# 7.4. Средства командной работы над инфраструктурой.

##  Задача 1. Настроить terraform cloud

Зарегестировался, привязал репозиторий, прописал переменные

Plan выполнился

![plan](https://github.com/olegrovenskiy/atlantis/blob/main/cloud-plan.png)

https://c2n.me/4dI5nHk

Applay не прошёл, так как есть проблемы с Аккаунтом Амазон, его заблоктровали, веду общение с суппорт

https://c2n.me/4dI5rzH

![plan](https://github.com/olegrovenskiy/atlantis/blob/main/cloud-applay.png)

##  Задача 2.Написать серверный конфиг для атлантиса.

Конфигурация на стороне сервера

https://github.com/olegrovenskiy/atlantis/blob/main/server.yaml

Конфигурация на стороне репозитория

https://github.com/olegrovenskiy/atlantis/blob/main/atlantis.yaml


##  Задача 3. Знакомство с каталогом модулей.


ссылка на вкладку с ес2 модулями

https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

Ссылка на файл конфигурации

https://github.com/olegrovenskiy/atlantis/blob/main/main.tf

Добавлен модуль в конфигурацию, после чего результат успешного выполнения команд

    terraform get
    terraform init
    terraform plan
    
    c:\Oleg\HW-Terraform>terraform get
    Downloading terraform-aws-modules/ec2-instance/aws 3.2.0 for ec2_instance...
    - ec2_instance in .terraform\modules\ec2_instance

    c:\Oleg\HW-Terraform>terraform init
    Initializing modules...

    Initializing the backend...

    Initializing provider plugins...
    - Reusing previous version of hashicorp/aws from the dependency lock file
    - Using previously-installed hashicorp/aws v3.62.0

    Terraform has been successfully initialized!

    You may now begin working with Terraform. Try running "terraform plan" to see
    any changes that are required for your infrastructure. All Terraform commands
    should now work.

    If you ever set or change modules or backend configuration for Terraform,
    rerun this command to reinitialize your working directory. If you forget, other
    commands will detect it and remind you to do so if necessary.

    c:\Oleg\HW-Terraform>terraform plan
    var.AWS_ACCESS_KEY_ID
      Enter a value: ********************

    var.AWS_SECRET_ACCESS_KEY
      Enter a value: **********************


    Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
    following symbols:
      + create

    Terraform will perform the following actions:

      # module.ec2_instance.aws_instance.this[0] will be created
      + resource "aws_instance" "this" {
          + ami                                  = "ami-0d83353046047cd0b"
          + arn                                  = (known after apply)
          + associate_public_ip_address          = (known after apply)
          + availability_zone                    = (known after apply)
          + cpu_core_count                       = (known after apply)
          + cpu_threads_per_core                 = (known after apply)
          + disable_api_termination              = (known after apply)
          + ebs_optimized                        = (known after apply)
          + get_password_data                    = false
          + host_id                              = (known after apply)
          + id                                   = (known after apply)
          + instance_initiated_shutdown_behavior = (known after apply)
          + instance_state                       = (known after apply)
          + instance_type                        = "t2.micro"
          + ipv6_address_count                   = (known after apply)
          + ipv6_addresses                       = (known after apply)
          + key_name                             = (known after apply)
          + monitoring                           = false
          + outpost_arn                          = (known after apply)
          + password_data                        = (known after apply)
          + placement_group                      = (known after apply)
          + primary_network_interface_id         = (known after apply)
          + private_dns                          = (known after apply)
          + private_ip                           = (known after apply)
          + public_dns                           = (known after apply)
          + public_ip                            = (known after apply)
          + secondary_private_ips                = (known after apply)
          + security_groups                      = (known after apply)
          + source_dest_check                    = true
          + subnet_id                            = (known after apply)
          + tags                                 = {
              + "Name" = "Netology-HW-test"
            }
          + tags_all                             = {
              + "Name" = "Netology-HW-test"
            }
          + tenancy                              = (known after apply)
          + user_data                            = (known after apply)
          + user_data_base64                     = (known after apply)
          + volume_tags                          = {
              + "Name" = "Netology-HW-test"
            }
          + vpc_security_group_ids               = (known after apply)

          + capacity_reservation_specification {
              + capacity_reservation_preference = (known after apply)

              + capacity_reservation_target {
                  + capacity_reservation_id = (known after apply)
                }
            }

          + credit_specification {}

          + ebs_block_device {
              + delete_on_termination = (known after apply)
              + device_name           = (known after apply)
              + encrypted             = (known after apply)
              + iops                  = (known after apply)
              + kms_key_id            = (known after apply)
              + snapshot_id           = (known after apply)
              + tags                  = (known after apply)
              + throughput            = (known after apply)
              + volume_id             = (known after apply)
              + volume_size           = (known after apply)
              + volume_type           = (known after apply)
            }

          + enclave_options {
              + enabled = (known after apply)
            }

          + ephemeral_block_device {
              + device_name  = (known after apply)
              + no_device    = (known after apply)
              + virtual_name = (known after apply)
            }

          + metadata_options {
              + http_endpoint               = "enabled"
              + http_put_response_hop_limit = 1
              + http_tokens                 = "optional"
            }

          + network_interface {
              + delete_on_termination = (known after apply)
              + device_index          = (known after apply)
              + network_interface_id  = (known after apply)
            }

          + root_block_device {
              + delete_on_termination = (known after apply)
              + device_name           = (known after apply)
              + encrypted             = (known after apply)
              + iops                  = (known after apply)
              + kms_key_id            = (known after apply)
              + tags                  = (known after apply)
              + throughput            = (known after apply)
              + volume_id             = (known after apply)
              + volume_size           = (known after apply)
              + volume_type           = (known after apply)
            }

          + timeouts {}
        }

    Plan: 1 to add, 0 to change, 0 to destroy.

    ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

    Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
    you run "terraform apply" now.

    c:\Oleg\HW-Terraform>

На мой взгляд данный модуль не облегчает работу, проще напрямую использовать ресурс aws_instance

