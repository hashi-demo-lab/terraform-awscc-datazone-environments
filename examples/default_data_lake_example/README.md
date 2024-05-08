## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_awscc"></a> [awscc](#requirement\_awscc) | ~> 0.7 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.54.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.54.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_datazone_environment"></a> [datazone\_environment](#module\_datazone\_environment) | app.terraform.io/tfc-demo-au/datazone-environments/awscc | ~>  0.1.5 |

## Resources

| Name | Type |
|------|------|
| [tfe_outputs.domain](https://registry.terraform.io/providers/hashicorp/tfe/0.54.0/docs/data-sources/outputs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_blueprint_map"></a> [blueprint\_map](#input\_blueprint\_map) | The environment blueprint to deploy | `any` | `null` | no |
| <a name="input_datazone_environment_profiles"></a> [datazone\_environment\_profiles](#input\_datazone\_environment\_profiles) | The environment profiles to deploy | <pre>map(object({<br>    aws_account_id                   = string<br>    name                             = string<br>    description                      = optional(string)<br>    region                           = string<br>    environment_blueprint_identifier = string<br>    project_identifier               = string<br>    user_parameters = optional(list(object({<br>      name  = string<br>      value = string<br>    })))<br>  }))</pre> | <pre>{<br>  "DefaultDataLake": {<br>    "aws_account_id": "855831148133",<br>    "environment_blueprint_identifier": "DefaultDataLake",<br>    "name": "DefaultDataLake_profile",<br>    "project_identifier": "shared_env",<br>    "region": "ap-southeast-2"<br>  },<br>  "DefaultDataWarehouse": {<br>    "aws_account_id": "855831148133",<br>    "environment_blueprint_identifier": "DefaultDataWarehouse",<br>    "name": "DefaultDataWarehouse_profile",<br>    "project_identifier": "shared_env",<br>    "region": "ap-southeast-2",<br>    "user_parameters": []<br>  }<br>}</pre> | no |
| <a name="input_datazone_environments"></a> [datazone\_environments](#input\_datazone\_environments) | The environments to deploy | <pre>map(object({<br>    name                           = string<br>    environment_profile_identifier = string<br>    project_identifier             = string<br>  }))</pre> | <pre>{<br>  "Curated": {<br>    "environment_profile_identifier": "DefaultDataLake",<br>    "name": "Curated Data Lake",<br>    "project_identifier": "data_team"<br>  },<br>  "Product": {<br>    "environment_profile_identifier": "DefaultDataLake",<br>    "name": "Product Data Lake",<br>    "project_identifier": "data_team"<br>  },<br>  "Raw": {<br>    "environment_profile_identifier": "DefaultDataLake",<br>    "name": "Raw Data Lake",<br>    "project_identifier": "data_team"<br>  }<br>}</pre> | no |
| <a name="input_datazone_workspace_name"></a> [datazone\_workspace\_name](#input\_datazone\_workspace\_name) | The workspace to read outputs | `string` | `null` | no |
| <a name="input_domain_id"></a> [domain\_id](#input\_domain\_id) | The domain to deploy the environment | `string` | `null` | no |
| <a name="input_project_map"></a> [project\_map](#input\_project\_map) | The project to deploy the environment | `any` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy the domain | `string` | `"ap-southeast-2"` | no |
| <a name="input_tfc_organization"></a> [tfc\_organization](#input\_tfc\_organization) | The HCP Terraform organization name | `string` | `"tfc-demo-au"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_awscc_datazone_environment"></a> [awscc\_datazone\_environment](#output\_awscc\_datazone\_environment) | n/a |
| <a name="output_environment_profile_identifier"></a> [environment\_profile\_identifier](#output\_environment\_profile\_identifier) | n/a |
