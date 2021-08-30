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

# Jenkins Best Practices
### 1. Keep Jenkins Secure At All Times
Jenkins does not perform any security checks within the default configuration. This implies that any user accessing the website can execute any random code on the Jenkins master besides simply configuring Jenkins, the jobs, and builds. It also enables the execution of any arbitrary code on all connected agents, including your passwords, certificates, and other private/reserved data. As Jenkins CI/CD best practices go, it is recommended to secure Jenkins and configure the ‘Configure Global Security’ option.
### 2. Always Backup The “JENKINS_HOME” Directory
Jenkins home directory contains lots of data, including job configurations, build logs, plugin configs, etc. that we cannot afford to lose. This can be accomplished through plugins offered by Jenkins or configuring a job to take backup. Needles to say, this is one of the most essential Jenkins best practices.
### 3. Setup A Different Job/Project For Each Maintenance Or Development Branch Created
Setting up different jobs/projects for each branch helps you support parallel development efforts and maximize the advantage of sleuthing issues, thereby reducing risk and allowing developers to be more productive.
### 4. Prevent Resource Collisions In Jobs That Are Running In Parallel
By executing Step 4, multiple jobs running simultaneously can cause collisions if they create a service or need exclusive access, which can bleed out your Jenkins pipeline. Accepting this as one of the Jenkins best practices is highly recommended by DevOps professionals.
### 5. Use “File Fingerprinting” To Manage Dependencies
Creating interdependent projects on Jenkins often creates a muddle, keeping track of which version of it is used and by which version of it. “File fingerprinting,” supported by Jenkins, simplifies this, so make the best use of it.
### 6. Avoid Complicated Groovy Codesode In Pipelines
For a Jenkins Pipeline, Groovy code always executes on master involving exuberant usage of master resources (memory and CPU). Consequently, it becomes critically important to cut back the amount of Groovy code executed by Pipelines. The subsequent solutions are to the most common Groovy methods that can be avoided, leading up to the best Jenkins practices.
### 7. Build A Scalable Jenkins Pipeline
Shared Libraries are perhaps the single most talked about tool to pop up across enterprises and are the pinnacle of applying DRY principles (Don’t Repeat Yourself) to DevOps. Shared Libraries offer a version-controlled Pipeline code that can be stored and accessed from your source control management (SCM) compared to a common programming library.
### 8. Manage Declarative Syntax/Declarative Pipelines
This is the last yet vital piece of the puzzle when it comes to enterprise-level adoption of your Jenkins implementation, pipeline resources, and Jenkins best practices. It is a huge step towards the accessibility of enterprise shared practices for anyone looking to take advantage of Pipelines.
### 9. Maintain Higher Test Code Coverage & Run Unit Tests As Part Of Your Pipeline
Maintaining 90% of code coverage ensures better ROI by reducing UAT and product defects. Although higher coverage alone does not guarantee code quality, surfacing code coverage numbers help ensure your developers and QA defect prevention at an early stage of the life cycle.
### 10. Monitor Your CI/CD Pipeline
Having a broken CI/CD pipeline can potentially stall your development team. Also, external dependencies like cloud services, network, testing services might affect your CI/CD pipeline, and you need to know when these occasional failures become significant enough to warrant action.

#### Sources I used :
[Continuous Integration Best Practices: Vision and Reality](https://www.cloudbees.com/continuous-delivery/continuous-integration-best-practices)

[Are You Following These Jenkins Best Practices?](https://www.lambdatest.com/blog/jenkins-best-practices/)
 