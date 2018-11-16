require "../config/application.cr"

User.with_password("testpass").nickname("admin").save
