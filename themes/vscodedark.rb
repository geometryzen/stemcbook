require 'rouge' unless defined? ::Rouge.version

module Rouge
    module Themes
      class VSCodeDark < CSSTheme
        name 'vscodedark'
  
        palette :purple         => '#766DAF'
        palette :lpurple        => '#9f93e6'
        palette :orange         => '#FAAF4C'
        palette :green          => '#3FB34F'
        palette :lgreen         => '#41ff5b'
        palette :yellow         => '#FFFF00'
        palette :black          => '#000000'
        palette :gray           => '#6D6E70'
        palette :red            => '#CC0000'
        palette :dark_purple    => '#231529'
        palette :lunicorn       => '#faf8ed'
        palette :white          => '#FFFFFF'
        palette :earth          => '#181a27'
        palette :dune           => '#fff0a6'    # pale yellow used for function names.
        palette :blue           => '#6699FF'    # import, from, const, function, try, catch, class, extends 
  
        style Text, :fg => :white, :bg => :dark_purple
  
        style Comment, :fg => :gray, :italic => true
        style Comment::Preproc, :fg => '#cccccc', :bold => true
        style Error, Generic::Error, :fg => :white, :bg => :red
        style Generic::Deleted, :fg => :red
        style Generic::Inserted, :fg => :green
        style Generic::Emph, :italic => true
        style Generic::Lineno, :fg => '#aaaaaa'
        style Generic::Strong, :bold => true
        style Generic::Traceback, :fg => :white, :bg => :purple
        style Keyword, :fg => '#c586c0', :bold => false
        style Keyword::Constant, :fg => :blue, :bold => true
        style Keyword::Namespace, Keyword::Pseudo, Keyword::Reserved, Generic::Heading, Generic::Subheading, :fg => :white, :bold => true
        style Keyword::Type, :fg => :orange, :bold => true
        style Name::Class, :fg => '#4ec9b0', :bold => true
        style Name::Constant,
              Name::Decorator,
              Name::Namespace,
              Name::Builtin::Pseudo,
              Name::Exception, :fg => :orange, :bold => true
        style Name::Label,
              Name::Tag, :fg => :lpurple, :bold => true
        style Literal::Number, :fg => '#cda869'
        style Literal::Date,
              Literal::String::Symbol, :fg => :lpurple, :bold => true
        style Literal::String, :fg => :dune, :bold => true
        style Literal::String::Affix, :fg => :yellow, :bold => true
        style Literal::String::Escape,
              Literal::String::Char,
              Literal::String::Interpol, :fg => :orange, :bold => true
        style Literal::String::Delimiter, :fg => '#ce9178'
        style Literal::String::Double, :fg => '#ce9178'
        style Literal::String::Single, :fg => '#ce9178'
        style Operator, :fg => '#9e9efa'
        style Name::Builtin, :fg => '#cccccc', :bold => true
        style Name::Entity, :fg => '#999999', :bold => true
        style Name::Function, :fg => :dune, :bold => true
        style Text::Whitespace, :fg => '#BBBBBB'
        style Name::Other, :fg => '#569cd6', :bold => true
        style Name::Property, Name::Attribute, :fg => '#9cdcfe'
        style Name::Variable, :fg => :lgreen, :bold => true
        style Punctuation, :fg => '#e2e2e2'
      end
    end
  end