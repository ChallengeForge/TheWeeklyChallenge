# Use a slim Perl image to reduce layer size
FROM perl:latest

# Create a working directory for the application
WORKDIR /app

# Copy the application code from the context
COPY . .

# Install dependencies using cpanm
RUN cpanm --installdeps --notest --with-feature=accelerate
RUN cpanm Dancer2 Plack --force

# Expose the port where the application will listen
EXPOSE 4000

# Start the application using plackup
CMD ["plackup", "-p", "4000", "bin/app.psgi"]
