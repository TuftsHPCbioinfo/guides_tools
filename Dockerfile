FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git build-essential libssl-dev libffi-dev libgit2-dev curl \
    && rm -rf /var/lib/apt/lists/*

# Install pip dependencies
RUN pip install --no-cache-dir \
    jupyterlab==4.3.6 \
    jupytext==1.16.7 \
    linkify-it-py==2.0.3 \
    myst-nb==1.2.0 \
    pre-commit==4.2.0 \
    pydata-sphinx-theme==0.16.0 \
    pygit2==1.17.0 \
    python-frontmatter==1.1.0 \
    sphinx-autobuild==2024.10.3 \
    sphinx-copybutton==0.5.2 \
    sphinx-design==0.6.1 \
    sphinx-external-toc==1.0.1 \
    sphinx-notfound-page==1.0.4 \
    sphinx==8.2.3 \
    jupyterlab-myst==2.4.2

# Default command
CMD ["bash"]