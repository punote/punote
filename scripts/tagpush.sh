#!/bin/bash

# Change the version number before submitting: 
VERSION=$(yq eval '.version' 'pubspec.yaml')
echo "Version: $VERSION"
git tag ${VERSION} && git push --tags
