# linux-file-organizer

## Table of Contents

- [About](#about)
- [Features](#features)
- [Supported Extensions](#supported-extensions)
- [Project Structure](#project-structure)
- [Requirements](#requirements)
- [Installation & Usage](#installation--usage)
- [Example](#example)
- [How It Works](#how-it-works)
- [Error Handling](#error-handling)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

## About

linux-file-organizer is my first Linux/Bash project in my DevOps learning journey.

The goal is to practice shell scripting by creating a small but useful automation tool: organizing files in a folder by extension.

This project is made for training and learning core Bash concepts:

- User input handling
- Conditions and loops
- Pattern matching with `case`
- Basic file operations (`mkdir`, `mv`)

## Features

- Ask the user for a directory path.
- Check if the directory exists.
- Display current files found in the target directory before reordering.
- Create category folders automatically:

	- `images`
	- `documents`
	- `scripts`

- Move files into categories based on their extensions.
- Handle paths entered with or without a trailing `/`.
- Display status messages during execution.

## Supported Extensions

The script currently supports the following extensions.

### Images

- .jpeg
- .jpg
- .png
- .svg

### Documents

- .txt
- .md
- .pdf
- .doc
- .docx
- .odt

### Scripts

- .sh

## Project Structure

Main files and folders in this repository:

```text
linux-file-organizer/
├── script.sh
└── README.ms
```

## Requirements

- Linux environment
- Bash shell
- Permission to read and move files in the target directory

## Installation & Usage

Clone and prepare the project:

```bash
git clone https://github.com/JescAude18/linux-file-organizer.git
cd linux-file-organizer
chmod +x script.sh
```

Run the script and enter the absolute path (or valid relative path) of the folder you want to organize:

```bash
./script.sh
```

## Example

Example execution:

```text
Welcome to the linux-file-organizer project !
Enter the absolute/relative path of the directory to be ordered :
/path/to/folder
You entered '/path/to/folder' as directory to be ordered.
Its contains these files :
/path/to/folder/file1.txt
/path/to/folder/image1.png
Starting reordering your folder ...
....

Folder '/path/to/folder' reordered !
```

## How It Works

1. Read user input path
2. Check if folder exists
3. Create category folders
4. Move files based on extension
5. Print a final success message

## Error Handling

- Folder not found: prints `Directory '<path>' not found.`
- Unsupported extension: file is ignored (not moved)
- Missing permissions: `mv` or directory operations may fail depending on system permissions

## Roadmap

- Add more file extensions
- Add a dry-run mode (`--dry-run`): simulate actions and print what would be moved, without modifying files
- Add recursive organization for subfolders
- Add logging to a file: save execution details (start time, moved files, errors) into a log file for traceability
- Add automated tests and CI pipeline
- Add command-line options instead of interactive input

## Contributing

Contributions are welcome for learning purposes.

Basic workflow:

1. Fork repository
2. Create feature branch
3. Commit changes
4. Open pull request

## Author

- Jessica MOUSSOUGAN
- JescAude18
- DevOps learner (Linux/Bash practice projects)

## License

No license yet.

This project is currently for personal training and learning.
