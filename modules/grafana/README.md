# Grafana Module

Configuration in this directory creates Grafana resources

## Usage

```hcl
module "grafana" {
  source = "terraform-aws-modules/managed-service-grafana/aws//modules/grafana"

  # TODO
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | >= 1.24 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | >= 1.24 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_data_source.this](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Determines whether a resources will be created | `bool` | `true` | no |
| <a name="input_data_sources"></a> [data\_sources](#input\_data\_sources) | Map of data source definitions to create | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_sources"></a> [data\_sources](#output\_data\_sources) | Map of the data source created and their attributes |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
