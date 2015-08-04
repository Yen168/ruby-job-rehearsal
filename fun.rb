puts ->(){

	add_maker = ->(x){

		->(y){x+y}
	}

	mul_maker = ->(x){

		->(y){x*y}

	}

	con_fun = ->(x,y){

		->(g){x[y[g]]}

	}

	
	add1 = add_maker[1]
	add1[2]

	mul3 = mul_maker[3]
	mul3[2]

	add1mul3 = con_fun[mul3,add1]
	add1mul3[2]
	
	 ->(x,y){->(g){x[y[g]]}}[->(x){->(y){x*y}}[3],->(x){->(y){x+y}}[1]][2]
	

	}.()
