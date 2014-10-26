package bean;

public class GuessBean {
	private int count;
	private String guess;
	private int random;

	public int getRandom() {
		return random;
	}

	public void setRandom(int random) {
		this.random = random;
	}

	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getGuess() {
		return guess;
	}
	
	public void setGuess(String guess) {
		this.guess = guess;
	}
	
	public void Initial(){
		count = 0 ;
		random = (int)(Math.random()*100)+1;
	}
	
	public String compare(){
		String result="";
		count++;
		try{
			int guessN=Integer.parseInt(guess);
			if(guessN>100||guessN<1)
				result = "outRange.jsp";
			else if(guessN>random)
				result = "large.jsp";
			else if(guessN<random)
				result =  "small.jsp";
			else if(guessN==random)
				result = "success.jsp";
		}catch(NumberFormatException nfe){
			result = "error.jsp";
		}
		
		return result;
	}
}
