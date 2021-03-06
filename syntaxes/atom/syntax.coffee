'fileTypes' : [
  'kyo'
  'kyoml'
]
'name' : 'kyoml'
'patterns' : [
  {
    'include' : '#main'
  }
]
'scopeName' : 'source.kyoml'
'uuid' : ''
'repository' : {
  'main' : {
    'patterns' : [
      {
        'match' : '([-\\x{002b}]?[\\d.]+)'
        'name' : 'constant.numeric.kyoml'
      }
      {
        'begin' : '(\\{)'
        'beginCaptures' : {
          '1' : {
            'name' : 'punctuation.definition.array.kyoml'
          }
        }
        'patterns' : [
          {
            'include' : '#main__1'
          }
        ]
        'end' : '(\\})'
        'endCaptures' : {
          '1' : {
            'name' : 'punctuation.definition.array.kyoml'
          }
        }
      }
      {
        'match' : '(\\b[a-zA-Z][a-zA-Z0-9_]*)'
        'name' : 'keyword.kyoml'
      }
      {
        'begin' : '(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()'
        'beginCaptures' : {
          '1' : {
            'name' : 'meta.function-call.kyoml'
          }
        }
        'patterns' : [
          {
            'include' : '#main__2'
          }
        ]
        'end' : '(\\))'
        'endCaptures' : {
          '1' : {
            'name' : 'meta.function-call.kyoml'
          }
        }
      }
      {
        'match' : '(@(\\b[a-zA-Z][a-zA-Z0-9_]*))'
        'name' : 'meta.function-call.kyoml'
      }
      {
        'match' : '([\\x{003d}\\x{003a}]|\\|>|<\\|)'
        'name' : 'keyword.operator.kyoml'
      }
      {
        'begin' : '([\\[])'
        'beginCaptures' : {
          '1' : {
            'name' : 'punctuation.definition.array.kyoml'
          }
        }
        'patterns' : [
          {
            'include' : '#main__3'
          }
        ]
        'end' : '([\\]])'
        'endCaptures' : {
          '1' : {
            'name' : 'punctuation.definition.array.kyoml'
          }
        }
      }
      {
        'match' : '(,)'
        'name' : 'punctuation.kyoml'
        'comment' : 'general punctuation'
      }
      {
        'begin' : '(\\")'
        'beginCaptures' : {
          '1' : {
            'name' : 'text.kyoml'
          }
        }
        'patterns' : [
          {
            'include' : '#main__4'
          }
        ]
        'end' : '(\\")'
        'endCaptures' : {
          '1' : {
            'name' : 'text.kyoml'
          }
        }
      }
      {
        'begin' : '(\\\')'
        'beginCaptures' : {
          '1' : {
            'name' : 'text.kyoml'
          }
        }
        'contentName' : 'text.kyoml'
        'end' : '(\\\')'
        'endCaptures' : {
          '1' : {
            'name' : 'text.kyoml'
          }
        }
      }
      {
        'match' : '(#.*)'
        'name' : 'comment.kyoml'
        'comment' : 'comments'
      }
      {
        'match' : '([^\\s])'
        'name' : 'invalid.kyoml'
      }
    ]
  }
  'interpolation' : {
    'patterns' : [
      {
        'begin' : '(\\$\\{)'
        'beginCaptures' : {
          '1' : {
            'name' : 'variable.interpolation.kyoml'
          }
        }
        'contentName' : 'variable.interpolation.kyoml'
        'end' : '(\\})'
        'endCaptures' : {
          '1' : {
            'name' : 'variable.interpolation.kyoml'
          }
        }
      }
    ]
  }
  'interpolation__1' : {
    'patterns' : [
    ]
  }
  'main__1' : {
    'patterns' : [
      {
        'include' : '#main'
      }
    ]
  }
  'main__2' : {
    'patterns' : [
      {
        'include' : '#main'
      }
    ]
  }
  'main__3' : {
    'patterns' : [
      {
        'include' : '#main'
      }
    ]
  }
  'main__4' : {
    'patterns' : [
      {
        'include' : '#interpolation'
      }
      {
        'match' : '(.)'
        'name' : 'text.kyoml'
      }
    ]
  }
  'main__5' : {
    'patterns' : [
    ]
  }
}
