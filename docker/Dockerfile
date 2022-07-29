FROM python:3.10

SHELL ["/bin/bash", "-c"]

# set working directory
ENV APPPDIR /app
WORKDIR ${APPDIR}

# Install Poetry
# Real Poetry path is /usr/local/bin/poetry
ENV POETRY_HOME /usr/local
RUN curl -sSL https://install.python-poetry.org | python3 -

# Install pre-commit
RUN pip install pre-commit

# Set PYTHONPATH
ENV PYTHONPATH ${APPDIR}

# Copy dependency config.
COPY ./pyproject.toml /app/pyproject.toml
COPY ./poetry.lock /app/poetry.lock

# Install Dependencies
RUN poetry install

# Copy source codes.
COPY ./ ${APPDIR}