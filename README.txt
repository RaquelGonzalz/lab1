LAB1 - Terraform + Azure

Este proyecto reproduce la práctica de los videos: variables, tfvars, locals,
provider de Azure, grupo de recursos, red virtual y outputs.

ANTES DE EJECUTAR:
1. Instala Terraform.
2. Instala Azure CLI.
3. Ejecuta: az login
4. Ejecuta: az account show --query id -o tsv
5. Copia el ID mostrado en terraform.tfvars, sustituyendo:
   REEMPLAZA-CON-TU-SUBSCRIPTION-ID
6. Si Microsoft.Network no está registrado:
   az provider show --namespace Microsoft.Network --subscription TU_SUBSCRIPTION_ID --query "{namespace:namespace,state:registrationState}" --output json
   az provider register --namespace Microsoft.Network --subscription TU_SUBSCRIPTION_ID --wait

EJECUCIÓN (desde la carpeta lab1):
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply

Cuando Terraform pregunte:
Do you want to perform these actions?
Escribe: yes

VERIFICACIÓN EN AZURE:
Portal de Azure > Resource groups > busca:
rg-integrador-dev-mexicocentral-001
Dentro debe aparecer la red virtual:
vnet-integrador-dev-mexicocentral-001

PARA BORRAR LOS RECURSOS AL TERMINAR:
terraform destroy
Escribe: yes

NOTA:
El inicio de sesión en tu cuenta, elegir tu suscripción y aceptar la creación
de recursos en Azure debes hacerlo tú porque requiere acceso a tu cuenta personal.
