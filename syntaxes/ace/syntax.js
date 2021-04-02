/*
* To try in Ace editor, copy and paste into the mode creator
* here : http://ace.c9.io/tool/mode_creator.html
*/

define(function(require, exports, module) {
   "use strict";
   var oop = require("../lib/oop");
   var TextHighlightRules = require("./text_highlight_rules").TextHighlightRules;
   /* --------------------- START ----------------------------- */
   var KyomlHighlightRules = function() {
   this.$rules = {
   "start" : [
      {
         "token" : "constant.numeric",
         "regex" : "([-+]?[\\d.]+)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "(\\{)",
         "push" : "main__1"
      },
      {
         "token" : "keyword",
         "regex" : "(\\b[a-zA-Z][a-zA-Z0-9_]*)"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()",
         "push" : "main__2"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*))"
      },
      {
         "token" : "keyword.operator",
         "regex" : "([=:]|\\|>|<\\|)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "([\\[])",
         "push" : "main__3"
      },
      {
         "token" : "punctuation",
         "regex" : "(,)"
      },
      {
         "token" : "text",
         "regex" : "(\\\")",
         "push" : "main__4"
      },
      {
         "token" : "text",
         "regex" : "(\\')",
         "push" : "main__5"
      },
      {
         "token" : "comment",
         "regex" : "(#.*)"
      },
      {
         "token" : "invalid",
         "regex" : "([^\\s])"
      },
      {
         defaultToken : "text",
      }
   ], 
   "interpolation__1" : [
      {
         "token" : "variable.interpolation",
         "regex" : "(\\})",
         "next" : "pop"
      },
      {
         defaultToken : "variable.interpolation",
      }
   ], 
   "main__1" : [
      {
         "token" : "punctuation.definition.array",
         "regex" : "(\\})",
         "next" : "pop"
      },
      {
         "token" : "constant.numeric",
         "regex" : "([-+]?[\\d.]+)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "(\\{)",
         "push" : "main__1"
      },
      {
         "token" : "keyword",
         "regex" : "(\\b[a-zA-Z][a-zA-Z0-9_]*)"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()",
         "push" : "main__2"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*))"
      },
      {
         "token" : "keyword.operator",
         "regex" : "([=:]|\\|>|<\\|)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "([\\[])",
         "push" : "main__3"
      },
      {
         "token" : "punctuation",
         "regex" : "(,)"
      },
      {
         "token" : "text",
         "regex" : "(\\\")",
         "push" : "main__4"
      },
      {
         "token" : "text",
         "regex" : "(\\')",
         "push" : "main__5"
      },
      {
         "token" : "comment",
         "regex" : "(#.*)"
      },
      {
         "token" : "invalid",
         "regex" : "([^\\s])"
      },
      {
         defaultToken : "text",
      }
   ], 
   "main__2" : [
      {
         "token" : "meta.function-call",
         "regex" : "(\\))",
         "next" : "pop"
      },
      {
         "token" : "constant.numeric",
         "regex" : "([-+]?[\\d.]+)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "(\\{)",
         "push" : "main__1"
      },
      {
         "token" : "keyword",
         "regex" : "(\\b[a-zA-Z][a-zA-Z0-9_]*)"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()",
         "push" : "main__2"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*))"
      },
      {
         "token" : "keyword.operator",
         "regex" : "([=:]|\\|>|<\\|)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "([\\[])",
         "push" : "main__3"
      },
      {
         "token" : "punctuation",
         "regex" : "(,)"
      },
      {
         "token" : "text",
         "regex" : "(\\\")",
         "push" : "main__4"
      },
      {
         "token" : "text",
         "regex" : "(\\')",
         "push" : "main__5"
      },
      {
         "token" : "comment",
         "regex" : "(#.*)"
      },
      {
         "token" : "invalid",
         "regex" : "([^\\s])"
      },
      {
         defaultToken : "text",
      }
   ], 
   "main__3" : [
      {
         "token" : "punctuation.definition.array",
         "regex" : "([\\]])",
         "next" : "pop"
      },
      {
         "token" : "constant.numeric",
         "regex" : "([-+]?[\\d.]+)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "(\\{)",
         "push" : "main__1"
      },
      {
         "token" : "keyword",
         "regex" : "(\\b[a-zA-Z][a-zA-Z0-9_]*)"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()",
         "push" : "main__2"
      },
      {
         "token" : "meta.function-call",
         "regex" : "(@(\\b[a-zA-Z][a-zA-Z0-9_]*))"
      },
      {
         "token" : "keyword.operator",
         "regex" : "([=:]|\\|>|<\\|)"
      },
      {
         "token" : "punctuation.definition.array",
         "regex" : "([\\[])",
         "push" : "main__3"
      },
      {
         "token" : "punctuation",
         "regex" : "(,)"
      },
      {
         "token" : "text",
         "regex" : "(\\\")",
         "push" : "main__4"
      },
      {
         "token" : "text",
         "regex" : "(\\')",
         "push" : "main__5"
      },
      {
         "token" : "comment",
         "regex" : "(#.*)"
      },
      {
         "token" : "invalid",
         "regex" : "([^\\s])"
      },
      {
         defaultToken : "text",
      }
   ], 
   "main__4" : [
      {
         "token" : "text",
         "regex" : "(\\\")",
         "next" : "pop"
      },
      {
         "token" : "variable.interpolation",
         "regex" : "(\\$\\{)",
         "push" : "interpolation__1"
      },
      {
         "token" : "text",
         "regex" : "(.)"
      },
      {
         defaultToken : "text",
      }
   ], 
   "main__5" : [
      {
         "token" : "text",
         "regex" : "(\\')",
         "next" : "pop"
      },
      {
         defaultToken : "text",
      }
   ]
   };
   this.normalizeRules();
   };
   /* ------------------------ END ------------------------------ */
   oop.inherits(KyomlHighlightRules, TextHighlightRules);
   exports.KyomlHighlightRules = KyomlHighlightRules;
   });
   