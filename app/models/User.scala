package models

import org.joda.time.DateTime

case class User(id: Option[Long], name: String, bod: DateTime)

object User {

}