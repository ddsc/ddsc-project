Changelog of the DDSC project
=============================

This changelog contains the big changes of the DDSC project *as a whole*. So:
new servers added; big pieces of functionality that are finished; new
documentation sources; etcetera.


0.1 (unreleased)
----------------

- Set up a server with the API django site. For the time being, this is both
  the incoming and outgoing API.

- Created chef cookbook + supporting scripts for rolling out cassandra
  servers. The cookbook is hidden in N&S' github repository due to
  passwords. TODO: export documentation out of these scripts and cookbooks.

- Started lizard site + app for showing dike data inside lizard.

- Started django site + app for providing the dike data API.

- Added all top-level project requirements as github issues:
  https://github.com/ddsc/ddsc-project/issues?labels=Requirement .
