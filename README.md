## Evaluation script for Viki.com ##

### Prerequisite for evaluation

* [Ab][1] - Apache HTTP server benchmarking tool.
OR
* [Siege][2] - An HTTP load testing and benchmarking utility by Jeff Fulmer.

### Prerequisite for documentation

* [Latex][3] - A document preparation system

Generate plot file from ab
--------------------------

    $ ./test/ab_to_plot.sh 10 10 http://www.viki.com/ 10_10.png

Siege with siege
----------------

    $ siege -c10 -r10 http://www.viki.com/

Build pdf doc on mac
--------------------

    $ dflatex bare_conf.tex

[1]: http://httpd.apache.org/docs/2.2/programs/ab.html
[2]: http://www.joedog.org/siege-home/
[3]: http://www.latex-project.org/
