document.addEventListener("DOMContentLoaded", function() {
    const listItems = document.querySelectorAll('.list ul li');

    listItems.forEach(item => {
        item.addEventListener('focusin', () => {
            item.classList.add('active');
        });

        item.addEventListener('focusout', () => {
            item.classList.remove('active');
        });
    });
});

function onSubmit(event) {
        
        var formData = new FormData(document.getElementById('form'));

        // Create a new form to submit to NewFile.jsp
        var newForm = document.createElement('form');
        newForm.method = 'post';
        newForm.action = 'coverLetter.jsp';

        // Append form data to the new form
        for (var pair of formData.entries()) {
            var input = document.createElement('input');
            input.type = 'hidden';
            input.name = pair[0];
            input.value = pair[1];
            newForm.appendChild(input);
        }

        // Append the new form to the document body and submit it
        document.body.appendChild(newForm);
        newForm.submit();
    }