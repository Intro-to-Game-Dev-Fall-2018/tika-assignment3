using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;

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

	private AudioSource myAudioSource;
	public AudioClip sound1;
	public AudioClip sound2;
	
	private int fontNum;

	private int count;
	
	void Awake () {
		// Remove the default message
		RemoveChildren();
		
		myAudioSource = GetComponent<AudioSource>();
		fontNum = 0;
		count = 0;
		
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
				fontNum = 1;
			}
			
			if (text.Contains("Kimmy:"))
			{
				fontNum = 2;
			}
			
			if (text.Contains("Donna:"))
			{
				fontNum = 3;
			}
			
			if (text.Contains("Jimmy:"))
			{
				fontNum = 4;
			}
			
			if (text.Contains("Dean:"))
			{
				fontNum = 5;
			}
			
			
			// Display the text on screen!
			CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if(story.currentChoices.Count > 0) {
			for (int i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
				Button button = CreateChoiceView (choice.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice);
					
				});
				
				
			}
		}
		// If we've read all the content and there's no choices, the story is finished!
		else {
			Button choice = CreateChoiceView("End of story.\nRestart?");
			choice.onClick.AddListener(delegate{
				StartStory();
			});
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	void OnClickChoiceButton (Choice choice)
	{
		count++;

		if (count % 2 == 0)
		{
			myAudioSource.clip = sound2;
		}

		else
		{
			myAudioSource.clip = sound1;
		}  
		
		myAudioSource.Play();
		
		story.ChooseChoiceIndex (choice.index);
		RefreshView();
	}

	// Creates a button showing the choice text
	void CreateContentView (string text) {
		Text storyText = Instantiate (textPrefab) as Text;
		Image storyImage = Instantiate(imagePrefab) as Image;
		
		storyText.text = text;
		
		if (fontNum == 1)
		{
			storyText.font = danaFont;
			storyImage.sprite = danaImage;
			fontNum = 0;
		}
		
		if (fontNum == 2)
		{
			storyText.font = kimmyFont;
			storyImage.sprite = kimmyImage;
			fontNum = 0;
		}
		
		if (fontNum == 3)
		{
			storyText.font = donnaFont;
			storyImage.sprite = donnaImage;
			fontNum = 0;
		}
		
		if (fontNum == 4)
		{
			storyText.font = jimmyFont;
			storyImage.sprite = jimmyImage;
			fontNum = 0;
		}
		
		if (fontNum == 5)
		{
			storyText.font = deanFont;
			storyImage.sprite = deanImage;
			fontNum = 0;
		}
		
		storyText.transform.SetParent (canvas.transform, false);
		storyImage.transform.SetParent (canvas.transform, false);
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

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren () {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
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
}