FROM debian:sid
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
		texlive-lang-greek  \
		texlive-lang-chinese \
		texlive-lang-cjk  \
		texlive-lang-french  \
		texlive-lang-european  \
		texlive-lang-english  \
		texlive-generic-extra  \
		texlive-binaries  \
		texlive-base \
		texlive-latex-base \
		texlive-xetex \
		latex-beamer  \
		texlive-bibtex-extra \
		texlive-metapost \
		texlive-math-extra \
		texlive-formats-extra  \
		texlive-latex-extra  \
		texlive-pictures \
		texlive-science \
		texlive-plain-extra  \
		lmodern \
	&& rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y --no-install-recommends \
		info  \
		texlive-omega  \
		prosper  \
		fragmaster \
		latexdiff \
		latex-xcolor \
		tex4ht \
		texlive-fonts-extra \
		dvidvi \
		texlive-extra-utils \
		latex-cjk-all \
		texlive-font-utils \
		texlive-pstricks \
		purifyeps \
		latexmk \
		lacheck \
		cm-super \
		feynmf \
		chktex \
		tipa  \
		pgf  \
		tex-gyre \
		texinfo \
		context \
		lcdf-typetools \
		t1utils \
		texlive-fonts-recommended \
		texlive-latex-recommended  \
		texlive-generic-recommended  \
		dvipng \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

