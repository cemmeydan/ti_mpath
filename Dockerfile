FROM dynverse/dynwrap:r

RUN R -e 'devtools::install_github("dynverse/Mpath")'

# should be
# RUN R -e 'devtools::install_url("https://github.com/JinmiaoChenLab/Mpath/raw/master/Mpath_1.0.tar.gz")'
# but dynverse/Mpath is just so much easier to use than the tar gz above

LABEL version 0.1.5

ADD . /code

ENTRYPOINT Rscript /code/run.R
