# -*- coding: utf-8 -*- #

module Rouge
    module Lexers
      class Kyoml < RegexLexer
        title     "kyoml"
        tag       'Kyoml'
        mimetypes 'text/x-kyoml'
        filenames '*.kyo', '*.kyoml'
  
        state:root do
            rule /([-+]?[\d.]+)/, Number
            rule /(\{)/, Punctuation, :main__1
            rule /(\b[a-zA-Z][a-zA-Z0-9_]*)/, Keyword
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*)\()/, Name::Function, :main__2
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*))/, Name::Function
            rule /([=:]|\|>|<\|)/, Operator
            rule /([\[])/, Punctuation, :main__3
            rule /(,)/, Punctuation
            rule /(\")/, String, :main__4
            rule /(\')/, String, :main__5
            rule /(#.*)/, Comment
            rule /([^\s\n\r]/, Generic::Error
            rule /(\n|\r|\r\n)/, String
            rule /./, String
        end
  
        state:interpolation__1 do
            rule /(\n|\r|\r\n)/, String
            rule /./, String.Interpol
        end
  
        state:main__1 do
            rule /([-+]?[\d.]+)/, Number
            rule /(\{)/, Punctuation, :main__1
            rule /(\b[a-zA-Z][a-zA-Z0-9_]*)/, Keyword
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*)\()/, Name::Function, :main__2
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*))/, Name::Function
            rule /([=:]|\|>|<\|)/, Operator
            rule /([\[])/, Punctuation, :main__3
            rule /(,)/, Punctuation
            rule /(\")/, String, :main__4
            rule /(\')/, String, :main__5
            rule /(#.*)/, Comment
            rule /([^\s\n\r]/, Generic::Error
            rule /(\n|\r|\r\n)/, String
            rule /./, String
        end
  
        state:main__2 do
            rule /([-+]?[\d.]+)/, Number
            rule /(\{)/, Punctuation, :main__1
            rule /(\b[a-zA-Z][a-zA-Z0-9_]*)/, Keyword
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*)\()/, Name::Function, :main__2
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*))/, Name::Function
            rule /([=:]|\|>|<\|)/, Operator
            rule /([\[])/, Punctuation, :main__3
            rule /(,)/, Punctuation
            rule /(\")/, String, :main__4
            rule /(\')/, String, :main__5
            rule /(#.*)/, Comment
            rule /([^\s\n\r]/, Generic::Error
            rule /(\n|\r|\r\n)/, String
            rule /./, String
        end
  
        state:main__3 do
            rule /([-+]?[\d.]+)/, Number
            rule /(\{)/, Punctuation, :main__1
            rule /(\b[a-zA-Z][a-zA-Z0-9_]*)/, Keyword
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*)\()/, Name::Function, :main__2
            rule /(@(\b[a-zA-Z][a-zA-Z0-9_]*))/, Name::Function
            rule /([=:]|\|>|<\|)/, Operator
            rule /([\[])/, Punctuation, :main__3
            rule /(,)/, Punctuation
            rule /(\")/, String, :main__4
            rule /(\')/, String, :main__5
            rule /(#.*)/, Comment
            rule /([^\s\n\r]/, Generic::Error
            rule /(\n|\r|\r\n)/, String
            rule /./, String
        end
  
        state:main__4 do
            rule /(\$\{)/, String::Interpol, :interpolation__1
            rule /(.)/, String
            rule /(\n|\r|\r\n)/, String
            rule /./, String
        end
  
        state:main__5 do
            rule /(\n|\r|\r\n)/, String
            rule /./, String
        end
  
      end
    end
  end
  
  