DDSC documentation project
==========================

This technical project documentation is available online at
http://ddsc.github.com


Working on the documentation
----------------------------

The documentation is made with `sphinx <http://sphinx.pocoo.org/>`_. To get
everything working, do the regular buildout dance::

    $ python bootstrap.py
    $ bin/buildout

To build the documentation, run::

    $ bin/sphinx

The documentation source files are inside ``doc/source/``. The format is
"restructured text", see the `sphinx website <http://sphinx.pocoo.org/>`_ for
the syntax.


Rendered documentation on ddsc.github.com
-----------------------------------------

The github repository for this documentation is
https://github.com/ddsc/ddsc-project, but there's a second repository:
https://github.com/ddsc/ddsc.github.com ! This specially-named second
repository tells github to show that repository's content as `github pages
<http://pages.github.com/>`_. In this way, it is the documentation for the
ddsc organization on github.

How to update that documentation there? Normally you'll run ``bin/sphinx`` and
look at the pages locally. When you're done, just run
``./update_documentation.sh`` to copy the documentation to
``../ddsc.github.com``. The assumption in the script is that
``../ddsc.github.com`` exists and that it is a checkout of
https://github.com/ddsc/ddsc.github.com .
