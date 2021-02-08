using System;
using System.Diagnostics;
using System.Windows.Forms;

namespace VSPackage.BsodSurvivorPlugin
{
	class DebugTracer
	{
		// [Conditional("DEBUG")]
		public static void Trace(Exception ex)
		{
			Debug.WriteLine("Exception occurred in BsodSurvivor add-in: " + ex.ToString());
		}
	}
}
