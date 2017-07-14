test 'Features'

t = {:val => 1, :nils => {:bedre => 2}, 'string' => 5}

t.to_dot

is t, :a? => Hash
is t.val, 1

t.val = 2
is t.val, 2

is t[:val], 2

is t.nils, :a? => Hash
is t.nils.bedre, 2

t.nils.bedre = 3
is t.nils.bedre, 3

is t.nils.what, nil

is t.string, 5
