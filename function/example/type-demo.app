module example/type-demo
// 
// // section methods for built-in types
// 
//   type String { //includes other String-based types such as Secret, Patch, Email, URL, etc.
//     length():Int
//     toLowerCase():String
//     toUpperCase():String
//     replace(String,String):String
//     startsWith(String):Bool
//     startsWith(String,Int):Bool
//     endsWith(String):Bool
//     trim():String
//     utils.StringType.parseUUID                   as parseUUID():UUID
//     org.webdsl.tools.Utils.containsDigit         as containsDigit():Bool
//     org.webdsl.tools.Utils.containsLowerCase     as containsLowerCase():Bool
//     org.webdsl.tools.Utils.containsUpperCase     as containsUpperCase():Bool
//     org.webdsl.tools.Utils.isCleanUrl            as isCleanUrl():Bool
//     org.apache.commons.lang3.StringUtils.contains as contains(String):Bool // this 'contains' function handles null, null as either arg will produce false
//     utils.StringType.parseInt                    as parseInt():Int
//     utils.StringType.split                       as split():List<String>
//     utils.StringType.splitWithSeparator          as split(String):List<String> //TODO Regex as argument
//     utils.StringType.parseLong                   as parseLong():Long
//     utils.StringType.parseFloat                  as parseFloat():Float
//     utils.DateType.parseDate as parseDate(String):Date
//     utils.DateType.parseDate as parseDateTime(String):DateTime
//     utils.DateType.parseDate as parseTime(String):Time
//     org.apache.commons.lang3.StringEscapeUtils.escapeEcmaScript as escapeJavaScript():String
//     substring(Int):String
//     substring(Int,Int):String
//   }
// 
//   type Secret {
//     org.webdsl.tools.Utils.secretDigest  as digest():Secret
//     org.webdsl.tools.Utils.secretCheck   as check(Secret):Bool
//   }
//   
//   type String {
//     name.fraser.neil.plaintext.patch_factory.patchMake   as makePatch(String): Patch
//     name.fraser.neil.plaintext.patch_factory.diff        as diff(String):List<String>
//   }
//   
//   type Patch {
//     name.fraser.neil.plaintext.patch_factory.patchApply  as applyPatch(String):String
//   }
// 
//   
//   native class utils.ValidationException as NativeValidationException {
//       getName() : String
//       getErrorMessage() : String
//       isRelevantObject(Object) : Bool
//   }
// 
//   native class utils.HibernateTransactionHelper as HibernateTransactionHelper {
//     static commitAndStartNewTransaction() : List<NativeValidationException>
//     static rollbackAndStartNewTransaction()
//   }
// 
//   function commitAndStartNewTransaction() : List<NativeValidationException> {
//       return HibernateTransactionHelper.commitAndStartNewTransaction();
//   }