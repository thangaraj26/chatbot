FROM chat_bot

COPY . /app

WORKDIR /app

# RUN python -m spacy download en_core_web_sm

# RUN apk add --no-cache \
#         --virtual=.build-dependencies \
#         g++ gfortran file binutils \
#         musl-dev python3-dev openblas-dev && \
#     apk add libstdc++ openblas && \
#     \
#     ln -s locale.h /usr/include/xlocale.h 


# RUN pip install -r requirements.txt

# RUN rm -r /root/.cache && \
#     find /usr/lib/python3.*/ -name 'tests' -exec rm -r '{}' + && \
#     find /usr/lib/python3.*/site-packages/ -name '*.so' -print -exec sh -c 'file "{}" | grep -q "not stripped" && strip -s "{}"' \; && \
#     \
#     rm /usr/include/xlocale.h && \
#     \
#     apk del .build-dependencies


ENTRYPOINT [ "python" ]

CMD ["app.py" ]
