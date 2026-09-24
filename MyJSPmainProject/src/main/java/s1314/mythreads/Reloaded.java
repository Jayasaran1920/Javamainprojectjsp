package s1314.mythreads;

import s1314.myclasses.Data;


public class Reloaded implements Runnable{
	
	Data d;
	
	
	public Reloaded(Data d)
	{
		this.d=d;
	}
	@Override
	public void run()
	{
		synchronized(d)
		{
		d.reload();
		}
	}
	
	}
