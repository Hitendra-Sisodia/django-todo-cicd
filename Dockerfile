# Use a specific Python version (e.g., 3.11 to avoid issues with Python 3.12+ and distutils)
FROM python:3.11

# Install necessary dependencies including setuptools
RUN pip install --upgrade pip setuptools

# Copy the project files into the container
COPY . .

# Install project dependencies, including Django
RUN pip install django==3.2

# Run migrations to set up the database
RUN python manage.py migrate

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


