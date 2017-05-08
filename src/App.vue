<template lang="jade">
#app
  h4 {{name}}
  movie(:movie='movie')
</template>

<script lang="coffee">
 
movie = require "./test_movie.coffee" 

module.exports = 
  name: 'app'
  data: ->
    name: 'Video editor'
    movie: movie
  components:
    movie: require './movie.vue'
</script>

<style lang="stylus">
</style>
