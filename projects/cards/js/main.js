window.onload = function(){
      Naturalist = new Object;
      var naturalists = [
              { 'name' : 'C. Darwin', 'picture' : 'darwin.jpg' },
              { 'name' : 'J. Hooker', 'picture' : 'jdhooker.jpg' },
              { 'name' : 'T.H. Huxley', 'picture' : 'thhuxley.jpg' },
              { 'name' : 'A.R. Wallace', 'picture' : 'alfredrusselwallace.jpg' }
      ];
      source = $('#card-template').html();
      templ = Handlebars.compile(source);
      naturalists.forEach( function(n){
        console.log('iterating '+n.picture);
              $('.content').append(templ({'name':n.name,'picture':n.picture}));
      });
}
