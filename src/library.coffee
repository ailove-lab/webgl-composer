module.exports =   
  scenes: [
    id: "libscene_01"
    name: 'Intro' 
    features: [
      type: 'text'
      value: 'my text'
    , 
      type: 'image'
      value: 'example.jpg'
    ]
  ,
    id: "libscene_02"  
    name: 'Image with caption' 
    features: [
      type: 'text'
      value: 'my text'
    ,
      type: 'image'
      value: 'example.jpg'
    ]
  ,
    id: "libscene_03"  
    name: 'Call to action', 
    features: [
      type: 'text'
      value: 'my text'
    ]
  ,
    id: "libscene_04"  
    name: 'Logo', 
    features: [
      type: 'text'
      value: 'text'
    ,
      type: 'image'
      value: 'logo.png'
    ]
  ] # scenes

  effects: [
    id: "libeffect_01"    
    name: 'glitch'
  ,
    id: "libeffect_02"  
    name: 'sepia'
  ]
