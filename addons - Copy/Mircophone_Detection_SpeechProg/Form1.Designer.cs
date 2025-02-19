namespace Mircophone_Detection_SpeechProg
{
	partial class Form1
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.label2 = new System.Windows.Forms.Label();
			this.richTextBox2 = new System.Windows.Forms.RichTextBox();
			this.richTextBox3 = new System.Windows.Forms.RichTextBox();
			this.button1 = new System.Windows.Forms.Button();
			this.button2 = new System.Windows.Forms.Button();
			this.trackBar1 = new System.Windows.Forms.TrackBar();
			this.label3 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.button3 = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.trackBar1)).BeginInit();
			this.SuspendLayout();
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F);
			this.label2.Location = new System.Drawing.Point(448, 22);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(378, 58);
			this.label2.TabIndex = 0;
			this.label2.Text = "Match the Word";
			// 
			// richTextBox2
			// 
			this.richTextBox2.Location = new System.Drawing.Point(56, 112);
			this.richTextBox2.Name = "richTextBox2";
			this.richTextBox2.Size = new System.Drawing.Size(346, 343);
			this.richTextBox2.TabIndex = 1;
			this.richTextBox2.Text = "";
			this.richTextBox2.TextChanged += new System.EventHandler(this.richTextBox2_TextChanged);
			// 
			// richTextBox3
			// 
			this.richTextBox3.Location = new System.Drawing.Point(863, 112);
			this.richTextBox3.Name = "richTextBox3";
			this.richTextBox3.Size = new System.Drawing.Size(346, 343);
			this.richTextBox3.TabIndex = 2;
			this.richTextBox3.Text = "";
			this.richTextBox3.TextChanged += new System.EventHandler(this.richTextBox3_TextChanged);
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(104, 461);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(246, 23);
			this.button1.TabIndex = 3;
			this.button1.Text = "Click to Listen";
			this.button1.UseVisualStyleBackColor = true;
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(916, 461);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(246, 23);
			this.button2.TabIndex = 4;
			this.button2.Text = "Click to Speak";
			this.button2.UseVisualStyleBackColor = true;
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// trackBar1
			// 
			this.trackBar1.Location = new System.Drawing.Point(610, 428);
			this.trackBar1.Name = "trackBar1";
			this.trackBar1.Size = new System.Drawing.Size(104, 56);
			this.trackBar1.TabIndex = 5;
			this.trackBar1.Scroll += new System.EventHandler(this.trackBar1_Scroll);
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.label3.Location = new System.Drawing.Point(539, 435);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(65, 20);
			this.label3.TabIndex = 6;
			this.label3.Text = "Volume";
			this.label3.Click += new System.EventHandler(this.label3_Click);
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
			this.label4.Location = new System.Drawing.Point(172, 70);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(98, 39);
			this.label4.TabIndex = 7;
			this.label4.Text = "Word";
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
			this.label5.Location = new System.Drawing.Point(950, 70);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(167, 39);
			this.label5.TabIndex = 8;
			this.label5.Text = "Your Turn";
			// 
			// button3
			// 
			this.button3.Location = new System.Drawing.Point(521, 226);
			this.button3.Name = "button3";
			this.button3.Size = new System.Drawing.Size(208, 64);
			this.button3.TabIndex = 9;
			this.button3.Text = "Validate";
			this.button3.UseVisualStyleBackColor = true;
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// Form1
			// 
			this.BackColor = System.Drawing.SystemColors.ActiveCaption;
			this.ClientSize = new System.Drawing.Size(1259, 522);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.trackBar1);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.richTextBox3);
			this.Controls.Add(this.richTextBox2);
			this.Controls.Add(this.label2);
			this.Name = "Form1";
			this.Load += new System.EventHandler(this.Form1_Load_1);
			((System.ComponentModel.ISupportInitialize)(this.trackBar1)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.RichTextBox richTextBox1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.RichTextBox richTextBox2;
		private System.Windows.Forms.RichTextBox richTextBox3;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.TrackBar trackBar1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Button button3;
	}
}

