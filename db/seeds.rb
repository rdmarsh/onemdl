# OneMDL is a ruby on rails based application designed to collate information
# about IT assets. It is designed to be most useful to System Administrators
# and Service Desk personal.
# 
# Copyright (C) 2013-2015 David Marsh
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# This file contains the records to seed the database with default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#

# Address.create(name: "None")
# Address.create(name: "Unknown")

SupportLevel.create(name: "Unknown", hours: "n/a", days: "n/a", exclusions: "n/a", description: "The support agreement is currently unknown. Support may occur time and material fees, which needs written authorisation from a customers representative before being undertaken.")
SupportLevel.create(name: "None", hours: "n/a", days: "n/a", exclusions: "n/a", description: "No support is provided. Any support will occur time and material fees, which needs written authorisation from a customers representative before being undertaken.")
SupportLevel.create(name: "Mixed", hours: "n/a", days: "n/a", exclusions: "n/a", description: "There is more than one support level applicable.")
SupportLevel.create(name: "Business Hours", hours: "8am - 6pm", days: "Mon - Fri", exclusions: "Public holidays", description: "Only supported between 8am and 6pm, Monday to Friday. Public holidays excluded. Any support outside of this time will occur time and material fees, which needs written authorisation from a customers representative before being undertaken.")
SupportLevel.create(name: "All Hours", hours: "24 hours", days: "7 days", exclusions: "None", description: "Supported 24hours, 7days. Public holidays included.")

ServiceLevel.create(name: "Unknown", description: "The service level is currently unknown.")
ServiceLevel.create(name: "None",    description: "There is no service level applicable.")
ServiceLevel.create(name: "Mixed",    description: "There is more than one service level applicable.")
ServiceLevel.create(name: "Managed", description: "Managed services is the practice of outsourcing day-to-day management work as a calculated way for improved operations inclusive of production support and lifecycle build/maintenance activities. The business owner of the company who has direct oversight of the organization or system being managed is referred to as the client, or customer. The person or organization that manages and provides the service is regarded as the service provider.")
ServiceLevel.create(name: "Colocation", description: "Colocation is the act of placing multiple (sometimes related) entities within a single location. If these are managed devices, they fall under the 'Managed' Service Level.")

