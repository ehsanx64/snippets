function formatName(user) {
    return user.firstName + ' ' + user.lastName;
}

const user = {
    firstName: 'Ehsan',
    lastName: 'Mohammadi'
};

const element = (
    <p>Hello, {formatName(user)}!</p>
);

ReactDOM.render(
    <h1>Hello, world!!!</h1>,
    document.getElementById('root')
);

ReactDOM.render(element, document.getElementById('target'));