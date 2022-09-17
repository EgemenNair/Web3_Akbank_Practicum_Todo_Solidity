// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Todos {
    // Initialize a struct for To Do's
    struct Todo {
        string text;
        bool completed;
    }

    // Initialize a todos list consisting of Todo struct type items.
    Todo[] public todos;

    // Create function to add a new to do item to todos list.
    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
    }

    // Get function to get the text and completed properties of Todo item in specified index:
    function get(uint _index) public view returns (string memory text, bool completed) {
        return (todos[_index].text, todos[_index].completed);
    }

    // Function to update the text of Todo Struct item in specified index:
    function updateText(uint _index, string calldata _text) public {
        todos[_index].text = _text;
    }

    // Function to toggle the completed property of Todo Struct item in specified index:
    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }
}
