# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Support for zsh, fish, etc.
- Validation to see if curl is installed

### Changed

- Logic to read configuration from file
- Logic to ask for token and chat_id
- Logic to validate value when an argument is passed

### Fixed

- Check if a value passed after an argument is another argument

## 0.1.0 - 2024-07-21

### Added

- CHANGELOG.md
- First approach for `telelog` script
- Test + Release workflow
- Makefile for building and testing
- Shellcheck on pipeline

### Fixed

### Changed

### Removed