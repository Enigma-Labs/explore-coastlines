# Enigma - Coastline Analysis

### Dependencies
```bash
# MacOS
brew install virtualenv gdal
# Debian/Ubuntu
apt-get install --no-install-recommends \
  virtualenv libgdal-dev libgeos-dev python3-dev \
  python3-numpy python3-geopandas python3-pil python3-fiona python3-geopandas python3-matplotlib

# activate virtualenv
virtualenv -p $(which python3) --system-site-packages .venv/
source .venv/bin/activate

# install requirements
pip install -r requirements.txt
```
