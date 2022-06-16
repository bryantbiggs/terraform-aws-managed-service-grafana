
################################################################################
# Data Source
################################################################################

resource "grafana_data_source" "this" {
  for_each = { for k, v in var.data_sources : k => v if var.create }

  name = try(each.value.name, each.key)
  type = each.value.type

  access_mode         = try(each.value.access_mode, null)
  basic_auth_enabled  = try(each.value.basic_auth_enabled, null)
  basic_auth_password = try(each.value.basic_auth_password, null)
  basic_auth_username = try(each.value.basic_auth_username, null)
  database_name       = try(each.value.database_name, null)
  http_headers        = try(each.value.http_headers, null)
  is_default          = try(each.value.is_default, null)

  dynamic "json_data" {
    for_each = try([each.value.json_data], [])

    content {
      assume_role_arn           = try(json_data.value.assume_role_arn, null)
      auth_type                 = try(json_data.value.auth_type, null)
      authentication_type       = try(json_data.value.authentication_type, null)
      catalog                   = try(json_data.value.catalog, null)
      client_email              = try(json_data.value.client_email, null)
      client_id                 = try(json_data.value.client_id, null)
      cloud_name                = try(json_data.value.cloud_name, null)
      conn_max_lifetime         = try(json_data.value.conn_max_lifetime, null)
      custom_metrics_namespaces = try(json_data.value.custom_metrics_namespaces, null)
      database                  = try(json_data.value.database, null)
      default_bucket            = try(json_data.value.default_bucket, null)
      default_project           = try(json_data.value.default_project, null)
      default_region            = try(json_data.value.default_region, null)

      dynamic "derived_field" {
        for_each = try(json_data.value.derived_field, [])

        content {
          name           = try(derived_field.value.name, null)
          matcher_regex  = try(derived_field.value.matcher_regex, null)
          url            = try(derived_field.value.url, null)
          datasource_uid = try(derived_field.value.datasource_uid, null)
        }
      }

      encrypt                       = try(json_data.value.encrypt, null)
      es_version                    = try(json_data.value.es_version, null)
      external_id                   = try(json_data.value.external_id, null)
      github_url                    = try(json_data.value.github_url, null)
      graphite_version              = try(json_data.value.graphite_version, null)
      http_method                   = try(json_data.value.http_method, null)
      interval                      = try(json_data.value.interval, null)
      implementation                = try(json_data.value.implementation, null)
      log_level_field               = try(json_data.value.log_level_field, null)
      log_message_field             = try(json_data.value.log_message_field, null)
      manage_alerts                 = try(json_data.value.manage_alerts, null)
      max_concurrent_shard_requests = try(json_data.value.max_concurrent_shard_requests, null)
      max_idle_conns                = try(json_data.value.max_idle_conns, null)
      max_lines                     = try(json_data.value.max_lines, null)
      max_open_conns                = try(json_data.value.max_open_conns, null)
      organization                  = try(json_data.value.organization, null)
      org_slug                      = try(json_data.value.org_slug, null)
      output_location               = try(json_data.value.output_location, null)
      postgres_version              = try(json_data.value.postgres_version, null)
      profile                       = try(json_data.value.profile, null)
      query_timeout                 = try(json_data.value.query_timeout, null)
      sigv4_assume_role_arn         = try(json_data.value.sigv4_assume_role_arn, null)
      sigv4_auth                    = try(json_data.value.sigv4_auth, null)
      sigv4_auth_type               = try(json_data.value.sigv4_auth_type, null)
      sigv4_external_id             = try(json_data.value.sigv4_external_id, null)
      sigv4_profile                 = try(json_data.value.sigv4_profile, null)
      sigv4_region                  = try(json_data.value.sigv4_region, null)
      ssl_mode                      = try(json_data.value.ssl_mode, null)
      subscription_id               = try(json_data.value.subscription_id, null)
      tenant_id                     = try(json_data.value.tenant_id, null)
      timescaledb                   = try(json_data.value.timescaledb, null)
      time_field                    = try(json_data.value.time_field, null)
      time_interval                 = try(json_data.value.time_interval, null)
      tls_auth                      = try(json_data.value.tls_auth, null)
      tls_auth_with_ca_cert         = try(json_data.value.tls_auth_with_ca_cert, null)
      tls_configuration_method      = try(json_data.value.tls_configuration_method, null)
      tls_skip_verify               = try(json_data.value.tls_skip_verify, null)
      token_uri                     = try(json_data.value.token_uri, null)
      tracing_datasource_uid        = try(json_data.value.tracing_datasource_uid, null)
      tsdb_resolution               = try(json_data.value.tsdb_resolution, null)
      tsdb_version                  = try(json_data.value.tsdb_version, null)
      version                       = try(json_data.value.version, null)
      workgroup                     = try(json_data.value.workgroup, null)
      xpack_enabled                 = try(json_data.value.xpack_enabled, null)
    }
  }

  password = try(each.value.password, null)

  dynamic "secure_json_data" {
    for_each = try([each.value.secure_json_data], [])

    content {
      access_key          = try(secure_json_data.value.access_key, null)
      access_token        = try(secure_json_data.value.access_token, null)
      auth_token          = try(secure_json_data.value.auth_token, null)
      basic_auth_password = try(secure_json_data.value.basic_auth_password, null)
      client_secret       = try(secure_json_data.value.client_secret, null)
      password            = try(secure_json_data.value.password, null)
      private_key         = try(secure_json_data.value.private_key, null)
      secret_key          = try(secure_json_data.value.secret_key, null)
      sigv4_access_key    = try(secure_json_data.value.sigv4_access_key, null)
      sigv4_secret_key    = try(secure_json_data.value.sigv4_secret_key, null)
      tls_ca_cert         = try(secure_json_data.value.tls_ca_cert, null)
      tls_client_cert     = try(secure_json_data.value.tls_client_cert, null)
      tls_client_key      = try(secure_json_data.value.tls_client_key, null)
    }
  }

  uid      = try(each.value.uid, null)
  url      = try(each.value.url, null)
  username = try(each.value.username, null)
}
