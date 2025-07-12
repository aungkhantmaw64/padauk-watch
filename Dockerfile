FROM zephyrprojectrtos/zephyr-build:main

ENV DEBIAN_FRONTEND=noninteractive

ENTRYPOINT [ "./entrypoint.sh" ]
