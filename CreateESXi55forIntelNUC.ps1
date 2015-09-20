#Source: http://www.virten.net/2015/02/how-to-install-esxi-on-5th-gen-intel-nuc-nic-and-ahci-workaround/

Add-EsxSoftwareDepot https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml
Add-EsxSoftwareDepot http://vibsdepot.v-front.de
New-EsxImageProfile -CloneProfile "ESXi-5.5.0-20150204001-standard" -name "ESXi-5.5.0-20150204001-NUC" -Vendor "virten.net" -AcceptanceLevel "CommunitySupported"
Add-EsxSoftwarePackage -ImageProfile "ESXi-5.5.0-20150204001-NUC" -SoftwarePackage "net-e1000e"
Add-EsxSoftwarePackage -ImageProfile "ESXi-5.5.0-20150204001-NUC" -SoftwarePackage "sata-xahci"
Export-ESXImageProfile -ImageProfile "ESXi-5.5.0-20150204001-NUC" -ExportToISO -filepath ESXi-5.5.0-20150204001-NUC.iso