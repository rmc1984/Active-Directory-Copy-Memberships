using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Diagnostics;


namespace CopyMemberships {
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow:Window {

		string fromUser;
		string toUser;
		string ps = "";
		string[] powershell;
		string file = @"C:\scripts\copyMemberships.ps1";
		public MainWindow() {
		InitializeComponent();
		}

		private void btnExecute_Click(object sender,RoutedEventArgs e) {
			fromUser = txtCopyFrom.Text;
			toUser = txtCopyTo.Text;
			powershell = new string[4];
			powershell[0] = "Get-ADUser -Identity " + fromUser + " -Properties memberof |";
			powershell[1] = "Select-Object -ExpandProperty memberof |";
			powershell[2] = "Add-ADGroupMember -Members " + toUser;
			powershell[3] = "Remove-Item " + file;
			foreach(string txt in powershell) {
				ps += txt;
				ps += System.Environment.NewLine;
			}
			System.IO.File.WriteAllText(file, ps);
			txtCopyFrom.Text = "";
			txtCopyTo.Text = "";
			ps = "";
			ExecuteCommand(file);
		}

        public static void ExecuteCommand(string Command) {
            ProcessStartInfo ProcessInfo;
            Process Process;
            ProcessInfo = new ProcessStartInfo("cmd.exe", "/K " + Command);
            ProcessInfo.RedirectStandardOutput = true;
            ProcessInfo.UseShellExecute = false;
            ProcessInfo.CreateNoWindow = true;
            Process = Process.Start(ProcessInfo);
        }

	}
}
