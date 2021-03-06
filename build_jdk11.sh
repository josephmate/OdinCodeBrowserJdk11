# browse modules at
# https://docs.oracle.com/en/java/javase/11/docs/api/
# each module shows a picture of its dependencies
jdk=jdk11
args="--inputSourceDirectory ../$jdk/src/java.base/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/jdk.charsets/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.xml/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.xml.crypto/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/jdk.xml.dom/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.logging/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.transaction.xa/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.sql/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.sql.rowset/share/classes"
args="$args --outputDirectory docs"
args="$args --webPathToCssFile /OdinCodeBrowserJdk11/css/styles.css"
args="$args --webPathToSourceHtmlFiles /OdinCodeBrowserJdk11"
args="$args --languageLevel JAVA_11"
mvn install exec:java \
  -Dexec.mainClass=Main \
  -Dexec.args="$args"
