Terraform Module Template
=========================

This repository provides a template for creating new Terraform modules.
Modules created from this template will already be configured for CICD.

Usage
-----

It is assumed that you have several tools already installed:
* [terraform][1]
* [go][2]
* [terraform-docs][9]
* [pre-commit][3]
* [commitlint][4]

Initial Setup
-------------

Before making any changes to the repository, make sure to run:
```
pre-commit install --install-hooks
pre-commit install --hook-type commit-msg
```
Local Testing
-------------

You should be able to run tests simply by typing `go test ./test`.  be aware
that some modules may require more time to fully test. You can extend the
default timeout by adding `-timeout 30m` to the test command.

Commits and Pushing code
------------------------

After a module has passed tests locally it's ready to push up to SCM on a named
branch.  During this time, `pre-commit` will ensure local code is in good shape
to be sent to SCM, and `commitlint` will ensure that commmit messages follow
[conventional commit format][5]

Important Files
---------------

Generally, these files can be ignored, and provide default behavior for various
parts of the release cycle.

* `.releaserc` - determines the behavior of [semantic-release][6] in CICD.
* `.pre-commit-config.yaml` - provides default `pre-commit` configuration.
* `.commitlintrc.js` - determines conventional commit keywords.
* `.github/` - contains the `CODEOWNERS` file, as well as CICD pipelines.

Contributing
------------

 1. **Fork** the repository
 2. **Clone** the project from your forked repository to your macine
 3. **Commit** changes to your own branch
 4. **Push** your changes on your branch to your forked repository.
 5. Submit a **Pull request** back to our repository for review.

**NOTE**: always merge from latest upstream before submitting pull requests.

Versioning
----------

[Semantic Versioning][7] will be used to version this project.
Please consult the [releases][8]
page for a complete list of available versions.


Authors
-------
* [Ryan Butler](https://github.com/ryancbutler)
* [Derek Anderson](https://github.com/deberon)
* [Patrick Delaney](https://github.com/ptdel)



[1]: https://www.terraform.io/downloads.html
[2]: https://golang.org/dl/
[3]: https://pre-commit.com/#install
[4]: https://github.com/conventional-changelog/commitlint#getting-started
[5]: https://www.conventionalcommits.org/en/v1.0.0/#summary
[6]: https://github.com/semantic-release/semantic-release
[7]: https://www.semver.org/
[8]: https://github.com/AHEAD-Terraform/module-template/releases
[9]: https://github.com/segmentio/terraform-docs