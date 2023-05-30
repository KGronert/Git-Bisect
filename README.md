# Description
This repository contains iOS project that helps to illustrate operation mechanism of [git bisect](https://git-scm.com/docs/git-bisect).

# Manual Search

1. Enter `git bisect start` in the terminal, inside project's directory.
2. Enter `git bisect good <good commit hash>` where `good commit hash` is a hash of the commit when application used to work. In case of this repository it can be the first commit.
3. Enter `git bisect bad <bad commit hash>` where `bad commit hash` is a hash of the commit when application has a bug. In case of this repository it can be the last commit.
4. Run the project in Xcode and check manually if the commit selected by git bisect contains the bug. If yes enter `git bisect bad` command, if not `git bisect good`.
5. Continue until git bisect ends it's execution.

# Automatic Search

1. Enter `git rebase -i --root` in the terminal, inside project's directory. Mark first commit to be edited.
2. Create a test case that covers the bug.
3. Enter `git commit --amend --no-edit`.
4. Enter `git rebase --continue`.
5. Enter `git bisect start`.
6. Enter `git bisect good [good commit hash]`.
7. Enter `git bisect bad [bad commit hash]`.
8. Enter `git bisect run xcodebuild test -quiet -project GitBisect.xcodeproj -scheme GitBisect -destination "platform=iOS Simulator,name=iPhone 14"`.
9. Wait until git bisect end's it's execution.