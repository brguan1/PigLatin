public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
	if (sWord.length() > 0) //precondition: sWord is a valid String of length greater than 0.}
		if (sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u"))
      		return 1;  //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	return -1;
}
}

public String pigLatin(String sWord)
{
	if (sWord.length() > 0) //precondition: sWord is a valid String of length greater than 0
		{
			if(findFirstVowel(sWord) == -1) //postcondition: returns the pig latin equivalent of sWord
			{
				if(sWord.substring(0,2).equals("qu"))
					return sWord.substring(2,sWord.length()) + "quay";
				else {
				 for (int i=1; i<sWord.length(); i++)
  				 {
    				if (true == sWord.substring(i,i+1).equals("a") || true == sWord.substring(i,i+1).equals("e") || true == sWord.substring(i,i+1).equals("i") || true == sWord.substring(i,i+1).equals("o") || true == sWord.substring(i,i+1).equals("u"))
    				  return sWord.substring(i,sWord.length()) + sWord.substring(0,i) + "ay";

  				 }
  				 return sWord + "ay"; 
  				 }
			}
			else if(findFirstVowel(sWord) == 1)
			{
				return sWord + "way";
			}
			else
			{
				return "ERROR!";
			}
		}   
		return "ERROR!";
}