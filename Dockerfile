# Use the official Jupyter Docker image as a base
FROM jupyter/base-notebook:latest

# Set the working directory in the container
WORKDIR /home/jovyan/work

# Copy the requirements.txt file into the container
COPY requirements.txt /home/jovyan/work/

# Install Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files into the container
COPY . /home/jovyan/work

# Expose the port Jupyter Notebook runs on
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]