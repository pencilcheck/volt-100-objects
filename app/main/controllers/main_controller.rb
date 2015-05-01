# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store

    def like(job)
    end

    def favorite(job)
    end

    def prepare_holder
      `Holder.run()`
      return
    end

    def index_ready
      Document.ready? do
        # setup semantic ui popup
        `$('*[data-content]').popup();`

        # setup holder in .each block
        `Holder.run()`

        # setup modal
        `$('.ui.modal').modal();`
      end
    end

    def open_login_modal
      `
      $('.login.modal')
        .modal('show')
      ;
      `
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
