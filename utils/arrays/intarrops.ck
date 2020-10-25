// Integer Array Operations
public class IntArrayOps {

	fun int pop(int list[], int index){
		//returns the integer value at the specified index
		return list[index];
	}

	fun int isin(int x[], int value){
		//check for membership
		//is the specified integer value contained in test array
		0 => int result;
		for(0 => int index; index < x.cap(); index++){
			if ( x[index] == value ){
				1 => result;
				break;
			}
		}
		return result;
	}

	fun int[] append(int list[], int value){
		//append an integer to the end of an array
		list.cap() => int length;
		int appended[length + 1];
		for(0 => int i; i < list.cap(); i++){
			list[i] => appended[i];
		}
		value => appended[length];
		return appended;
	}

	fun int[] reverse(int list[]){
		//reverse an array of integer
		int temp;
		list.cap() => int length;
		for(0 => int i; i < length / 2; i++){
			list[i] => temp;
			list[length - i - 1] => list[i];
			temp => list[length - i - 1];
		}
		return list;
	}

	fun int[] slice(int list[], int start, int stop){
		//slice an array at the specified indices
		//returns a slice from the start up to but not including the stop index
		int sliced[stop-start];
		0 => int j;
		start => int i; 
		while(i < stop){
			list[i] => sliced[j];
			i + 1 => i;
			j + 1 => j;
		}
		return sliced;	
	}

	fun int[] insert(int list[], int index, int value){
		//insert a float value at the specified index
		list.cap() + 1 => int length;
		int inserted[length];
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
		
	fun int[] bubble(int list[]){
	// bubble sort algorithm
		int temp;
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

    fun int[] shuffle(int list[]){
    //randomize the sequence of an array of integers
    	list.cap() => int length;
    	int shuffled[length];
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

	fun int[] shifter(int list[]){
		//shift an array of integers by n indices
		list[0] => int tail;
		for(0 => int i; i < list.cap()-1; i++){
			list[i+1] => list[i];
		}
		tail => list[list.cap() - 1];
		return list;
	}
	
	fun int[] shift(int list[], int iter){
		for(0 => int i; i < iter; i++){
			shifter(list);
		}
		return list;
	}
		
}

IntArrayOps ops;
ops.shift([1, 2, 3, 4, 5], 2) @=> int shifted[];
for(0 => int i; i < shifted.cap(); i++){
	<<< shifted[i] >>>;
}
