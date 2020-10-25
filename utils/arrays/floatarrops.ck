// Float Array Operations
public class FloatArrayOps {

	fun float pop(float list[], int index){
		//returns the float  value at the specified index
		return list[index];
	}

	fun int isin(float x[], float value){
		//check for membership
		//is the specified float value contained in test array
		0 => int result;
		for(0 => int index; index < x.cap(); index++){
			if ( x[index] == value ){
				1 => result;
				break;
			}
		}
		return result;
	}

	fun float[] append(float list[], float value){
		//append a float to the end of an array
		list.cap() => int length;
		float appended[length + 1];
		for(0 => int i; i < list.cap(); i++){
			list[i] => appended[i];
		}
		value => appended[length];
		return appended;
	}

	fun float[] reverse(float list[]){
		//reverse an array of integer
		float temp;
		list.cap() => int length;
		for(0 => int i; i < length / 2; i++){
			list[i] => temp;
			list[length - i - 1] => list[i];
			temp => list[length - i - 1];
		}
		return list;
	}

	fun float[] slice(float list[], int start, int stop){
		//slice an array at the specified indices
		//returns a slice from the start up to but not including the stop index
		float sliced[stop-start];
		0 => int j;
		start => int i; 
		while(i < stop){
			list[i] => sliced[j];
			i + 1 => i;
			j + 1 => j;
		}
		return sliced;	
	}

	fun float[] insert(float list[], int index, float value){
		//insert a float value at the specified index
		list.cap() + 1 => int length;
		float inserted[length];
		0 => int j;
		0 => int i;
		while(i < list.cap()){
			if(i == index){
				value => inserted[index];
				j + 1 => j;
			}			
			list[i] => inserted[j];
			j + 1 => j;
			i + 1 => i;
		}
		return inserted;
	}
		
	fun float[] bubble(float list[]){
		//bubble sort algorithm, slow but enough for tiny datasets
		float temp;
		list.cap()-1 => int range;
		for(range => int index; index > 0; index--){
			for(0 => int i; i < index; i++){
				if(list[i] > list[i+1]){
					list[i] => temp;
					list[i+1] => list[i];
					temp => list[i+1];
				}
			}
		}
		return list;	
    }

    fun float[] shuffle(float list[]){
   		 //randomize the sequence of an array of floats
    	list.cap() => int length;
    	float shuffled[length];
    	for(0 => int i; i < length; i++){
    		while(true){
    			Math.random2(0, length-1) => int index;
    			if(isin(shuffled, list[index])){ 
    				continue; 
    				}
    			else{
    				list[index] => shuffled[i];
    				break;
    			}
    		}
    	}
    	return shuffled;
    }

	fun float[] shifter(float list[]){
		//shift an array of integers by n indices
		list[0] => float tail;
		for(0 => int i; i < list.cap()-1; i++){
			list[i+1] => list[i];
		}
		tail => list[list.cap() - 1];
		return list;
	}
	
	fun float[] shift(float list[], int iter){
		for(0 => int i; i < iter; i++){
			shifter(list);
		}
		return list;
	}
		
}

// Test FloatarrayOps
FloatArrayOps ops;
[0.1, 0.2, 0.3, 0.4, 0.5] @=> float numbers[];
ops.shift(numbers, 2) @=> float operation[];
 for(0 => int i; i < operation.cap(); i++){
 	<<< operation[i] >>>;
 }
