<template lang="jade">

.panel-block(style="display:block")

  div(v-if="edit")
    .card
      header.card-header
        .card-header-title
          editable(:object="scene", field="name")
        a.card-header-icon(@click="edit=false"): span.icon: i.fa.fa-close 
      .card-image
        figure.image.is-2by1: img(src="/src/assets/1280x960.png")
      .card-content
        ul
          li(v-for="feature in scene.features")
            span.icon.is-small 
              i.fa(:class="ico(feature.type)")  
            editable(:object="feature", field="value") 
      footer.card-footer

  div.clickable(@click="edit = !edit", v-else)
    span.icon.is-small: i.fa.fa-arrows.gray
    | {{scene.name}}    
</template>

<script lang="coffee">
module.exports =
  name: 'scene' 
  props: ['scene']
  methods:
    ico: (type)->
      switch type
        when "image" then "fa-picture-o"
        when "text"  then "fa-font"
        else "fa-pencil-square-o"
  components:
    editable: require './editable.vue'
  data:->
    edit: false
</script>

<style lang="stylus">
  .clickable
    cursor pointer
  .gray
    color #CCC
</style>