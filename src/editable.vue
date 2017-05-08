<template lang="jade">
span 
  input(v-model="object[field]", v-if="edit", @keyup.enter="edit = !edit")
  span(v-else, @click="edit = !edit") {{object[field]}}
</template>

<script lang="coffee">
module.exports =
  name: 'editable' 
  props: ['object', "field"]
  data: ->
    edit: false
</script>

<style lang="stylus">

</style>