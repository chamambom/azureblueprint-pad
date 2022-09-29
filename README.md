## Deploying the Azure Cloud Adoption Framework Blueprint 
### Pre-requisites 
    - Make sure you have powershell and Az modules on your installed on your laptop to enable you to connect to the customer subscription via the Connect-Az command
    - Run the # Connect-Az command first then follow the steps below

Steps 

1) Create the management group and ID
2) Take note of the following 
       - management group ID , 
       - Suscription and 
       - Tenant ID 

3) Run the script - blueprint.ps1
        - First time run - it will copy the CAF bluerint into your C drive
        - For subsequent runs - comment out these lines - see the commented out code in the blueprint.ps1 powershell file

4) If its successful , "you wont see any errors " (::)
5) Navigate to your azure portal
    a) publish your blue print 
    b) Assign your blueprint 

6) to be continued [will sanitise this as i play with azure blueprints]

TODO

- Find a way to extract the tenant and subscription ID 
- programmatically using powershell or AzureCLI
- Find a way to use a managed service or service principal account
-
