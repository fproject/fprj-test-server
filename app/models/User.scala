package models

import org.joda.time.DateTime
import play.api.libs.json.Json

case class User(id: Option[Long], name: String, bod: DateTime)

object User {
  implicit val fmt = Json.format[User]
}