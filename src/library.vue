<template lang="jade">
.column
  nav.panel
    p.panel-heading Library
    .panel-block: p.control.has-icons-left
      input.input.is-small(type='text',placeholder='search', v-model="filter")
      span.icon.is-small.is-left: i.fa.fa-search
    .panel-tabs
      a.is-active Scenes
      a Effects
      a Music

    draggable(v-model="library.scenes", :options="dragOptions", @start="drag=true",@end="drag=false")
      transition-group
        div(v-for="(scene, i) in filtered_scenes ", :key="i")
          .panel-block 
            span.icon.is-small: i.fa.fa-arrows.gray 
            | {{i}}. {{scene.name}}
</template>

<script lang="coffee">
module.exports =
  name: 'library'

  components:
    scene: require './scene.vue'
    draggable: require 'vuedraggable'
  data: ->
    filter: ''
    library: require "./library.coffee"

  computed:
    
    filtered_scenes: ->
      @library.scenes.filter (scene)=>
        scene.name.toLowerCase().indexOf(@filter.toLowerCase()) >= 0
    
    dragOptions: ->
      group:
        name: 'scenes'
        pull: 'clone'
        put: false  
</script>

<style lang="stylus">
.movie
  width  : auto
  border : 1px solid gray
  margin : 2px
  padding: 2px

.title
  cursor: pointer

pre
  font-size: 10px
  color: gray
</style>