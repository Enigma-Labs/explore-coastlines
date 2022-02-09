# Enigma - Coastline Analysis

## Dependencies
### Docker
```bash
docker build -t enigmalabs/coastline $PWD
docker run -v $PWD/app enigmalabs/coastline
```

### Native
```
Download and install Minicoda https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html

# create conda env
conda env create -f environment.yml
conda activate coastline-env
```

### GQL JWT Auth
#### Get JWT from Web
Get token at https://enigmlabs.io/graphql

#### From Script
Script requires `$CLIENT_SECRET` and `$PASSWORD`. Get secret from [Auth0](https://manage.auth0.com/dashboard/us/enigma-app/applications/mN2BOkagOYaBb9ZKfsd3W2m46t2xhPk7/settings) and password for test@enigmalabs.io account.
