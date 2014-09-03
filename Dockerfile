FROM base/devel

RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet && pacman --sync --refresh --sysupgrade --noconfirm --noprogressbar --quiet && pacman --sync --noconfirm --noprogressbar --quiet libx11 libxinerama

VOLUME /code
WORKDIR /code

CMD make
