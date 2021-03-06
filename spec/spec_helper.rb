ENV["RAILS_ENV"] = "test"
require 'action_controller'
module Rails
  module VERSION
    MAJOR = 2
  end
end unless defined? Rails
RAILS_ROOT = './' unless defined?(RAILS_ROOT)
RAILS_ENV = 'test' unless defined?(RAILS_ENV)

require "simple_navigation_renderers"

# helper method
def fill_in( primary )
  primary.item :news, {icon: "fa fa-fw fa-bullhorn", text: "News"}, "news_index_path"
  primary.item :concerts, "Concerts", "concerts_path", class: "to_check_header", header: true
  primary.item :video, "Video", "videos_path", class: "to_check_split", split: true
  primary.item :info, {icon: "fa fa-fw fa-book", title: "Info"}, "info_index_path", divider: true, split: true do |info_nav|
    info_nav.item :main_info_page, "Main info page", "main_info_page"
    info_nav.item :about_info_page, "About", "about_info_page"
    info_nav.item :misc_info_pages, "Misc.", "misc_info_pages", divider: true, split: true do |misc_nav|
      misc_nav.item :header_misc_pages, "Misc. Pages", header: true
      misc_nav.item :page1, "Page1", "page1"
      misc_nav.item :page2, "Page2", "page2"
    end
    info_nav.item :contact_info_page, "Contact", "contact_info_page", divider: true
  end
end