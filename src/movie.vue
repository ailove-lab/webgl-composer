<template lang="jade">
.movie

  editable(:object="movie", field="name")

  scene(v-for="scene in movie.scenes", :scene="scene", :key="scene.id")
  button(v-on:click="addScene") +
  pre {{movie.scenes}}
</template>

<script lang="coffee">
module.exports =
  name: 'movie'
  props: ['movie']
  data: ->
    name_edit: false
  components:
    scene: require './scene.vue'
    editable: require './editable.vue'
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
.movie
  border: 1px solid gray
  margin: 2px
  padding: 2px
.title
  cursor: pointer
pre
  font-size: 10px
  color: gray
</style>