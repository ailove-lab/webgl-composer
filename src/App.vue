<template lang="jade">
#app
  nav.nav.has-shadow
    .nav-left
      .nav-item
        span.icon: i.fa.fa-video-camera
        h1.subtitle Ailove.Lab
    .nav-right
      a.nav-item Some
      a.nav-item Links
  .section
    .container
      .columns
        
        .column.is-two-thirds
          h1.title: editable(:object="movie", field='name')
          movie(:movie='movie')
        
        .column
          h1.title Library
          library
    .container
      pre {{movie}}
</template>

<script lang="coffee">
console.log "APP"
id=0
test_scene = ->
  id: "scene_#{id++}"
  name: "Scene #{id}"
  features: [
    type: 'text'
    value: "text #{id}"
  ,
    type: 'image'
    value: 'example.jpg'
  ]
test_effect = ->
  id: "effect_#{id++}"
  name: "effect #{id}"
test_movie = ->
  name: 'Test movie'
  scenes: (test_scene() for i in [1..3])
  effects: (test_effect() for i in [1..2])

module.exports = 
  name: 'app'
  data: ->
    name: 'Video editor'
    movie: test_movie()
  components:
    editable: require './editable.vue'
    movie: require './movie.vue'
    library: require './library.vue'
</script>

<style lang="stylus">
pre
  font-size: 10px
  color: gray
</style>
