fowler.corpora deployment configuration
=======================================

This is a buildout, vagrant and salstack configuration for `fowler.corpora`_, a
package for building and experimenting with semantic vector spaces.

.. _fowler.corpora: https://github.com/dimazest/fowler.corpora/

Getting started
===============

The easiest ``fowler.corpora`` deployment is in a virtual machine.

Vagrant is a virtual machine manager. A virtual machine is provided with all
the dependencies installed. You just need to install `virtualbox
<https://www.virtualbox.org/>`_ and `vagrant <https://www.vagrantup.com>`_.

::

    vagrant up
    vagrant ssh

    # Note, that /vagrant (inside the virtual machine) shares files on the host machine!
    cd /vagrant
    bin/corpora help
