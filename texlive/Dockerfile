FROM debian:sid
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
		texlive-binaries  \
		texlive-base \
		texlive-latex-base \
		latex-beamer  \
		texlive-generic-extra  \
		texlive-xetex \
		texlive-bibtex-extra \
		lmodern \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
		texlive-lang-greek  \
		texlive-lang-chinese \
		texlive-lang-cjk  \
		texlive-lang-french  \
		texlive-lang-european  \
		texlive-lang-english  \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
		texlive-metapost \
		texlive-math-extra \
		texlive-formats-extra  \
		texlive-latex-extra  \
		texlive-pictures \
		texlive-science \
		texlive-plain-extra  \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
		prosper  \
		fragmaster \
		latexdiff \
		latex-xcolor \
		tex4ht \
		texlive-fonts-extra \
		texlive-extra-utils \
		latex-cjk-all \
		texlive-font-utils \
		texlive-pstricks \
		texlive-omega  \
		purifyeps \
		latexmk \
		lacheck \
		cm-super \
		feynmf \
		chktex \
		tipa  \
		pgf  \
		tex-gyre \
		lcdf-typetools \
		t1utils \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
		info  \
		texinfo \
		context \
		dvidvi \
		dvipng \
		texlive-fonts-recommended \
		texlive-latex-recommended  \
		texlive-generic-recommended  \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

