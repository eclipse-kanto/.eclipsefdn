local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

local custom_branch_protection_rule(pattern) = 
  orgs.newBranchProtectionRule(pattern) {
      "requires_commit_signatures": true,
      "requires_conversation_resolution": true,
      "require_last_push_approval": true,
      "required_approving_review_count": 1,
  };
  
orgs.newOrg('eclipse-kanto') {
  settings+: {
    dependabot_security_updates_enabled_for_new_repositories: false,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('aws-connector') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('azure-connector') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('container-management') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      description: "container-management",
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('example-applications') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('file-backup') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('file-upload') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      description: "file-upload",
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('kanto') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      description: "Kanto",
      has_discussions: true,
      homepage: "https://eclipse.dev/kanto",
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('WF_AUTH') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('local-digital-twins') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('meta-kanto') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "meta-kanto",
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('software-update') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      description: "software-update",
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('suite-bootstrapping') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('suite-connector') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      description: "suite-connector",
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('system-metrics') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('update-manager') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      branch_protection_rules: [
        custom_branch_protection_rule('main'),
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
