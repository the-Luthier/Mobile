FROM python:3-alpine3.17

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PIP_TRUSTED_HOST=pypi.python.org

# Create and set the working directory
RUN mkdir /app
WORKDIR /app

# Update package index
RUN apk update --no-cache && apk upgrade --no-cache

# Install system dependencies and build tools
RUN apk add --no-cache libffi-dev
RUN apk add --no-cache wget
RUN apk add  build-base


# Download and install ncurses 6.4 from source
RUN set -e; set -x; \
    apk --no-cache add libffi-dev wget build-base && \
    wget https://invisible-mirror.net/archives/ncurses/current/ncurses-6.4-20230408.tgz && \
    tar -xzf ncurses-6.4-20230408.tgz && \
    cd ncurses-6.4-20230408 && \
    ./configure --prefix=/usr/local && \
    make && \
    make install && \
    cd .. && \
    rm -rf ncurses-6.4-20230408 ncurses-6.4-20230408.tgz

# Set Django settings module environment variable
ENV DJANGO_SETTINGS_MODULE NetGmobile.settings

# Upgrade pip to the latest version
RUN pip install --trusted-host pypi.python.org --upgrade pip -v
RUN pip install --trusted-host pypi.python.org --upgrade pip setuptools -v

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/
RUN pip install --trusted-host pypi.python.org --no-cache-dir -r requirements.txt

# Remove build-base and other unnecessary packages
RUN apk del build-base wget

# Copy the rest of the application code
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "NetGmobile.wsgi:application"]