using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Speech.Recognition;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Speech.Synthesis;

namespace Mircophone_Detection_SpeechProg
{
	public partial class Form1 : Form
	{
		private List<string> wordList = new List<string> { "rebel", "rule", "right", "cherry" };
		private Random random = new Random();
		private SpeechSynthesizer speechSynthesizer = new SpeechSynthesizer();
		
		public Form1()
		{
			InitializeComponent();
		}

		private void Form1_Load(object sender, EventArgs e)
		{
			DisplayRandomWord();
		}
		
		public void DisplayRandomWord()
		{
		   
		}
	  

		private void Form1_Load_1(object sender, EventArgs e)
		{

		}

		private void label3_Click(object sender, EventArgs e)
		{

		}

		private void button1_Click(object sender, EventArgs e)
		{
			string wordToSpeak = richTextBox2.Text;
			speechSynthesizer.Speak(wordToSpeak);
		   
		}

		private void button2_Click(object sender, EventArgs e)
		{
			SpeechRecognitionEngine sr = new SpeechRecognitionEngine();
			Grammar words = new DictationGrammar();
			sr.LoadGrammar(words);
			try
			{
				richTextBox3.Text = "Listening Now...";
				sr.SetInputToDefaultAudioDevice();
				RecognitionResult result = sr.Recognize();
				richTextBox3.Clear();
				richTextBox3.Text = result.Text;
			}
			catch
			{
				richTextBox3.Text = "";
				MessageBox.Show("Mic Not Found");

			}
			finally
			{
				sr.UnloadAllGrammars();
			}
		}

		private void trackBar1_Scroll(object sender, EventArgs e)
		{
			speechSynthesizer.Volume = trackBar1.Value;
		}

		private void richTextBox2_TextChanged(object sender, EventArgs e)
		{
			int randomIndex = random.Next(wordList.Count);
			string randomWord = wordList[randomIndex];
			richTextBox2.Text = randomWord;
		}

		

		private void richTextBox3_TextChanged(object sender, EventArgs e)
		{

		}

		private void button3_Click(object sender, EventArgs e)
		{
			string generatedWord = richTextBox2.Text;
			string recognizedWord = richTextBox3.Text.Trim();

			if (generatedWord.Equals(recognizedWord, StringComparison.OrdinalIgnoreCase) )
			{
				MessageBox.Show("Match:Correct!","Validation Result", MessageBoxButtons.OK, MessageBoxIcon.Information);
			}
			else
			{
				MessageBox.Show("Incorrect, please try again", "Validation Result",MessageBoxButtons.OK, MessageBoxIcon.Error);
			}

		}
	}
}
