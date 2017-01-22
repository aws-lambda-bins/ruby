# Ruby on AWS Lamda

[![Build Status](https://travis-ci.org/aws-lambda-bins/ruby.svg?branch=master)](https://travis-ci.org/aws-lambda-bins/ruby)

## Downloads

### Latest

- [ruby-master.tar.gz](https://s3-ap-northeast-1.amazonaws.com/aws-lambda-bins/ruby/ruby-master.tar.gz)

## Manual Build

```sh
$ packer build -only=amazo-ebs template.json
```

## Development

### Build

```sh
$ packer build -only=docker template.json
```

### Test

```sh
$ bundle install
$ rake
```
