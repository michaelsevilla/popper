.. Sphinx with Markdown documentation master file, created by
   sphinx-quickstart on Thu Oct  6 19:07:54 2016.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Popper
======

Popper is an experimentation protocol for organizing an academic article's 
artifacts following a DevOps approach. The documentation is organized in three 
sections. The first section describes the experimentation protocol and gives 
examples from multiple domains describing how to follow the protocol. The 
second part describes PopperCI, a continuous validation system for Popperized 
experiments.


.. toctree::
   :maxdepth: 2

   protocol/getting_started.md
   protocol/intro_to_popper.md
   ci/popperci.md
   tutorial/from_scratch.md
   tutorial/math_science.md
   tutorial/hpc.md
   tutorial/data-science.md


To build this documentation using Docker:

`docker run --rm -v $PWD/docs:/doc ivotron/rtfd build`

This project is supported in part by the National Science Foundation ([award 
#1450488](http://bigweatherweb.org)), the [Center for Research in Open Source 
Software](http://cross.ucsc.edu) (CROSS), Sandia National Laboratories, and 
Lawrence Livermore National Laboratory.


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

