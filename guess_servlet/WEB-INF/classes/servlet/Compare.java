package servlet;

public class Compare {
	public static String compare(String guess, int random){
		String result = "";

		try{
			int guessN=Integer.parseInt(guess);
			if(guessN>100||guessN<1)
				result = "outRange.jsp";
			else if(guessN>random)
				result =  "large.jsp";
			else if(guessN<random)
				result = "small.jsp";
			else if(guessN==random)
				result =  "success.jsp";
		}catch(NumberFormatException nfe){
			result = "error.jsp";
		}
		
		return result;
	}
}
