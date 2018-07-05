class DemosController < ApplicationController

  before_filter :find_head_and_external_id

  def index
    set_ivars
    render :index, layout: 'demo'
  end

  def show
    render params[:id], layout: 'demo'
  end

  private

  def find_head_and_external_id
    @external_id = params[:head]
    @head = @external_id ? Head.find_by_external_id(@external_id) : Head.random_default
    @head_id_message = head_id_message.html_safe
  end

  def set_ivars
    @easy_setup = render_html_string('easy_setup')
    @master_setup = render_html_string('master_setup')
    @advanced_js = render_js_string('advanced_setup')
    @opacity_js = render_js_string('opacity')
    @opacity_init_js = render_js_string('opacity_init')
    @other_parent_js = render_js_string('other_parent')
    @multi_heads_js = render_js_string('multi_heads')
    @head_id_message = head_id_message
  end

  def head_id_message
    if @external_id
      "'#{@external_id}' is your head's id"
    else
      "replace '#{@head.external_id}' with your head's id"
    end
  end

  def render_html_string(name)
    render_escaped_string(name, 'html')
  end

  def render_js_string(name)
    render_escaped_string(name, 'js')
  end

  def render_escaped_string(name, type)
    str = render_to_string("demos/js/#{name}.#{type}.erb", layout: nil)
    CGI.escapeHTML(str).html_safe
  end

end
