# Continuous Integration Best Practices
### 1. Maintain a code repository
There should be a revision control system for the project’s source code. All artifacts required to build the project should be placed in the repository. The system should be buildable from a fresh checkout and not require additional dependencies. Branching should be minimized – the mainline / trunk should be the place for the working version of the software, and all changes should preferably be integrated there.
### 2. Automate the build
A single command should have the capability of building the system. Automation of the build should include automating the integration, and preferably running a script after the build ends, which deploys the software into a production-like environment.

The build script should not only compile binaries, but also generate documentation, website pages, statistics and distribution media (such as Red Hat RPM or Windows MSI files).
### 3. Make the build self-testing
Once the code is built, all tests should run automatically to validate that the software behaves as the developers expect it to.
### 4. Everyone commits to the baseline every day
To reduce the number of conflicting changes, developers should commit to the baseline every day. Checking-in a week’s worth of work runs the risk of conflicting with others’ code and can be very difficult to resolve. By committing at least once a day, conflicts are quickly discovered and typically focus on a limited part of the system, and team members can communicate about their recent changes.

As part of this process, every commit should be built, to review the impact of the changes on the system by the entire team. Builds should run at least nightly, preferably more frequently. To facilitate this, builds should run fast.

### 5. Every commit (to baseline) should be built
Testing environment that differs from the Production one could lead – and often does lead – to software that tested successfully in QA but fails in Production. However, building a replica of a production environment is cost prohibitive. Instead, the pre-production environment should be built to be a scalable version of the actual production environment, to both alleviate costs while maintaining technology stack composition and nuances.
### 6. Keep the build fast
Builds should be readily available to stakeholders and testers, to reduce the amount of rework necessary when rebuilding a feature that doesn’t meet requirements. Early testing should be done to reduce the chances that defects survive to deployment; early discovery of errors can reduce the amount of work necessary to resolve them.

### 7. Test in a clone of the production environment
It should be easy to find out whether the build breaks and, if so, who made the relevant change.

### 8. Make it easy to get the latest deliverables

### 9. Everyone can see the results of the latest build

### 10. Automate deployment

#### Sources I used :
[Continuous Integration Best Practices: Vision and Reality](https://www.cloudbees.com/continuous-delivery/continuous-integration-best-practices)

 