Environment.create(name: "Unknown", description: "The environment is currently unknown.")
Environment.create(name: "None",    description: "There is no environment applicable.")
Environment.create(name: "Mixed",    description: "There is more than one environment applicable.")
Environment.create(name: "Production", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Environment.create(name: "UAT", description: "Lorem")
Environment.create(name: "Development", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Environment.create(name: "Decommissioned", description: "Lorem")
Environment.create(name: "Pre-production", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Environment.create(name: "Disaster recovery", description: "Lorem")

DeviceType.create(name: "Unknown", description: "The device type is currently unknown.")
DeviceType.create(name: "None",    description: "There is no device type applicable.")
DeviceType.create(name: "Mixed",   description: "There is more than one device type applicable.")
DeviceType.create(name: "Blade chassis", description: "A blade chassis (or enclosure) can hold multiple blade servers. The blade chassis provides services such as power, cooling, networking, various interconnects and management for blade servers.")
DeviceType.create(name: "Router", description: "A router is a device that forwards data packets between computer networks, creating an overlay internetwork. A router is connected to two or more data lines from different networks. When a data packet comes in one of the lines, the router reads the address information in the packet to determine its ultimate destination.")
DeviceType.create(name: "Hub", description: "A network hub is a device for connecting multiple network devices together and making them act as a single network segment. It has multiple input/output (I/O) ports, in which a signal introduced at the input of any port appears at the output of every port except the original incoming. A hub works at the physical layer (layer 1) of the OSI model.")
DeviceType.create(name: "Switch", description: "A network switch is a computer networking device that links network segments or network devices. The term commonly refers to a multi-port network bridge that processes and routes data at the data link layer (layer 2) of the OSI model. Switches that additionally process data at the network layer (layer 3) and above are often called layer-3 switches or multilayer switches.")
DeviceType.create(name: "Wireless access point", description: "In computer networking, a wireless access point (WAP) is a device that allows wireless devices to connect to a wired network using Wi-Fi, or related standards. The AP usually connects to a router (via a wired network) as a standalone device, but it can also be an integral component of the router itself.")
DeviceType.create(name: "NAS", description: "Network-attached storage (NAS) is file-level computer data storage connected to a computer network providing data access to a heterogeneous group of clients. NAS not only operates as a file server, but is specialized for this task either by its hardware, software, or configuration of those elements. NAS is often manufactured as a computer appliance – a specialized computer built from the ground up for storing and serving files – rather than simply a general purpose computer being used for the role.")
DeviceType.create(name: "Server: Blade", description: "A blade server is a stripped down server computer with a modular design optimized to minimize the use of physical space and energy. Whereas a standard rack-mount server can function with (at least) a power cord and network cable, blade servers have many components removed to save space, minimize power consumption and other considerations, while still having all the functional components to be considered a computer.")
DeviceType.create(name: "Server: Rack-mounted", description: "Rack-mounted servers are designed to store many devices mounted in a server rack. Unlike ordinary computers, servers usually can be configured, powered up and down or rebooted remotely, using out-of-band management.")
DeviceType.create(name: "Server: Virtual", description: "A virtual server (VM) is a software implementation of a physical server. virtualisation allows multiple instances of virtual servers to reside on one (or more) physical server. This leads to more efficient use of computing resources, both in terms of energy consumption and cost effectiveness.")
DeviceType.create(name: "Server: Tower", description: "A Tower server")
DeviceType.create(name: "Printer: Laser", description: "A laser printer.")
DeviceType.create(name: "Printer: Inkjet", description: "An inkjet printer.")
DeviceType.create(name: "Workstation", description: "A workstation computer.")
DeviceType.create(name: "Desktop", description: "A desktop computer.")
DeviceType.create(name: "Laptop", description: "A laptop computer.")

Relationship.create(name: "Unknown", description: "The relationship is currently unknown.")
Relationship.create(name: "None",    description: "There is no relationship applicable.")
Relationship.create(name: "Customer", description: "There is no relationship applicable.")
Relationship.create(name: "Partner", description: "There is no relationship applicable.")
Relationship.create(name: "Supplier", description: "There is no relationship applicable.")
Relationship.create(name: "Manufacturer", description: "There is no relationship applicable.")
Relationship.create(name: "Vendor", description: "There is no relationship applicable.")
Relationship.create(name: "Service provider", description: "There is no relationship applicable.")
Relationship.create(name: "Licensor", description: "A party that grants a license to another.")

NetworkUse.create(name: "Unknown", description: "The network use is currently unknown.")
NetworkUse.create(name: "None", description: "There is no network use applicable.")
NetworkUse.create(name: "Mixed", description: "There is more than one network use applicable.")
NetworkUse.create(name: "Production", description: "The network is used for production traffic.")
NetworkUse.create(name: "Monitoring", description: "The network is used for monitoring traffic.")
NetworkUse.create(name: "Management", description: "The network is used for management traffic.")
NetworkUse.create(name: "Out of band", description: "The network is used for Out of band traffic.")
NetworkUse.create(name: "Backup", description: "The network is used for backup traffic.")

Manufacturer.create(name: "Unknown", website: "n/a", description: "The environment is currently unknown.")
Manufacturer.create(name: "None",    website: "n/a", description: "There is no manufacturer applicable.")
Manufacturer.create(name: "Dell", website: "http://dell.com/", description: "Dell is a company that makes laptop and desktop computers and computer accessories. It is named after Michael Dell, the CEO and creator of the company. Dell makes computers for businesses and home users, and they also make computer monitors and Printers.")
Manufacturer.create(name: "HP", website: "http://hp.com/", description: "Hewlett Packard (HP) is a computer technology company founded in 1939 by Bill Hewlett and Dave Packard. They are best known for making computers and computer hardware such as inkjet printers, laser printers, all-in-one printers, scanners and digital cameras.")
Manufacturer.create(name: "Apple", website: "http://apple.com/", description: "Apple is a multinational company that makes computer hardware, computer software, and portable devices like mobile telephones and music players. Apple calls its computers Macintoshes or Macs, and it calls its laptops MacBooks. Their popular line of mobile music players is called iPod, their smartphone line is called iPhone and their Tablet line is called iPad.")
Manufacturer.create(name: "Microsoft", website: "http://microsoft.com/", description: "Microsoft Corporation is a multinational which makes computer software and video games all over the world. Bill Gates and Paul Allen started the company in 1975. Microsoft makes Windows, Microsoft Office (including Microsoft Word), Internet Explorer, MSN, and the Xbox 360. Microsoft is the world's biggest software maker.")
Manufacturer.create(name: "Lenovo", website: "n/a", description: "Lenovo is a Chinese computer company that makes computers, laptops, tablets, and other devices.")
Manufacturer.create(name: "EMC", description: "EMC Corporation (stylized as EMC²) is an American multinational corporation that offers data storage, information security, virtualization, and cloud computing products and services which enable businesses to store, manage, protect, and analyze massive volumes of data. EMC's target markets include large FORTUNE 500 companies as well as small business across various vertical markets. It is headquartered in Hopkinton, Massachusetts.")
Manufacturer.create(name: "IBM", website: "http://ibm.com/", description: "International Business Machines Corporation (IBM) is a company from the United States that makes and sells software, computer hardware, infrastructure services, and consulting services. IBM is one of the biggest Information Technology companies in the world. IBM has had the most patents of any technology company for many years, and has made many important inventions and discoveries that have improved computers.")
Manufacturer.create(name: "VMWare", website: "http://vmware.com/", description: "VMWare")

DeviceModel.create(name: "Unknown", device_type_id: 1, manufacturer_id: 1, description: "The device model is currently unknown.")
DeviceModel.create(name: "None",    device_type_id: 2, manufacturer_id: 2, description: "There is no device model applicable.")
DeviceModel.create(name: "BL60p",   device_type_id: 7, manufacturer_id: 3, description: "Integrity BL blade.")
DeviceModel.create(name: "BL860c",   device_type_id: 7, manufacturer_id: 3, description: "Integrity BL blade.")
DeviceModel.create(name: "BL870c",   device_type_id: 7, manufacturer_id: 3, description: "Integrity BL blade.")
DeviceModel.create(name: "PowerEdge R200",   device_type_id: 11, manufacturer_id: 3, description: "Dell PowerEdge R200.")
DeviceModel.create(name: "PowerEdge R300",   device_type_id: 11, manufacturer_id: 3, description: "Dell PowerEdge R300.")
DeviceModel.create(name: "PowerEdge 2950 ",   device_type_id: 11, manufacturer_id: 3, description: "Dell PowerEdge 2950.")
DeviceModel.create(name: "DL360 G5",   device_type_id: 11, manufacturer_id: 4, description: "HP DL360 G5.")
DeviceModel.create(name: "Proliant DL380 G5",   device_type_id: 11, manufacturer_id: 4, description: "HP Proliant DL380 G5.")
DeviceModel.create(name: "Proliant DL385 G1",   device_type_id: 11, manufacturer_id: 4, description: "HP Proliant DL385 G1.")
DeviceModel.create(name: "Microserver N40L",   device_type_id: 11, manufacturer_id: 4, description: "Microserver N40L.")

Organisation.create(name: "Unknown", full_name: "Unknown", relationship_id: 1, active: true)
Organisation.create(name: "None",    full_name: "None",    relationship_id: 2, active: true)

LicenseType.create(name: "Unknown", organisation_id: 1, description: "The license type is currently unknown.")
LicenseType.create(name: "None",    organisation_id: 2, description: "There is no license type applicable")
LicenseType.create(name: "Public Domain",  organisation_id: 2, description: "There is no license type applicable")
LicenseType.create(name: "GPL",  organisation_id: 2, description: "There is no license type applicable")
LicenseType.create(name: "MIT",  organisation_id: 2, description: "There is no license type applicable")
LicenseType.create(name: "Apache",  organisation_id: 2, description: "There is no license type applicable")

License.create(organisation_id: 1, license_type_id: 1, key: "Unknown", quantity: "0")
License.create(organisation_id: 2, license_type_id: 2, key: "None", quantity: "0")

# Operating system families
OperatingSystemFamily.create(name: "Unknown", description: "Unknown")
OperatingSystemFamily.create(name: "None", description: "None")
OperatingSystemFamily.create(name: "Linux", description: "Linux")
OperatingSystemFamily.create(name: "Unix", description: "Unix")
OperatingSystemFamily.create(name: "Windows", description: "Windows")
OperatingSystemFamily.create(name: "MacOSX", description: "MacOSX")

OperatingSystem.create(name: "Unknown", release: "0", operating_system_family_id: 1, organisation_id: 1)
OperatingSystem.create(name: "None", release: "0", operating_system_family_id: 2, organisation_id: 2)

OperatingSystem.create(name: "Debian", release: "1.1", operating_system_family_id: 3, description: "Buzz", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "1.2", operating_system_family_id: 3, description: "Rex", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "1.3", operating_system_family_id: 3, description: "Bo", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "2.0", operating_system_family_id: 3, description: "Hamm", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "2.1", operating_system_family_id: 3, description: "Slink", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "2.2", operating_system_family_id: 3, description: "Potato", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "3.0", operating_system_family_id: 3, description: "Woody", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "3.1", operating_system_family_id: 3, description: "Sarge", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "4.0", operating_system_family_id: 3, description: "Etch", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "5.0", operating_system_family_id: 3, description: "Lenny", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "6.0", operating_system_family_id: 3, description: "Squeeze", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "7.0", operating_system_family_id: 3, description: "Wheezy", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "7.1", operating_system_family_id: 3, description: "Wheezy: (May 2013): named for the rubber toy penguin with a red bow tie.", organisation_id: 1)
OperatingSystem.create(name: "Debian", release: "8.0", operating_system_family_id: 3, description: "Jessie: (no date defined for release yet): named for the cow girl doll who first appeared in Toy Story 2.", organisation_id: 1)

OperatingSystem.create(name: "Red Hat Enterprise Linux", release: "6.0", operating_system_family_id: 3, description: "Santiago", organisation_id: 1)
OperatingSystem.create(name: "Red Hat Enterprise Linux", release: "6.1", operating_system_family_id: 3, description: "Santiago", organisation_id: 1)
OperatingSystem.create(name: "Red Hat Enterprise Linux", release: "6.2", operating_system_family_id: 3, description: "Santiago", organisation_id: 1)
OperatingSystem.create(name: "Red Hat Enterprise Linux", release: "6.3", operating_system_family_id: 3, description: "Santiago", organisation_id: 1)
OperatingSystem.create(name: "Red Hat Enterprise Linux", release: "6.4", operating_system_family_id: 3, description: "Santiago", organisation_id: 1)
OperatingSystem.create(name: "Red Hat Enterprise Linux", release: "7.0", operating_system_family_id: 3, description: "Based on Fedora 19", organisation_id: 1)

OperatingSystem.create(name: "OEL", release: "6.4", operating_system_family_id: 3, organisation_id: 1)

OperatingSystem.create(name: "CentOS", release: "6.0", operating_system_family_id: 3, description: "codename", organisation_id: 1)
OperatingSystem.create(name: "CentOS", release: "6.1", operating_system_family_id: 3, description: "codename", organisation_id: 1)
OperatingSystem.create(name: "CentOS", release: "6.2", operating_system_family_id: 3, description: "codename", organisation_id: 1)
OperatingSystem.create(name: "CentOS", release: "6.3", operating_system_family_id: 3, description: "codename", organisation_id: 1)
OperatingSystem.create(name: "CentOS", release: "6.4", operating_system_family_id: 3, description: "codename", organisation_id: 1)

OperatingSystem.create(name: "Fedora", release: "19", operating_system_family_id: 3, description: "Schrödinger's Cat", organisation_id: 1)

OperatingSystem.create(name: "Ubuntu", release: "10.04 LTS", operating_system_family_id: 3, description: "Lucid Lynx", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "10.10", operating_system_family_id: 3, description: "Maverick Meerkat", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "11.04", operating_system_family_id: 3, description: "Natty Narwhal", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "11.10", operating_system_family_id: 3, description: "Oneiric Ocelot", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "12.04 LTS", operating_system_family_id: 3, description: "Precise Pangolin", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "12.10", operating_system_family_id: 3, description: "Quantal Quetzal", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "13.04", operating_system_family_id: 3, description: "Raring Ringtail", organisation_id: 1)
OperatingSystem.create(name: "Ubuntu", release: "13.10", operating_system_family_id: 3, description: "Saucy Salamander", organisation_id: 1)

OperatingSystem.create(name: "HPUX", release: "11.11", operating_system_family_id: 4, organisation_id: 1)
OperatingSystem.create(name: "HPUX", release: "11.21", operating_system_family_id: 4, organisation_id: 1)
OperatingSystem.create(name: "HPUX", release: "11.31", operating_system_family_id: 4, organisation_id: 1)

OperatingSystem.create(name: "Solaris", release: "11.1", operating_system_family_id: 4, organisation_id: 1)

OperatingSystem.create(name: "AIX", release: "7.1 TL2", operating_system_family_id: 4, organisation_id: 1)

OperatingSystem.create(name: "Windows", release: "XP", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "2000", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "Vista", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "Server 2008", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "7", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "Server 2008 R2", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "8", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "Server 2012", operating_system_family_id: 5, organisation_id: 1)
OperatingSystem.create(name: "Windows", release: "Server 2012 R2", operating_system_family_id: 5, organisation_id: 1)

OperatingSystem.create(name: "MacOSX", release: "10.0", operating_system_family_id: 6, description: "Cheetah", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.1", operating_system_family_id: 6, description: "Puma", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.2", operating_system_family_id: 6, description: "Jaguar", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.3", operating_system_family_id: 6, description: "Panther", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.4", operating_system_family_id: 6, description: "Tiger", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.5", operating_system_family_id: 6, description: "Leopard", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.6", operating_system_family_id: 6, description: "Snow Leopard", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.7", operating_system_family_id: 6, description: "Lion", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.8", operating_system_family_id: 6, description: "Mountain Lion", organisation_id: 1)
OperatingSystem.create(name: "MacOSX", release: "10.9", operating_system_family_id: 6, description: "Mavericks", organisation_id: 1)

System.create(name: "Unknown", asset_tag: "Unknown", device_model_id: 1, environment_id: 1, support_level_id: 1, service_level_id: 1, organisation_id: 1, operating_system_id: 1, description: "The system is currently unknown.")
System.create(name: "None",    asset_tag: "None",    device_model_id: 2, environment_id: 2, support_level_id: 2, service_level_id: 2, organisation_id: 2, operating_system_id: 2, description: "There is no system applicable.")

# OnemdlSettings.create(name: "omdl")
