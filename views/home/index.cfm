<cfoutput>
    <div class="container mx-auto">
        <h1>CFML Challenges</h1>
        
        <div>
            <span class="inline-block border-2 bg-green-500 text-white p-2 rounded-md mx-2">#prc.testStats.totalPass# passed</span>
            <span class="inline-block border-2 bg-red-500 text-white p-2 rounded-md mx-2">#prc.testStats.totalFail# failed</span>
            <span class="inline-block border-2 bg-blue-500 text-white p-2 rounded-md mx-2">#prc.testStats.totalSpecs# total</span>
        </div>
        #renderView( view = "Home/_challenge", collection = prc.challenges )#
    </div>
</cfoutput>