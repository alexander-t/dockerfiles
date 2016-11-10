#!/bin/sh
rm -f plugins/*
wget -P plugins http://updates.jenkins-ci.org/latest/bouncycastle-api.hpi 
wget -P plugins http://updates.jenkins-ci.org/latest/credentials.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/display-url-api.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/git-client.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/git.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/github-api.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/github.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/gradle.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/junit.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/mailer.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/matrix-project.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-scm-step.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-step-api.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/plain-credentials.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/scm-api.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/script-security.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/ssh-credentials.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/structs.hpi
wget -P plugins http://updates.jenkins-ci.org/latest/token-macro.hpi
# Pipeline API Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-api.hpi
# Pipeline Stage Step Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-stage-step.hpi
# Pipeline Supporting APIs Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-support.hpi
# Pipeline Build Step Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-build-step.hpi
# Pipeline Milestone Step Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-milestone-step.hpi
# Pipeline Input Step Plugin
wget -P plugins http://updates.jenkins-ci.org/download/plugins/pipeline-input-step/2.2/pipeline-input-step.hpi
# Missing! wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-input-step.hpi
# Pipeline Job Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-job.hpi
# ACE Editor Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/ace-editor.hpi
# Handlebars.js
wget -P plugins http://updates.jenkins-ci.org/latest/handlebars.hpi
# CloudBees Folders Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/cloudbees-folder.hpi
# Git Server Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/git-server.hpi
# Branch API Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/branch-api.hpi
# Durable Task Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/durable-task.hpi
# jQuery Detached Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/jquery-detached.hpi
# Moment.js
wget -P plugins http://updates.jenkins-ci.org/latest/momentjs.hpi

# pipeline-rest-api
wget -P plugins https://updates.jenkins-ci.org/latest/pipeline-rest-api.hpi
# workflow-durable-task-step
wget -P plugins https://updates.jenkins-ci.org/latest/workflow-durable-task-step.hpi
# Pipeline Input Step Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-input-step.hpi
# Pipeline Stage View Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-stage-view.hpi
# Pipeline Basic Steps Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-basic-steps.hpi
# Pipeline Graph Analysis Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/pipeline-graph-analysis.hpi
# Pipeline Groovy Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-cps.hpi
# Pipeline Shared Groovy Libraries Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-cps-global-lib.hpi
# Pipeline Multibranch Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-multibranch.hpi
if [ "$?" -ne 0 ]; then
        wget -P plugins http://archives.jenkins-ci.org/plugins/workflow-multibranch/latest/workflow-multibranch.hpi
fi
# Pipeline Plugin
wget -P plugins http://updates.jenkins-ci.org/latest/workflow-aggregator.hpi

