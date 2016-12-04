#!/usr/bin/perl
use strict;
use warnings;

my @plugins = ("bouncycastle-api.hpi", 
	       "credentials.hpi",
	       "display-url-api.hpi",
	       "git-client.hpi",
	       "git.hpi",
	       "github-api.hpi",
	       "github.hpi",
	       "gradle.hpi",
	       "junit.hpi",
	       "mailer.hpi",
	       "matrix-project.hpi",
	       "workflow-scm-step.hpi",
	       "workflow-step-api.hpi",
	       "plain-credentials.hpi",
	       "scm-api.hpi",
	       "script-security.hpi",
	       "ssh-credentials.hpi",
	       "structs.hpi",
	       "token-macro.hpi",
	       "xunit.hpi", # xUnit Plugin
	       "log-parser.hpi", # Log Parser Plugin
	       "htmlpublisher.hpi", # HTML Publisher Plugin
	       "workflow-api.hpi", # Pipeline API Plugin
	       "pipeline-stage-step.hpi", # Pipeline Stage Step Plugin
	       "workflow-support.hpi", # Pipeline Supporting APIs Plugin
	       "pipeline-build-step.hpi", # Pipeline Build Step Plugin
	       "pipeline-milestone-step.hpi", # Pipeline Milestone Step Plugin
	       "pipeline-input-step.hpi", # Pipeline Input Step Plugin
	       "workflow-job.hpi", # Pipeline Job Plugin
	       "ace-editor.hpi", # ACE Editor Plugin
	       "handlebars.hpi", # Handlebars.js
	       "cloudbees-folder.hpi", # CloudBees Folders Plugin
	       "git-server.hpi", # Git Server Plugin
	       "branch-api.hpi", # Branch API Plugin
	       "durable-task.hpi", # Durable Task Plugin
	       "jquery-detached.hpi", # jQuery Detached Plugin
	       "momentjs.hpi", # Moment.js
	       "pipeline-rest-api.hpi", # pipeline-rest-api
	       "workflow-durable-task-step.hpi", # workflow-durable-task-step
	       "pipeline-input-step.hpi", # Pipeline Input Step Plugin
	       "pipeline-stage-view.hpi", # Pipeline Stage View Plugin
	       "workflow-basic-steps.hpi", # Pipeline Basic Steps Plugin
	       "pipeline-graph-analysis.hpi", # Pipeline Graph Analysis Plugin
	       "workflow-cps.hpi", # Pipeline Groovy Plugin
	       "workflow-cps-global-lib.hpi", # Pipeline Shared Groovy Libraries Plugin
	       "workflow-multibranch.hpi", # Pipeline Multibranch Plugin
	       # http://archives.jenkins-ci.org/plugins/workflow-multibranch/latest/workflow-multibranch.hpi
	       "workflow-aggregator.hpi" # PipeLine Plugin 
    );

if (-d "plugins") {
    system("rm -f plugins/*");
} else {
    mkdir("plugins");
}

my $i = 1;
foreach my $plugin (@plugins) {
    my $url = "http://updates.jenkins-ci.org/latest/$plugin";
    print "($i/" . @plugins . ") Getting: $plugin...\n";
    
    my $get_result = system("wget -q -P plugins $url");
    die "ERROR! Failed doing 'wget -P plugins $url'\n" if ($get_result > 0);
    $i++
}

