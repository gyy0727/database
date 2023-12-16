document.getElementById('loginButton').addEventListener('click', function() {
    const userInfo = {
        username: 'exampleUser',
        password: 'examplePassword'
    };

    fetch('/login/', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(userInfo)
    })
    .then(response => response.json())
    .then(data => {
        console.log('Success:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
});
