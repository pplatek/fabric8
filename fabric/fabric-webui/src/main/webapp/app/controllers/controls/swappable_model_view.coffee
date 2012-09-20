###
 Copyright 2010 Red Hat, Inc.

 Red Hat licenses this file to you under the Apache License, version
 2.0 (the "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 implied.  See the License for the specific language governing
 permissions and limitations under the License.
###

define [
  "models/app"
  "views/jade"
], (app, jade) ->

  class SwappableModelView extends FON.TemplateController

    initialize: ->
      super
      @state = new FON.Model
      @state.set
        model: @model

      @model.bind @render_on(), @do_render, @
      @state.bind "change:model", @model_changed, @

    render_on: -> "change"

    model_changed: ->
      if @model
        @model.unbind @render_on(), @do_render, @
      @model = @state.get "model"
      if @model
        @model.bind @render_on(), @do_render, @

    set_model: (model) ->
      @state.set
        model: model


  window.FON.SwappableModelView = SwappableModelView
  SwappableModelView