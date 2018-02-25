================
packages-formula
================

A simple saltstack formula designed to manage lists of packages that
must be present and/or absent in a given host.

This can be used to ensure must-have utilities are installed on a set
of machines and also that packages that must not be present are actually absent.

.. image:: https://travis-ci.org/jeduardo/packages-formula.svg?branch=master
    :target: https://travis-ci.org/jeduardo/packages-formula

Available states
================

.. contents::
    :local:

``init``
--------

Iterate through the package pillar installing packages listed under the `present`
entry and removes packages listed under the `absent` entry.
