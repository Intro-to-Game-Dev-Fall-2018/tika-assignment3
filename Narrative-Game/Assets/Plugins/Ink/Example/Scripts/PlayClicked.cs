using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayClicked : MonoBehaviour 
{	
	public void GotoMainScene()
    {
	    SceneManager.LoadScene("KimmyScene");
    }
	
	public void GotoMenuScene()
	{
		SceneManager.LoadScene("MenuScene");
	}
	
	public void GotoExitScene()
	{
		SceneManager.LoadScene("Ending");
	}
	
	public void GotoOpeningScene()
	{
		SceneManager.LoadScene("Opening");
	}
}
