from pygments.lexer import RegexLexer, bygroups
from pygments.token import *

import re

__all__=['KyomlLexer']

class KyomlLexer(RegexLexer):
    name = 'Kyoml'
    aliases = ['kyoml']
    filenames = ['*.kyo', '*.kyoml']
    flags = re.MULTILINE | re.UNICODE

    tokens = {
        'root' : [
            (u'([-+]?[\\d.]+)', bygroups(Number)),
            (u'(\\{)', bygroups(Punctuation), 'main__1'),
            (u'(\\b[a-zA-Z][a-zA-Z0-9_]*)', bygroups(Keyword)),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()', bygroups(Name.Function), 'main__2'),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*))', bygroups(Name.Function)),
            (u'([=:]|\\|>|<\\|)', bygroups(Operator)),
            (u'([\\[])', bygroups(Punctuation), 'main__3'),
            (u'(,)', bygroups(Punctuation)),
            (u'(\\\")', bygroups(String), 'main__4'),
            (u'(\\\')', bygroups(String), 'main__5'),
            (u'(#.*)', bygroups(Comment)),
            (u'([^\\s\\n\\r])', bygroups(Generic.Error)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'interpolation__1' : [
            ('(\n|\r|\r\n)', String),
            ('.', String.Interpol),
        ], 
        'main__1' : [
            (u'([-+]?[\\d.]+)', bygroups(Number)),
            (u'(\\{)', bygroups(Punctuation), 'main__1'),
            (u'(\\b[a-zA-Z][a-zA-Z0-9_]*)', bygroups(Keyword)),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()', bygroups(Name.Function), 'main__2'),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*))', bygroups(Name.Function)),
            (u'([=:]|\\|>|<\\|)', bygroups(Operator)),
            (u'([\\[])', bygroups(Punctuation), 'main__3'),
            (u'(,)', bygroups(Punctuation)),
            (u'(\\\")', bygroups(String), 'main__4'),
            (u'(\\\')', bygroups(String), 'main__5'),
            (u'(#.*)', bygroups(Comment)),
            (u'([^\\s\\n\\r])', bygroups(Generic.Error)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__2' : [
            (u'([-+]?[\\d.]+)', bygroups(Number)),
            (u'(\\{)', bygroups(Punctuation), 'main__1'),
            (u'(\\b[a-zA-Z][a-zA-Z0-9_]*)', bygroups(Keyword)),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()', bygroups(Name.Function), 'main__2'),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*))', bygroups(Name.Function)),
            (u'([=:]|\\|>|<\\|)', bygroups(Operator)),
            (u'([\\[])', bygroups(Punctuation), 'main__3'),
            (u'(,)', bygroups(Punctuation)),
            (u'(\\\")', bygroups(String), 'main__4'),
            (u'(\\\')', bygroups(String), 'main__5'),
            (u'(#.*)', bygroups(Comment)),
            (u'([^\\s\\n\\r])', bygroups(Generic.Error)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__3' : [
            (u'([-+]?[\\d.]+)', bygroups(Number)),
            (u'(\\{)', bygroups(Punctuation), 'main__1'),
            (u'(\\b[a-zA-Z][a-zA-Z0-9_]*)', bygroups(Keyword)),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*)\\()', bygroups(Name.Function), 'main__2'),
            (u'(@(\\b[a-zA-Z][a-zA-Z0-9_]*))', bygroups(Name.Function)),
            (u'([=:]|\\|>|<\\|)', bygroups(Operator)),
            (u'([\\[])', bygroups(Punctuation), 'main__3'),
            (u'(,)', bygroups(Punctuation)),
            (u'(\\\")', bygroups(String), 'main__4'),
            (u'(\\\')', bygroups(String), 'main__5'),
            (u'(#.*)', bygroups(Comment)),
            (u'([^\\s\\n\\r])', bygroups(Generic.Error)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__4' : [
            (u'(\\$\\{)', bygroups(String.Interpol), 'interpolation__1'),
            (u'(.)', bygroups(String)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__5' : [
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ]
    }

