::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    {
      name:           'text',
      title:          'Text',
      partable_type:  'Spina::Text'
    }, {
      name: 'slideshow',
      title: 'Slideshow',
      partable_type: 'Spina::PhotoCollection'
    }, {
      name: 'cover_image',
      title: 'Cover Image',
      partable_type: 'Spina::Photo'
    }
  ]

  theme.view_templates = [
    {
      name:       'homepage',
      title:      'Homepage',
      page_parts: ['text']
    }, {
      name:         'show',
      title:        'Work',
      description:  'A portfolio page showcasing content in a slideshow',
      usage:        'Use as collection pages for your work',
      page_parts:   ['text', 'slideshow', 'cover_image']
    }, {
      name: 'about',
      title: 'About',
      description: 'A page with contact links and a short bio about you',
      page_parts: ['text']
    }
  ]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]

  theme.navigations = [{
    name: 'mobile',
    label: 'Mobile'  
  }, {
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }]

end
