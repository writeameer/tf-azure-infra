# Model Query Tool

Query available models from Azure AI Foundry (AIServices) accounts using Terraform.

## Usage

Query a specific account by passing the resource ID:

```bash
export ARM_SUBSCRIPTION_ID=6422b091-e889-4e4e-91a6-64736d6d312c
terraform plan -var='foundry_resource_id=/subscriptions/...'
terraform apply -auto-approve -var='foundry_resource_id=/subscriptions/...'
```

Or use pre-configured `.tfvars` files:

```bash
# Query eastus account (157 models)
terraform apply -auto-approve -var-file=terraform.eastus.tfvars

# Query eastus2 account (160 models)
terraform apply -auto-approve -var-file=terraform.eastus2.tfvars
```

## Available Accounts

| Region | Account | Status |
|--------|---------|--------|
| eastus | ainprod5212288488 | ✅ Available |
| eastus2 | hatta-m4qxz9tr-eastus2 | ✅ Available |
| eastasia | None | ❌ No AIServices |

## Note on eastasia

There are no AIServices (AI Foundry) accounts in the eastasia region currently. 

To query models for eastasia, you would need to either:
1. Create a new AIServices account in eastasia
2. Query from a different region

## Outputs

- `model_count`: Total number of available models
- `model_names`: List of models in format `format/name (vX.Y)`
- `all_models`: Full model objects with complete details
