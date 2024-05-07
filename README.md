# tf-module-template
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.4 |
| <a name="requirement_awscc"></a> [awscc](#requirement\_awscc) | ~> 0.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_awscc"></a> [awscc](#provider\_awscc) | 0.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [awscc_datazone_environment.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/datazone_environment) | resource |
| [awscc_datazone_environment_profile.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/datazone_environment_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datazone_environment_profiles"></a> [datazone\_environment\_profiles](#input\_datazone\_environment\_profiles) | The environment profiles to deploy | <pre>map(object({<br>    aws_account_id                   = string<br>    name                             = string<br>    description                      = optional(string)<br>    region                           = string<br>    environment_blueprint_identifier = string<br>    project_name                     = string<br>    user_parameters = optional(list(object({<br>      name  = string<br>      value = string<br>    })))<br>  }))</pre> | <pre>{<br>  "DefaultDataLake": {<br>    "aws_account_id": "855831148133",<br>    "environment_blueprint_identifier": "DefaultDataLake",<br>    "name": "DefaultDataLake_profile",<br>    "project_name": "environment",<br>    "region": "ap-southeast-2"<br>  },<br>  "DefaultDataWarehouse": {<br>    "aws_account_id": "855831148133",<br>    "environment_blueprint_identifier": "DefaultDataWarehouse",<br>    "name": "DefaultDataWarehouse_profile",<br>    "project_name": "environment",<br>    "region": "ap-southeast-2",<br>    "user_parameters": []<br>  }<br>}</pre> | no |
| <a name="input_datazone_environments"></a> [datazone\_environments](#input\_datazone\_environments) | The environments to deploy | <pre>map(object({<br>    name                           = string<br>    environment_profile_identifier = string<br>    project_target                 = string<br>  }))</pre> | <pre>{<br>  "Curated": {<br>    "environment_profile_identifier": "DefaultDataLake",<br>    "name": "Curated Data Lake",<br>    "project_target": "data_team"<br>  },<br>  "Product": {<br>    "environment_profile_identifier": "DefaultDataLake",<br>    "name": "Product Data Lake",<br>    "project_target": "data_team"<br>  },<br>  "Raw": {<br>    "environment_profile_identifier": "DefaultDataLake",<br>    "name": "Raw Data Lake",<br>    "project_target": "data_team"<br>  }<br>}</pre> | no |
| <a name="input_domain_id"></a> [domain\_id](#input\_domain\_id) | The domain to deploy the environment | `string` | n/a | yes |
| <a name="input_environment_blueprint_id"></a> [environment\_blueprint\_id](#input\_environment\_blueprint\_id) | The environment blueprint to deploy | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project to deploy the environment | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy the domain | `string` | `"ap-southeast-2"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->