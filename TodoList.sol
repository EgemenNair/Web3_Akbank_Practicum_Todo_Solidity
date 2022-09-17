// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
    }

    function get(uint _index) public view returns (string memory text, bool completed) {
        return (todos[_index].text, todos[_index].completed);
    }

    function updateText(uint _index, string calldata _text) public {
        todos[_index].text = _text;
    }

    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }
}
