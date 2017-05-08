<template lang="jade">
.scene 
  h3 {{scene.name}}
  editable(:object="scene", field="name")

  ul
    li(v-for="f in scene.features") 
      | {{f.type}}: 
      editable(:object="f", field="value") 
    
</template>

<script lang="coffee">
module.exports =
  name: 'scene' 
  props: ['scene']
  components:
    editable: require './editable.vue'        
</script>

<style lang="stylus">
.scene
  border: 1px solid gray
  margin: 2px
  padding: 2px
</style>