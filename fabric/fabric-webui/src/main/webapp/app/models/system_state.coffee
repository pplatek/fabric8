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
  "frameworks"
], ->

  class SystemState extends FON.Model
    url: "system/status"

    create_ensemble: (options) ->
      opts = 
        url: "#{@url}/create_ensemble"
        type: "POST"
      options = _.extend opts, options
      $.ajax(options)

    join_ensemble: (options) ->
      opts =
        url: "#{@url}/join_ensemble"
        timeout: 30000
        type: "POST"
        data: JSON.stringify(options)
        contentType: "application/json"
        dataType: "json"        
      options = _.extend opts, options
      $.ajax(options)

  SystemState
