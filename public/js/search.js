$(document).on('click', '#searchByLocation', function () {
    let keyword = $('input[name=search_text]').val();
    if (keyword && keyword.length) {

        $(`.post`).slideUp()
        $(`.post[location=${keyword}]`).slideDown()
    } else {
        alert('enter something to search for...')
    }

});


$(document).on('click', '#searchByTag', function () {
    let keyword = $('input[name=search_text]').val();
    if (keyword && keyword.length) {
        posts = $('.post');

        posts.each((_, post) => {
            tags = $(post).attr('tags');
            if (tags.toLowerCase().includes(keyword)) {
                console.log(tags, keyword)
                $(post).show()
            } else {

                $(post).hide()
            }
        });

    } else {
        alert('enter something to search for...')
    }

});
