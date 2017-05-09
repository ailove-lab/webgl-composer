<template lang="jade">
.column
  nav.panel
    //- p.panel-heading
      editable(:object="movie", field="name")
      //- span.tag.is-dark {{movie.scenes.length}} scenes
    draggable(v-model="movie.scenes", :options="dragOptions" @start="drag=true",@end="drag=false")
      transition-group
        scene(v-for="scene in movie.scenes", :scene="scene", :key="scene.id")
        //- effect(v-for="effect in movie.effects", :effect="effect", :key="effect.id")
</template>

<script lang="coffee">
module.exports =

  name: 'movie'
  props: ['movie']

  components:
    scene: require './scene.vue'
    effect: require './effect.vue'
    editable: require './editable.vue'
    draggable: require 'vuedraggable'
  
  computed:
    dragOptions: ->
      group:
        name: 'scenes'
        animation: 0.5,
        ghostClass: 'ghost'
    
  methods:
    addScene: ->
      id = @movie.scenes.length + 1
      @movie.scenes.push
        name: "Scene #{id}"
        features: [
          type: "text", value: "text #{id}"
        ,
          type: "image", value: "image #{id}"
        ]
</script>

<style lang="stylus">
.ghost
  opacity 0.5
</style>