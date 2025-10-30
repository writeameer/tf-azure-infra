# Model Availability by Region

## Summary

**AIServices (AI Foundry) availability by region:**

✅ **Supported regions:**
- eastus (157 models)
- eastus2 (160 models)  
- uaenorth (135 models) ✨ **NEW**
- westus
- westus2
- swedencentral
- ukwest

❌ **NOT Supported:**
- **eastasia** - Only TextTranslation, ComputerVision, and Speech services available

## Available Models by Region

| Region | Account | Model Count | Status |
|--------|---------|-------------|--------|
| eastus | xxx | 157 | ✅ Available |
| eastus2 | xxx | 160 | ✅ Available (most) |
| uaenorth | xxx| 135 | ✅ Available |
| southeastasia | xxx | 17 | ✅ Available (limited) |
| **eastasia** | **N/A** | **N/A** | ❌ Not supported |
| **singapore** | **N/A** | **N/A** | ❌ No dedicated region |

## Options for eastasia

1. **Deploy to nearest available region**: Use eastus or eastus2
2. **Use OpenAI API directly**: If you have a global OpenAI account
3. **Wait for Azure expansion**: Monitor Azure availability updates
4. **Use regional models**: Deploy language-specific models via OpenAI Playground or other services

## Regional Notes

- **Singapore**: Azure doesn't have a dedicated `singapore` region. Use `southeastasia` instead (which covers SE Asia including Singapore area).
- **East Asia**: `southeastasia` is the closest region to East Asia; `eastasia` doesn't support AIServices.
- **Most models**: eastus2 has 160 models available.
- **Limited models**: southeastasia has only 17 models (OpenAI family only).
