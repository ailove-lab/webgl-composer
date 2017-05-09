<template lang="jade">
span 
  input.input.is-small(
    v-if="focused", 
    type='text', 
    v-model="object[field]",
    v-focus="focused",
    autofocus,
    @focus="focused=true",
    @blur="focused=false", 
    @keyup.enter="edit_off()")
  span.editable(v-else, @click="edit_on()") 
    | {{object[field]}}
    span.icon.is-small: i.fa.fa-pencil.gray
</template>

<script lang="coffee">
module.exports =
  name: 'editable'
  directives: 
    focus: 
      inserted: (el)->el.focus()
  props: ['object', "field"]
  methods:
    edit_off: -> @focused=false
    edit_on: -> @focused = true
  data: ->
    focused: false
</script>

<style lang="stylus">
.editable
	cursor: pointer
</style>