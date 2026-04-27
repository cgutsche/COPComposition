# Choose a base Julia image
FROM julia:1.11

# Set working directory inside the container
WORKDIR /usr/src/app

# Install Julia package dependencies first (for better layer caching)
COPY setup.jl .
RUN julia setup.jl

# Copy your application script(s)
COPY droneScenario.jl .
COPY compositionPerformance.jl .

# Run the application
CMD ["/bin/bash", "-c", "julia droneScenario.jl && julia compositionPerformance.jl"]