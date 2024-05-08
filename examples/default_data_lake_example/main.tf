
data "tfe_outputs" "domain" {
  organization = var.tfc_organization
  workspace    = var.datazone_workspace_name
}

module "datazone_environment" {
  source = "app.terraform.io/tfc-demo-au/datazone-environments/awscc"
  version = "~>  0.0.4"

  region                        = var.region
  domain_id                     = coalesce(var.domain_id, data.tfe_outputs.domain.values.datazone_domain_id)
  project_map                   = coalesce(var.project_map, data.tfe_outputs.domain.values.projects)
  environment_blueprint_id      = coalesce(var.environment_blueprint_id, data.tfe_outputs.domain.values.datazone_environment_blueprints["DefaultDataLake"].environment_blueprint_id)
  datazone_environment_profiles = var.datazone_environment_profiles
  datazone_environments         = var.datazone_environments
}