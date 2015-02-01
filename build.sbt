organization := "com.fprjtest"

name := "fprjtest"

version := "0.1-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.4"

scalacOptions ++= Seq("-encoding", "UTF-8", "-deprecation", "-unchecked", "-feature", "-Yinline-warnings"/*, "-optimise"*/)

//resolvers += "Springsource Repo" at "http://repo.springsource.org/plugins-release"

libraryDependencies ++= Seq(
  jdbc , anorm , cache , ws,
  //"com.adobe.blazeds"     % "blazeds-common"            % "4.6.0.23207",
  "com.sandinh"           %% "play-hikaricp"            % "1.7.1",
  "mysql"                 %  "mysql-connector-java"     % "5.1.34",
 "com.typesafe.play"     %% "play-slick"               % "0.8.1"
)

unmanagedResourceDirectories in Test <+=  baseDirectory ( _ /"target/web/public/test" )

//this will not create target/universal/stage/share when run `play stage`
sources in doc in Compile := Seq()
