<template lang="jade">
.feature_text
  | Название сцены:
  input(v-model="_name")
</template>

<script lang="coffee">
module.exports =
  name: 'feature_text'
  props: ['name']
  data: ->
    _name: ''
</script>

<style lang="stylus">
.feature_text
  border: 1px solid gray
  margin: 2px
  padding: 2px
</style>