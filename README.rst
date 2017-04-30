================
packages-formula
================

A simple saltstack formula designed to install a list of packages that
should be present in a system without any specific global configuration. 

This can be used to ensure must-have utilities are installed on a set
of machines.

Available states
================

.. contents::
    :local:

``init``
--------

Iterate through the package list pillar and installs the packages listed.
