public class StrArrayOps {

	fun string pop(string list[], int index){
		//returns the string value at the specified index
		return list[index];
	}

	fun int isin(string x[], string value){
		//check for membership
		//is the specified string value contained in test array
		0 => int result;
		for(0 => int index; index < x.cap(); index++){
			if ( x[index] == value ){
				1 => result;
				break;
			}
		}
		return result;
	}

	fun string[] append(string list[], string value){
		//append a string to the end of an array
		list.cap() => int length;
		string appended[length + 1];
		for(0 => int i; i < list.cap(); i++){
			list[i] => appended[i];
		}
		value => appended[length];
		return appended;
	}

	fun string[] reverse(string list[]){
		//reverse an array of integer
		string temp;
		list.cap() => int length;
		for(0 => int i; i < length / 2; i++){
			list[i] => temp;
			list[length - i - 1] => list[i];
			temp => list[length - i - 1];
		}
		return list;
	}

	fun string[] slice(string list[], int start, int stop){
		//slice an array at the specified indices
		//returns a slice from the start up to but not including the stop index
		string sliced[stop-start];
		0 => int j;
		start => int i; 
		while(i < stop){
			list[i] => sliced[j];
			i + 1 => i;
			j + 1 => j;
		}
		return sliced;	
	}

	fun string[] insert(string list[], int index, string value){
		//insert a string value at the specified index
		list.cap() + 1 => int length;
		string inserted[length];
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
		
	fun string[] bubble(string list[]){
	//bubble sort algorithm, slow but enough for tiny datasets
		string temp;
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

    fun string[] shuffle(string list[]){
    //randomize the sequence of an array of strings
    	list.cap() => int length;
    	string shuffled[length];
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

	fun string[] shifter(string list[]){
		//shift an array of integers by n indices
		list[0] => string tail;
		for(0 => int i; i < list.cap()-1; i++){
			list[i+1] => list[i];
		}
		tail => list[list.cap() - 1];
		return list;
	}
	
	fun string[] shift(string list[], int iter){
		for(0 => int i; i < iter; i++){
			shifter(list);
		}
		return list;
	}	
}

//StrArrayOps Test
StrArrayOps ops;
["I", "Love", "Python", "More", "Than", "Chuck"] @=> string textstuff[];
ops.shift(textstuff, 3) @=> string operation[];
 for(0 => int i; i < operation.cap(); i++){
 	<<< operation[i] >>>;
 }
