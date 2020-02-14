/**
 * A ColdBox Event Handler
 */
component{

	/**
	 * Home page
	 */
	function index( event, rc, prc ){

		prc.challenges = [{
			name: "Reverse String",
			runnerURL: "/modules/CFMLChallenge/modules/reverseString/tests/runner.cfm",
			description: "Learn how to reverse a string in CFML!",
			instructions: "Create a reverseString.cfc in your models folder, add reverseString() function which reverses a string..."
		},{
			name: "PalindromeChecker",
			runnerURL: "/modules/CFMLChallenge/modules/palindromeChecker/tests/runner.cfm",
			description: "Learn how to check a string for if it is a palindrome.",
			instructions: "Bla bla bla."
		}];

		var testURL = "http://127.0.0.1:#cgi.server_port#/tests/runner.cfm?reporter=json";
		cfhttp( url = testURL, method="GET", result="testResults" );
		prc.testStats = DeSerializeJSON( testResults.filecontent );

		event.setView( view = "home/index", layout = "Main" );
	}

}
