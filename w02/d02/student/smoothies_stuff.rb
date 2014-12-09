# array of strings

smoothie_ingredients = [
  'flax seeds',
  'chia seeds',
  'coconut flakes',
  'spirulina',
  'pumpkin seeds',
  'oatmeal',
  'coco powder',
  'peanut butter',
  'almonds',
  'walnuts',
  'spinach',
  'greek yogurt',
  'nutrional yeast',
  'brussel sprouts',
  'asparagus',
  'kale',
  'brocoli rabe',
  'blue berries',
  'chopped banana',
  'straw berries',
  'mango',
  'hemp milk'
]

# hash

smoothie_ingredients = {
  'flax seeds'      => '1 tbsp',
  'chia seeds'      => '1 tbsp',
  'coconut flakes'  => '1 tbsp',
  'spirulina'       => '1 tsp',
  'pumpkin seeds'   => '1 tbsp',
  'oatmeal'         => '0.25 cup',
  'coco powder'     => '1 tbsp',
  'peanut butter'   => '1 tbsp',
  'almonds'         => '0.25 cup',
  'walnuts'         => '0.25 cup',
  'spinach'         => '0.25 cup',
  'greek yogurt'    => '0.25 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '0.25 cup',
  'asparagus'       => '0.25 cup',
  'kale'            => '0.25 cup',
  'brocoli rabe'    => '0.25 cup',
  'blue berries'    => '0.25 cup',
  'chopped banana'  => '0.5 cup',
  'straw berries'   => '0.25 cup',
  'mango'           => '0.25 cup',
  'hemp milk'       => '1 cup'
}

#array of hashes

smoothie_ingredients = [
  { :name => 'flax seeds',      :amount => '1 tbsp'   },
  { :name => 'chia seeds',      :amount => '1 tbsp'   },
  { :name => 'coconut flakes',  :amount => '1 tbsp'   },
  { :name => 'spirulina',       :amount => '1 tsp'    },
  { :name => 'pumpkin seeds',   :amount => '1 tbsp'   },
  { :name => 'oatmeal',         :amount => '0.25 cup' },
  { :name => 'coco powder',     :amount => '1 tbsp'   },
  { :name => 'peanut butter',   :amount => '1 tbsp'   },
  { :name => 'almonds',         :amount => '0.25 cup' },
  { :name => 'walnuts',         :amount => '0.25 cup' },
  { :name => 'spinach',         :amount => '0.25 cup' },
  { :name => 'greek yogurt',    :amount => '0.25 cup' },
  { :name => 'nutrional yeast', :amount => '1 tbsp'   },
  { :name => 'brussel sprouts', :amount => '0.25 cup' },
  { :name => 'asparagus',       :amount => '0.25 cup' },
  { :name => 'kale',            :amount => '0.25 cup' },
  { :name => 'brocoli rabe',    :amount => '0.25 cup' },
  { :name => 'blue berries',    :amount => '0.25 cup' },
  { :name => 'chopped banana',  :amount => '0.5 cup'  },
  { :name => 'straw berries',   :amount => '0.25 cup' },
  { :name => 'mango',           :amount => '0.25 cup' },
  { :name => 'hemp milk',       :amount => '1 cup'    }
]

# array of nested hashes

smoothie_ingredients = [
  { :name => 'flax seeds',      :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'chia seeds',      :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'coconut flakes',  :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'spirulina',       :measurement => { :amount => 1,    :unit => "tsp"  }},
  { :name => 'pumpkin seeds',   :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'oatmeal',         :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'coco powder',     :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'peanut butter',   :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'almonds',         :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'walnuts',         :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'spinach',         :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'greek yogurt',    :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'nutrional yeast', :measurement => { :amount => 1,    :unit => "tbsp" }},
  { :name => 'brussel sprouts', :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'asparagus',       :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'kale',            :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'brocoli rabe',    :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'blue berries',    :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'chopped banana',  :measurement => { :amount => 0.5,  :unit => "cup"  }},
  { :name => 'straw berries',   :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'mango',           :measurement => { :amount => 0.25, :unit => "cup"  }},
  { :name => 'hemp milk',       :measurement => { :amount => 1,    :unit => "cup"  }}
]
