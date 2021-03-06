Server setup
============


Django API and lizard site
--------------------------

An Ubuntu 12.04 LTS server for the various test sites has been set up at
``s-ddsc-ws-d1.external-nens.local`` on a virtual machine in Nelen & Schuurmans'
Amsterdam data center. (See `nens-internal-only server overview page
<http://buildbot.lizardsystem.nl/serverinfo/servers/s-ddsc-ws-d1.html>`_.)

Three sites are hosted there at the moment:

- The `Django API site <https://github.com/ddsc/ddsc-api>`_ has already been
  set up in a very, very initial version at http://test.api.dijkdata.nl/ . It
  will have both a read and write API. Also included will be a socket
  implementation for receiving sensor data, just like at the IJkdijk
  experiment. Later on, this can be split over multiple servers if needed.

- The `management site <https://github.com/ddsc/ddsc-management>`_ is at
  http://test.beheer.dijkdata.nl/ .

- The `front-end Lizard site <https://github.com/ddsc/ddsc-site>`_ is at
  http://test.dijkdata.nl/ .

The Ubuntu server also has a PostgreSQL/PostGIS database locally. Later on, this
has to be moved to a separate machine.

The current structure is as follows:

.. image:: dijkdata-server-structure.png


PostgreSQL
----------

PostgreSQL is running on ``p-ddsc-db-d1.ddsc.local``.


Cassandra cluster
-----------------

Using a Chef cookbook, four Cassandra servers have been set up, named
``p-ddsc-cass-d1.ddsc.local`` till
``p-ddsc-cass-d4.ddsc.local``. They run Ubuntu 12.04 LTS.


RabbitMQ
--------

A dedicated RabbitMQ server is on ``p-ddsc-rmq-d1.ddsc.local``.


Rest API
--------

The `DDSC webclient <https://github.com/ddsc/webclient>`_ is at http://ddsc.github.com/webclient .

The communication of the webclient and the server follow this diagram:

.. image:: json-api-client-server.png
