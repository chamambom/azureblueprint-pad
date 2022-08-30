Deploying azure the azure Cloud Adoption Framework Blueprint 

Steps 

1) Create the management group and ID
2) Take note of the following 
        management group ID , 
        Suscription and 
        Tenant ID 

3) Run the script - blueprint.ps1
        NB - For first time run - it will copy the CAF bluerint into your C drive
           - For subsequent runs - see the commented out code in the blueprint.ps1 powershell file

4) If its successful , "you wont see any errors " (::)
5) Navigate to your azure portal - 
    a) publish your blue print 
    b) Assign your blueprint 

6) to be continued [will sanitise this as i play with azure blueprints]

TO DO

Find a way to extract the tenant and subscription ID programmatically using powershell
Find a way to use a managed service or service principal account