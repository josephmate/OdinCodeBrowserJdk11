# browse modules at
# https://docs.oracle.com/en/java/javase/11/docs/api/
# each module shows a picture of its dependencies
$jdk="jdk11"
$Args=(
"--inputSourceDirectory ../$jdk/src/java.base/share/classes" +
" --inputSourceDirectory ../$jdk/src/jdk.charsets/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.xml/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.xml.crypto/share/classes" +
" --inputSourceDirectory ../$jdk/src/jdk.xml.dom/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.logging/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.transaction.xa/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.sql/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.sql.rowset/share/classes" +
" --outputDirectory docs" +
" --webPathToCssFile /OdinCodeBrowserJdk11/css/styles.css" +
" --webPathToSourceHtmlFiles /OdinCodeBrowserJdk11" +
" --languageLevel JAVA_11"
)

mvn install exec:java `
  "-Dexec.mainClass=Main" `
  "-Dexec.args=$Args"
