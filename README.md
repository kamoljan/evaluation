==============================
Evaluation script for Viki.com
==============================


Generate plot file from ab
--------------------------

    $ ./test/ab_to_plot.sh 10 10 http://www.viki.com/ 10_10.png

Siege with siege
----------------

    $ siege -c10 -r10 http://www.viki.com/

Build pdf
---------

    $ dflatex bare_conf.tex

