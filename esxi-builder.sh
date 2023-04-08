#!/bin/bash

# Set variables for your environment
vCenterServer="myvcenterserver.example.com"
vCenterUser="administrator@vsphere.local"
vCenterPassword="mypassword"
esxiVersion="7.0"
esxiBuildNumber="17630552"
esxiImageProfileName="MyCustomImage"

# Connect to vCenter Server
Connect-VIServer -Server $vCenterServer -User $vCenterUser -Password $vCenterPassword

# Get the ESXi image profile to use as a base
$esxiBaseProfile = Get-EsxImageProfile -Name "ESXi-$esxiVersion-$esxiBuildNumber-standard"

# Create a new image profile based on the base profile
$esxiCustomProfile = New-EsxImageProfile -CloneProfile $esxiBaseProfile -Name $esxiImageProfileName

# Add VIBs to the custom image profile
Add-EsxSoftwarePackage -ImageProfile $esxiCustomProfile -SoftwarePackage "my-vib-package-1" -NoSignatureCheck
Add-EsxSoftwarePackage -ImageProfile $esxiCustomProfile -SoftwarePackage "my-vib-package-2" -NoSignatureCheck

# Export the custom image profile to an ISO file
Export-EsxImageProfile -ImageProfile $esxiCustomProfile -ExportToISO -FilePath "/path/to/custom-esxi-image.iso"

# Disconnect from vCenter Server
Disconnect-VIServer -Confirm:$false
