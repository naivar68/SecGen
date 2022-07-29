# User attributes hash.
# @summary A hash of user attributes.
# Passed as the third parameter of the ensure_resources function.
#
type Accounts::User::Resource = Struct[
  { Optional[ensure]                   => Enum['absent','present'],
    Optional[allowdupe]                => Boolean,
    Optional[bash_profile_content]     => String,
    Optional[bash_profile_source]      => Stdlib::Filesource,
    Optional[bashrc_content]           => String,
    Optional[bashrc_source]            => Stdlib::Filesource,
    Optional[comment]                  => String,
    Optional[create_group]             => Boolean,
    Optional[expiry]                   => Accounts::User::Expiry,
    Optional[forcelocal]               => Boolean,
    Optional[forward_content]          => String,
    Optional[forward_source]           => Stdlib::Filesource,
    Optional[gid]                      => Accounts::User::Uid,
    Optional[group]                    => Accounts::User::Name,
    Optional[groups]                   => Array[Accounts::User::Name],
    Optional[name]                     => Accounts::User::Name,
    Optional[home]                     => Stdlib::Unixpath,
    Optional[home_mode]                => Stdlib::Filemode,
    Optional[ignore_password_if_empty] => Boolean,
    Optional[iterations]               => Accounts::User::Iterations,
    Optional[locked]                   => Boolean,
    Optional[managehome]               => Boolean,
    Optional[managevim]                => Boolean,
    Optional[membership]               => Enum['inclusive','minimum'],
    Optional[name]                     => Accounts::User::Name,
    Optional[password]                 => String,
    Optional[password_max_age]         => Accounts::User::PasswordMaxAge,
    Optional[purge_sshkeys]            => Boolean,
    Optional[purge_user_home]          => Boolean,
    Optional[salt]                     => String,
    Optional[shell]                    => Stdlib::Unixpath,
    Optional[sshkey_custom_path]       => Stdlib::Unixpath,
    Optional[sshkey_owner]             => Accounts::User::Name,
    Optional[sshkey_group]             => Accounts::User::Name,
    Optional[sshkeys]                  => Array[String],
    Optional[system]                   => Boolean,
    Optional[uid]                      => Accounts::User::Uid,
  }
]