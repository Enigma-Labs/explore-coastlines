# Enigma - Coastline Analysis

## Dependencies
### Docker
```bash
docker build -t enigmalabs/coastline $PWD
docker run -v $PWD/app enigmalabs/coastline
```

### Native
```bash
# MacOS
brew install virtualenv gdal
# Debian/Ubuntu
apt-get install -yy libgdal-dev libgeos-dev python3-dev python3-rtree

# activate virtualenv
virtualenv -p $(which python3) --system-site-packages .venv/
source .venv/bin/activate

# install requirements
pip install -r requirements.txt
```

### GQL JWT Auth
#### Get JWT from Web
Get token at https://enigmlabs.io/graphql

#### From Script
Script requires `$CLIENT_SECRET` and `$PASSWORD`. Get secret from [Auth0](https://manage.auth0.com/dashboard/us/enigma-app/applications/mN2BOkagOYaBb9ZKfsd3W2m46t2xhPk7/settings) and password for test@enigmalabs.io account.
