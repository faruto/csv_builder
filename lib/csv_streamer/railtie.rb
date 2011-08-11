class CsvBuilder::Railtie < Rails::Railtie
  initializer "csv_streamer.register_template_handler.action_view" do
    ActionView::Template.register_template_handler 'csvbuilder', CsvBuilder::StreamingTemplateHandler
  end
end