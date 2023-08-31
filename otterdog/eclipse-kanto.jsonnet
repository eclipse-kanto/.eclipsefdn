local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-kanto') {
  settings+: {
    billing_email: "webmaster@eclipse.org",
    default_repository_permission: "none",
    default_workflow_permissions: "write",
    dependabot_security_updates_enabled_for_new_repositories: false,
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: true,
    members_can_delete_repositories: true,
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('aws-connector') {
      allow_update_branch: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('azure-connector') {
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('container-management') {
      description: "container-management",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('file-backup') {
      allow_update_branch: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('file-upload') {
      description: "file-upload",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('kanto') {
      description: "Kanto",
      homepage: "https://eclipse.dev/kanto",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('WF_AUTH') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('local-digital-twins') {
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('meta-kanto') {
      allow_update_branch: false,
      description: "meta-kanto",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('software-update') {
      description: "software-update",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('suite-bootstrapping') {
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('suite-connector') {
      description: "suite-connector",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('system-metrics') {
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('update-manager') {
      allow_update_branch: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
  ],
}
