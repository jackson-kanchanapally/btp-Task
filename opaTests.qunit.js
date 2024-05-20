sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'devs/test/integration/FirstJourney',
		'devs/test/integration/pages/DeveloperList',
		'devs/test/integration/pages/DeveloperObjectPage'
    ],
    function(JourneyRunner, opaJourney, DeveloperList, DeveloperObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('devs') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDeveloperList: DeveloperList,
					onTheDeveloperObjectPage: DeveloperObjectPage
                }
            },
            opaJourney.run
        );
    }
);