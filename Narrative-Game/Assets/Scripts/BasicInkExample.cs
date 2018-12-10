using System;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Linq;
using Ink.Runtime;
using UnityEngine.SceneManagement;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour
{

	public Font danaFont;
	public Font kimmyFont;
	public Font deanFont;
	public Font jimmyFont;
	public Font donnaFont;
	
	public Sprite danaImage;
	public Sprite kimmyImage;
	public Sprite deanImage;
	public Sprite jimmyImage;
	public Sprite donnaImage;

	public Sprite houseImage;
	public Sprite playgroundImage;
	public Sprite neighborhoodImage;
	public Sprite storeImage;

	private AudioSource myAudioSource;
	public AudioClip mainMenuSound;
	
	private int fontNum;
	private int backgroundNum;
	
	void Awake () {
		// Remove the default message
		RemoveChildren();
		
		myAudioSource = GetComponent<AudioSource>();
		myAudioSource.clip = mainMenuSound;
		fontNum = 0;
		
		StartStory();
	}

	// Creates a new Story object with the compiled story which we can then play!
	void StartStory () {
		story = new Story (inkJSONAsset.text);
		RefreshView();
	}
	
	// This is the main function called every time the story changes. It does a few things:
	// Destroys all the old content and choices.
	// Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
	void RefreshView () {
		// Remove all the UI on screen
		RemoveChildren ();
		
		// Read all the content until we can't continue any more
		while (story.canContinue) {
			// Continue gets the next line of the story
			string text = story.Continue ();
			// This removes any white space from the text.
			text = text.Trim();

			if (text.Contains("Dana:"))
			{
				String result = text.Replace("Dana:", "");
				text = result;
				fontNum = 1;
			}
			
			if (text.Contains("Kimmy:"))
			{
				String result = text.Replace("Kimmy:", "");
				text = result;
				fontNum = 2;
			}
			
			if (text.Contains("Donna:"))
			{
				String result = text.Replace("Donna:", "");
				text = result;
				fontNum = 3;
			}
			
			if (text.Contains("Jimmy:"))
			{
				String result = text.Replace("Jimmy:", "");
				text = result;
				fontNum = 4;
			}
			
			if (text.Contains("Dean:"))
			{
				String result = text.Replace("Dean:", "");
				text = result;
				fontNum = 5;
			}

			// Display the text on screen!
			CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if(story.currentChoices.Count > 0) {

			if (story.currentChoices.Count == 4)
			{
				Choice choice1 = story.currentChoices[0];
				Button button1 = CreateChoiceView4A(choice1.text.Trim ());
				button1.onClick.AddListener (delegate {
					OnClickChoiceButton (choice1);
					
				});
				
				Choice choice2 = story.currentChoices[1];
				Button button2 = CreateChoiceView4B(choice2.text.Trim ());
				button2.onClick.AddListener (delegate {
					OnClickChoiceButton (choice2);
					
				});
				
				Choice choice3 = story.currentChoices[2];
				Button button3 = CreateChoiceView4C(choice3.text.Trim ());
				button3.onClick.AddListener (delegate {
					OnClickChoiceButton (choice3);
					
				});
				
				Choice choice4 = story.currentChoices[3];
				Button button4 = CreateChoiceView4D(choice4.text.Trim ());
				button4.onClick.AddListener (delegate {
					OnClickChoiceButton (choice4);
					
				});
			}
			
			else if (story.currentChoices.Count == 3)
			{
				Choice choice1 = story.currentChoices[0];
				Button button1 = CreateChoiceView3A(choice1.text.Trim ());
				button1.onClick.AddListener (delegate {
					OnClickChoiceButton (choice1);
					
				});
				
				Choice choice2 = story.currentChoices[1];
				Button button2 = CreateChoiceView3B(choice2.text.Trim ());
				button2.onClick.AddListener (delegate {
					OnClickChoiceButton (choice2);
					
				});
				
				Choice choice3 = story.currentChoices[2];
				Button button3 = CreateChoiceView3C(choice3.text.Trim ());
				button3.onClick.AddListener (delegate {
					OnClickChoiceButton (choice3);
					
				});
			
			}
			
			else if (story.currentChoices.Count == 2)
			{
				Choice choice1 = story.currentChoices[0];
				Button button1 = CreateChoiceView2A(choice1.text.Trim ());
				button1.onClick.AddListener (delegate {
					OnClickChoiceButton (choice1);
					
				});
				
				Choice choice2 = story.currentChoices[1];
				Button button2 = CreateChoiceView2B(choice2.text.Trim ());
				button2.onClick.AddListener (delegate {
					OnClickChoiceButton (choice2);
					
				});

			}

			else
			{
				for (int i = 0; i < story.currentChoices.Count; i++) {
					Choice choice = story.currentChoices[i];
				
					Button button = CreateChoiceView (choice.text.Trim ());
				
					// Tell the button what to do when we press it
					button.onClick.AddListener (delegate {
						OnClickChoiceButton (choice);
					
					});
				
				
				}
			}
		}
		// If we've read all the content and there's no choices, the story is finished!
		else {
			SceneManager.LoadScene("Ending");
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	void OnClickChoiceButton (Choice choice)
	{
		if (choice.text.Contains("Neighborhood"))
		{
			backgroundNum = 1;
		}
		
		if (choice.text.Contains("Playground"))
		{
			backgroundNum = 2;
		}
		
		if (choice.text.Contains("Store"))
		{
			backgroundNum = 3;
		}
		
		story.ChooseChoiceIndex (choice.index);
		RefreshView();
	}

	// Creates a button showing the choice text
	void CreateContentView (string text) {
		Text storyText = Instantiate (textPrefab) as Text;
		Image storyImage = Instantiate(imagePrefab) as Image;
		Image backgroundImage = Instantiate(BGimagePrefab) as Image;
		RectTransform panel = Instantiate(panelPrefab) as RectTransform;
		
		storyText.text = text;
		
		if (fontNum == 1)
		{
			storyText.font = danaFont;
			storyText.fontSize = 34;
			storyImage.sprite = danaImage;
			fontNum = 0;
		}
		
		if (fontNum == 2)
		{
			storyText.font = kimmyFont;
			storyText.fontSize = 34;
			storyImage.sprite = kimmyImage;
			fontNum = 0;
		}
		
		if (fontNum == 3)
		{
			storyText.font = donnaFont;
			storyText.fontSize = 29;
			storyImage.sprite = donnaImage;
			fontNum = 0;
		}
		
		if (fontNum == 4)
		{
			storyText.font = jimmyFont;
			storyText.fontSize = 30;
			storyImage.sprite = jimmyImage;
			fontNum = 0;
		}
		
		if (fontNum == 5)
		{
			storyText.font = deanFont;
			storyText.fontSize = 34;
			storyImage.sprite = deanImage;
			fontNum = 0;
		}

		if (backgroundNum == 0)
		{
			backgroundImage.sprite = houseImage;
		}
		
		if (backgroundNum == 1)
		{
			backgroundImage.sprite = neighborhoodImage;
		}
		
		if (backgroundNum == 2)
		{
			backgroundImage.sprite = playgroundImage;
		}
		
		if (backgroundNum == 3)
		{
			backgroundImage.sprite = storeImage;
		}

		backgroundImage.transform.SetParent (canvas.transform, false);
		panel.transform.SetParent (canvas.transform, false);
		StartCoroutine(Breathe(storyText));
		storyText.transform.SetParent (canvas.transform, false);
		storyImage.transform.SetParent (canvas.transform, false);
		storyImage.GetComponent<CanvasRenderer>().SetAlpha(0f);
		storyImage.CrossFadeAlpha(1f, .25f, false);

	}

	// Creates a button showing the choice text
	Button CreateChoiceView (string text) {
     		// Creates the button from a prefab
     		Button choice = Instantiate (buttonPrefab) as Button;
     		
     		choice.transform.SetParent (canvas.transform, false);
     		
     		// Gets the text from the button prefab
     		Text choiceText = choice.GetComponentInChildren<Text> ();
     		choiceText.text = text;
     		
     		// Make the button expand to fit the text
     		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
     		layoutGroup.childForceExpandHeight = false;
     
     		return choice;
     	}
	
	Button CreateChoiceView4A (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (fcaPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView4B (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (fcbPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView4C (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (fccPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView4D (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (fcdPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView3A (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (thcaPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView3B (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (thcbPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView3C (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (thccPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView2A (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (tcaPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
	
	Button CreateChoiceView2B (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (tcbPrefab) as Button;
		
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;
		
		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren () {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}
	
	private IEnumerator Breathe(Text textPart)
	{
		String tmp = textPart.text;
		
		for (int i = 0; i <= tmp.Length; i++)
		{
			
			textPart.text = tmp.Substring(0, i);
			myAudioSource.Play();
			yield return new WaitForSeconds(.04f);
			
		}
	}

	[SerializeField]
	private TextAsset inkJSONAsset;
	private Story story;

	[SerializeField]
	private Canvas canvas;

	// UI Prefabs
	[SerializeField]
	private Text textPrefab;
	[SerializeField]
	private Button buttonPrefab;
	[SerializeField]
	private Image imagePrefab;
	[SerializeField]
	private Image BGimagePrefab;

	[SerializeField] private RectTransform panelPrefab;
	
	
	[SerializeField] private Button fcaPrefab;
	
	[SerializeField] private Button fcbPrefab;
	
	[SerializeField] private Button fccPrefab;
	
	[SerializeField] private Button fcdPrefab;
	
	[SerializeField] private Button thcaPrefab;
	
	[SerializeField] private Button thcbPrefab;
	
	[SerializeField] private Button thccPrefab;
	
	[SerializeField] private Button tcaPrefab;
	
	[SerializeField] private Button tcbPrefab;
}