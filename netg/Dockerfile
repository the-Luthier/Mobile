FROM python:3.11.3-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
RUN mkdir /app
WORKDIR /app

# Set Django settings module environment variable
ENV DJANGO_SETTINGS_MODULE NetGmobile.settings

# Copy the .env file
COPY .env /app/

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3-dev \
        libpq-dev \
        libncurses-dev \
        libncurses6 \
        libncursesw6 \
        libffi-dev \
        wget \
        build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Download and install ncurses 6.4 from source
RUN wget https://invisible-island.net/archives/ncurses/6.4/ncurses-6.4-20230423.patch.gz && \
    tar -xzf ncurses-6.4.tar.gz && \
    cd ncurses-6.4 && \
    ./configure --prefix=/usr/local && \
    make && \
    make install && \
    cd .. && \
    rm -rf ncurses-6.4 ncurses-6.4.patch.gz

# Upgrade pip to the latest version
RUN pip install --no-cache-dir --trusted-host pypi.python.org --upgrade pip

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "NetGmobile.wsgi:application"]
