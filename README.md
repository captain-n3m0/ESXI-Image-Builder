# ESXI-Image-Builder
Bash script to compile a custom ESXi image using the VMware PowerCLI and Image Builder cmdlets.

This script assumes that you have the VMware PowerCLI and Image Builder cmdlets installed on your system. You can install these cmdlets by following the instructions provided by VMware. You should also replace the variables in the script with the appropriate values for your environment, such as the name of your vCenter Server, your vCenter login credentials, the version and build number of ESXi you want to use as a base, and the name of the custom image profile you want to create. The script adds custom VIB packages to the image profile, exports the image profile to an ISO file, and then disconnects from the vCenter Server.
## Requirements

* A Linux or macOS system with the Bash shell installed. The script has been tested on Ubuntu 18.04 LTS and macOS Mojave.

* The VMware PowerCLI and Image Builder cmdlets installed. You can download and install the VMware PowerCLI from the VMware website. The Image Builder cmdlets are included with the PowerCLI.

* Access to a VMware vCenter Server that has ESXi host(s) registered to it. You will need to provide the hostname or IP address of the vCenter Server in the script.

* Login credentials for the vCenter Server with sufficient privileges to manage ESXi hosts and image profiles. You will need to provide the login username and password in the script.

* Custom VIB packages that you want to include in the image profile. You will need to provide the names of the VIB packages in the script.

* Sufficient disk space to store the custom ISO image file. The size of the ISO file will depend on the number and size of the VIB packages included in the image profile.
## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.


## License

[Unlicense](https://unlicense.org/)

