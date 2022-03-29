# IBM Planning Analytics: Road Test Files
[Errol Brandt](https://www.linkedin.com/in/errolbrandt/)

## Description
This code generates objects that support the [Road Test Playlist](https://youtube.com/playlist?list=PLe4H7ZrXDo-Xt7eIX0lFI7lHKA_6YK5ah).

## Disclaimers
* Code is provided on an 'as-is' basis and there is no warranty whatsoever, either express or implied.
* Code is distributed under creative commons license CC-BY: commercial usage allowed, attribution required.
* Please only run this code in a ***non-production environment*** as the scripts will destroy existing objects and created them as need for the tests.

## Contents
* [Hierarchy 01](https://youtu.be/fWHeKbnUn7o): Comparison test of independent dimensions versus hierarchies 

## Instructions
In each directory you will file ***one or more*** of the following files. In most examples only the prolog and epilog files are required.

| Filename     | Contents                                             |
|--------------|------------------------------------------------------|
| prolog.pro   | Script executed once at the start of the process     |                                                  |
| metadata.pro | Script executed for each row before main processing  |
| data.pro     | Script executed for each row                         |
| epilog.pro   | Script executed once at the end of the process |

Create a new process in IBM Planning Analytics and copy the relevant code files (prolog, metadata, data, epilog) into the corresponding section of the process.

**Copy the code exactly as posted and save before making changes.**



